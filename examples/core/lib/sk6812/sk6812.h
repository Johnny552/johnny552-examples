/* SK6812 library header
 * Provides functions to send GRBW data to SK6812 LEDs
 */

#ifndef SK6812_H
#define SK6812_H

#include <stdint.h>

// Initialize pin/config if needed (no-op for now)
void sk6812_init(void);

// Send a single byte (implemented in sk6812.c)
void sk6812_send_byte(uint8_t b);

// Send GRBW color
void sk6812_send_rgbw(uint8_t r, uint8_t g, uint8_t b, uint8_t w);

// Latch/reset (>80us low)
void sk6812_reset(void);

#endif // SK6812_H
