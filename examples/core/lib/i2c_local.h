// Local I2C header with slower timing for power stability
#ifndef _I2C_LOCAL_H_
#define _I2C_LOCAL_H_

#include <stdint.h>

// I2C pin definitions (P3.3 = SCL, P3.4 = SDA)
extern __bit P3_3;
extern __bit P3_4;

void i2c_delay();
void i2c_init();
void i2c_start();
void i2c_stop();
void i2c_write(uint8_t dat);  // Write byte, caller must call i2c_wait_ack() after
uint8_t i2c_wait_ack();  // Clock and read ACK bit, returns 0=ACK 1=NAK
uint8_t i2c_read();  // Read byte without auto-ACK

#endif
