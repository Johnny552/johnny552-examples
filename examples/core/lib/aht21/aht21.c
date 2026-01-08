#include "aht21.h"
#include "i2c_local.h"  // Local I2C with slower timing
#include "ch554.h"

// Delay functions from ch554.h
extern void mDelaymS(uint16_t ms);

// Forward declarations
static void i2c_send_ack(void);
static void i2c_send_nak(void);

// Helper to send ACK
static void i2c_send_ack(void) {
    extern __bit P3_4;  // I2C_SDAT
    extern __bit P3_3;  // I2C_SCLK
    extern void i2c_delay();
    P3_4 = 0;  // Pull SDA low for ACK
    i2c_delay();
    P3_3 = 1;  // Clock high
    i2c_delay();
    P3_3 = 0;  // Clock low
    P3_4 = 1;  // Release SDA
    i2c_delay();
}

// Helper to send NAK
static void i2c_send_nak(void) {
    extern __bit P3_4;  // I2C_SDAT
    extern __bit P3_3;  // I2C_SCLK
    extern void i2c_delay();
    P3_4 = 1;  // Keep SDA high for NAK
    i2c_delay();
    P3_3 = 1;  // Clock high
    i2c_delay();
    P3_3 = 0;  // Clock low
    i2c_delay();
}

uint8_t aht21_init(void) {
    uint8_t status;
    uint8_t ack;
    
    i2c_init();
    mDelaymS(100);  // Wait ≥100ms after power-on (datasheet requirement)
    
    // Step 1: Send 0x71 command to get status word
    i2c_start();
    i2c_write((AHT21_ADDR << 1) | 0);  // Write mode
    ack = i2c_wait_ack();  // Returns 0 if ACK, 1 if NAK
    if (ack != 0) {
        i2c_stop();
        return 1;  // ERROR: No ACK from sensor on address write
    }
    
    i2c_write(0x71);  // Status command
    ack = i2c_wait_ack();
    if (ack != 0) {
        i2c_stop();
        return 1;  // ERROR: No ACK from sensor on command
    }
    i2c_stop();
    
    mDelaymS(10);  // Small delay
    
    // Now read the status byte
    i2c_start();
    i2c_write((AHT21_ADDR << 1) | 1);  // Read mode
    ack = i2c_wait_ack();
    if (ack != 0) {
        i2c_stop();
        return 1;  // ERROR: No ACK from sensor on read
    }
    
    status = i2c_read();
    i2c_send_nak();  // Send NAK to end the read
    i2c_stop();
    
    // Check if (status & 0x08) == 0x08
    // Bit[3]=CAL=1 means calibrated
    if ((status & 0x08) == 0) {
        // Calibration bit not set, need to send init command
        // Send 0xBE 0x08 0x00 calibration command
        
        i2c_start();
        i2c_write((AHT21_ADDR << 1) | 0);  // Write mode
        ack = i2c_wait_ack();
        if (ack != 0) {
            i2c_stop();
            return 1;  // ERROR: No ACK on calibration command
        }
        i2c_write(0xBE);  // Init/calibration command
        i2c_wait_ack();
        i2c_write(0x08);  // Parameter byte 1
        i2c_wait_ack();
        i2c_write(0x00);  // Parameter byte 2
        i2c_wait_ack();
        i2c_stop();
        
        // Wait for calibration to complete (at least 10ms)
        mDelaymS(20);
        
        // Re-read status to verify calibration succeeded
        i2c_start();
        i2c_write((AHT21_ADDR << 1) | 0);  // Write mode
        i2c_wait_ack();
        i2c_write(0x71);  // Status command
        i2c_wait_ack();
        i2c_stop();
        
        mDelaymS(5);
        
        i2c_start();
        i2c_write((AHT21_ADDR << 1) | 1);  // Read mode
        i2c_wait_ack();
        status = i2c_read();
        i2c_send_nak();
        i2c_stop();
        
        // Check calibration bit again
        if ((status & 0x08) == 0) {
            return 2;  // ERROR: Calibration failed
        }
    }
    
    return 0;  // SUCCESS: Sensor initialized and calibrated
}

void aht21_trigger(void) {
    i2c_start();
    i2c_write((AHT21_ADDR << 1) | 0);  // Write mode
    i2c_wait_ack();
    i2c_write(AHT21_CMD_TRIGGER);
    i2c_wait_ack();
    i2c_write(0x33);  // Data byte 1
    i2c_wait_ack();
    i2c_write(0x00);  // Data byte 2
    i2c_wait_ack();
    i2c_stop();
}

uint8_t aht21_read_raw(uint8_t *data) {
    uint8_t i;
    
    // Read 7 bytes: [Status, RH1, RH2, RH3, Temp1, Temp2, CRC]
    i2c_start();
    i2c_write((AHT21_ADDR << 1) | 1);  // Read mode
    i2c_wait_ack();
    
    for (i = 0; i < 6; i++) {
        data[i] = i2c_read();  // Read byte
        i2c_send_ack();         // Send ACK
    }
    data[6] = i2c_read();      // Last byte
    i2c_send_nak();             // Send NAK for last byte
    
    i2c_stop();
    
    // Check if busy
    if (data[0] & AHT21_STATUS_BUSY) {
        return 1;  // Still busy
    }
    
    return 0;  // Success
}

uint8_t aht21_read(int16_t *temperature, uint16_t *humidity) {
    uint8_t data[7];
    uint32_t raw_hum, raw_temp;
    
    if (aht21_read_raw(data) != 0) {
        return 1;  // Sensor busy or error
    }
    
    // Extract 20-bit humidity: data[1] (MSB), data[2], data[3] (lower 4 bits)
    raw_hum = ((uint32_t)data[1] << 12) | ((uint32_t)data[2] << 4) | (data[3] >> 4);
    
    // Extract 20-bit temperature: data[3] (lower 4 bits), data[4], data[5] (LSB)
    raw_temp = (((uint32_t)data[3] & 0x0F) << 16) | ((uint32_t)data[4] << 8) | data[5];
    
    // Convert to actual values
    // Humidity: RH% = (raw / 2^20) * 100
    // We'll return humidity * 10 (e.g., 652 = 65.2%)
    *humidity = (uint16_t)((raw_hum * 1000) / 1048576);  // 2^20 = 1048576
    
    // Temperature: T°C = (raw / 2^20) * 200 - 50
    // We'll return temperature * 10 (e.g., 235 = 23.5°C)
    // Calibration: -70 (= -7.0°C) to compensate for self-heating from CH552 electronics
    #define TEMP_CALIBRATION_OFFSET (-52  // Temperature offset in tenths of degree (-5.2°C)
    *temperature = (int16_t)(((raw_temp * 2000) / 1048576) - 500 + TEMP_CALIBRATION_OFFSET);
    
    return 0;  // Success
}
