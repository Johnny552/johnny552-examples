// Local I2C implementation with VERY SLOW timing for power stability
// Designed for 0.1uF decoupling cap instead of recommended 10uF
#include "ch554.h"
#include <stdint.h>

// Declare P3 bit variables
__sbit __at (0xB3) P3_3;
__sbit __at (0xB4) P3_4;

#define I2C_SDAT P3_4
#define I2C_SCLK P3_3

// MUCH slower delay to reduce current spikes with small decoupling cap
// Original: 50 iterations (~100kHz)
// New: 200 iterations (~25kHz) - 4x slower to reduce power supply noise
void i2c_delay() {
    volatile char i = 200;  // Was 50, now 200 for much slower I2C
    while(i--);
}

void i2c_init() {
    I2C_SDAT = 1;
    I2C_SCLK = 1;
}

void i2c_start() {
    I2C_SDAT = 1;
    I2C_SCLK = 1;
    i2c_delay();
    I2C_SDAT = 0;
    i2c_delay();
    I2C_SCLK = 0;
    i2c_delay();
}

void i2c_stop() {
    I2C_SDAT = 0;
    I2C_SCLK = 0;
    i2c_delay();
    I2C_SCLK = 1;
    i2c_delay();
    I2C_SDAT = 1;
    i2c_delay();
}

// Write byte WITHOUT clocking ACK
// Caller MUST call i2c_wait_ack() after this
void i2c_write(uint8_t dat) {
    uint8_t i;
    
    for(i = 0; i < 8; i++) {
        if(dat & 0x80) {
            I2C_SDAT = 1;
        } else {
            I2C_SDAT = 0;
        }
        i2c_delay();
        I2C_SCLK = 1;
        i2c_delay();
        I2C_SCLK = 0;
        i2c_delay();
        dat <<= 1;
    }
    // Release SDA for ACK bit (caller must clock it with i2c_wait_ack())
    I2C_SDAT = 1;
    i2c_delay();
}

// Wait for ACK from slave after i2c_write()
// This clocks the ACK bit and reads it
// Returns 0 if ACK (success), 1 if NAK (failure)
uint8_t i2c_wait_ack() {
    uint8_t ack;
    I2C_SDAT = 1;  // Release SDA (should already be released)
    i2c_delay();
    I2C_SCLK = 1;  // Clock HIGH - slave can now assert ACK
    i2c_delay();
    ack = I2C_SDAT;  // Read ACK bit (0=ACK, 1=NAK)
    I2C_SCLK = 0;  // Clock LOW
    i2c_delay();
    return ack;
}

// Read byte WITHOUT sending ACK (caller must send ACK or NAK separately)
uint8_t i2c_read() {
    uint8_t i;
    uint8_t dat = 0;
    
    I2C_SDAT = 1;  // Release SDA so slave can drive it
    for(i = 0; i < 8; i++) {
        dat <<= 1;
        I2C_SCLK = 1;
        i2c_delay();
        if(I2C_SDAT) {
            dat |= 0x01;
        }
        I2C_SCLK = 0;
        i2c_delay();
    }
    
    // Do NOT send ACK here - caller will do it
    return dat;
}
