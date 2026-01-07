    #include "debug.h"
    #include "ch552_usb.h" 
    #include <string.h>

__code uint8_t ReportDescriptor[] = {
    0x06, 0x00, 0xff,  // Usage Page (Vendor Defined)
    0x09, 0x01,        // Usage (Vendor Defined)
    0xa1, 0x01,        // Collection (Application)
    0x15, 0x00,        // Logical Minimum (0)
    0x26, 0xff, 0x00,  // Logical Maximum (255)
    0x75, 0x08,        // Report Size (8 bits)
    0x95, 0x08,        // Report Count (8 bytes)
    0x09, 0x00,        // Usage (Undefined)
    0x82, 0x02, 0x01,  // Input (Data,Var,Abs,Vol)
    0x95, 0x08,        // Report Count (8 bytes)
    0x09, 0x00,        // Usage (Undefined)
    0x92, 0x02, 0x01,  // Output (Data,Var,Abs,Vol)
    0xc0               // End Collection
};

__xdata uint8_t txBuffer[8];

/* Prototypes from ch552_usb.c */
extern void USBInit(void);
extern void USBPoll(void);
extern void USBWrite(uint8_t *buf, uint8_t len);

void main(void)
{
    CfgFsys();     // 24 MHz clock
    mDelaymS(5);

    USBInit();

    while(1) {
        USBPoll();

        // Send "HELLO\n" once per second
        memcpy(txBuffer, "HELLO\n", 6);
        USBWrite(txBuffer, 6);
        mDelaymS(1000);
    }
}
