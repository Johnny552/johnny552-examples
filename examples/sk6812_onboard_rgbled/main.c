#include <stdint.h>
#include "debug.h"
#include "johnny552.h"
#include "lib/sk6812/sk6812.h"

void main(void) {
    CfgFsys();  // System clock = 24 MHz

    // SK6812 data pin (P1.0) push-pull output
    P1_MOD_OC &= ~(1 << SK6812_PIN);
    P1_DIR_PU |=  (1 << SK6812_PIN);

    while (1) {
        EA = 0;
        sk6812_send_rgbw(32, 0, 0, 0);  // Red
        sk6812_reset();
        EA = 1;
        mDelaymS(500);   

        EA = 0;
        sk6812_send_rgbw(0, 32, 0, 0);  // Green
        sk6812_reset();
        EA = 1;
        mDelaymS(500);

        EA = 0;
        sk6812_send_rgbw(0, 0, 32, 0);  // Blue
        sk6812_reset();
        EA = 1;
        mDelaymS(500);


        EA = 0;
        sk6812_send_rgbw(32, 32, 32, 32);  // White-only channel
        sk6812_reset();
        EA = 1;
        mDelaymS(500);

        EA = 0;
        sk6812_send_rgbw(0, 0, 0, 0);   // Off
        sk6812_reset();
        EA = 1;
        mDelaymS(500);
    }
}
