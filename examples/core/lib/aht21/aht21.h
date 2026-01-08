#ifndef _AHT21_H_
#define _AHT21_H_

#include <stdint.h>

// AHT21 I2C address
#define AHT21_ADDR      0x38

// AHT21 commands
#define AHT21_CMD_INIT      0xBE
#define AHT21_CMD_TRIGGER   0xAC
#define AHT21_CMD_SOFTRESET 0xBA

// Status bits
#define AHT21_STATUS_BUSY   0x80
#define AHT21_STATUS_CAL    0x08

// Initialize AHT21 sensor
// Returns: 0 on success, 1 if sensor not responding, 2 if not calibrated
uint8_t aht21_init(void);

// Trigger measurement
void aht21_trigger(void);

// Read temperature and humidity
// Returns: 0 on success, non-zero on error
uint8_t aht21_read(int16_t *temperature, uint16_t *humidity);

// Read raw data (for debugging)
uint8_t aht21_read_raw(uint8_t *data);

#endif // _AHT21_H_
