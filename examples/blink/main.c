#include "johnny552.h"
#include <debug.h>

void main() {
    CfgFsys();

    // Set board pin 4 (P1.7) as output
    P1_MOD_OC &= ~(1 << PIN_4);
    P1_DIR_PU |=  (1 << PIN_4);

    while (1) {
        PIN_4_BIT = !PIN_4_BIT;
        mDelaymS(200);
    }
}