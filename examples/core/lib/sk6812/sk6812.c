/* SK6812 driver implementation
 * This file moves the SK6812-specific functions out of main.c into a small
 * library. The original timing-critical assembly for sending bits is kept.
 */

#include "sk6812.h"
#include "johnny552.h"

void sk6812_init(void) {
    // Configure pin as push-pull output; same as was in main
    P1_MOD_OC &= ~(1 << SK6812_PIN);
    P1_DIR_PU |=  (1 << SK6812_PIN);
}

void sk6812_send_byte(uint8_t b) {
    __asm
        mov     r7, dpl
        mov     r6, #8

    send_bit_loop$:
        mov     a, r7
        anl     a, #0x80
        jz      send_0$

        // Send '1'
        setb    _P1_0
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        clr     _P1_0
        nop
        nop
        nop
        sjmp    next_bit$

    send_0$:
        // Send '0'
        setb    _P1_0
        nop
        nop
        nop
        clr     _P1_0
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop

    next_bit$:
        mov     a, r7
        rl      a
        mov     r7, a
        djnz    r6, send_bit_loop$
    __endasm;
}

// Send GRB color to SK6812 RGB (3-color variant)
void sk6812_send_rgbw(uint8_t r, uint8_t g, uint8_t b, uint8_t w) {
    sk6812_send_byte(g);
    sk6812_send_byte(r);
    sk6812_send_byte(b);
    // White channel ignored for SK6812 RGB variant
}

// Latch/reset ( >80us low)
void sk6812_reset(void) {
    SK6812_BIT = 0;
    for (uint16_t i = 0; i < 3000; i++) {
        __asm__("nop");
    }
}
