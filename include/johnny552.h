// johnny552.h — Johnny552 devboard pin mapping (by physical board pin number)
#ifndef __JOHNNY552_H__
#define __JOHNNY552_H__

#include <ch554.h>  // Or ch552.h

// --- Board Pin Number to CH552 Bit Number ---
#define PIN_2   4   // P1.4
#define PIN_3   6   // P1.6
#define PIN_4   7   // P1.7
#define PIN_5   5   // P1.5
#define PIN_7   1   // P1.1
#define PIN_8   1   // P3.1
#define PIN_9   0   // P3.0
#define PIN_10  3   // P3.3
#define PIN_11  4   // P3.4

// Extra: non-header-connected pin
#define SK6812_PIN  0   // P1.0

// --- Define SBIT aliases for SDCC ---
SBIT(PIN_2_BIT,   0x90, PIN_2);    // P1.4
SBIT(PIN_3_BIT,   0x90, PIN_3);    // P1.6
SBIT(PIN_4_BIT,   0x90, PIN_4);    // P1.7
SBIT(PIN_5_BIT,   0x90, PIN_5);    // P1.5
SBIT(PIN_7_BIT,   0x90, PIN_7);    // P1.1
SBIT(PIN_8_BIT,   0xB0, PIN_8);    // P3.1
SBIT(PIN_9_BIT,   0xB0, PIN_9);    // P3.0
SBIT(PIN_10_BIT,  0xB0, PIN_10);   // P3.3
SBIT(PIN_11_BIT,  0xB0, PIN_11);   // P3.4
SBIT(SK6812_BIT,  0x90, SK6812_PIN); // P1.0

// --- Peripheral aliases ---
#define AHT21_SCL   PIN_10_BIT
#define AHT21_SDA   PIN_11_BIT

#endif
