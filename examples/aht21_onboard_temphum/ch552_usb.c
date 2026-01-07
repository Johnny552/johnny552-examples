#include <ch554.h>
#include "ch552_usb.h"

#define THIS_ENDP0_SIZE  8
#define THIS_ENDP1_SIZE  8

extern __code uint8_t ReportDescriptor[];

__code uint8_t DevDesc[] = {
    0x12,0x01,0x10,0x01,0x00,0x00,0x00,0x08,
    0xC0,0x16,   // VID 0x16C0 (VOTI)
    0xE1,0x27,   // PID 0x27E1
    0x00,0x01,0x01,0x02,0x00,0x01
};

__code uint8_t CfgDesc[] = {
    0x09,0x02,0x22,0x00,0x01,0x01,0x00,0xA0,0x32,
    0x09,0x04,0x00,0x00,0x02,0x03,0x00,0x00,0x00,
    0x09,0x21,0x11,0x01,0x00,0x01,0x22,sizeof(ReportDescriptor),0x00,
    0x07,0x05,0x81,0x03,THIS_ENDP1_SIZE,0x00,0x0A,
    0x07,0x05,0x01,0x03,THIS_ENDP1_SIZE,0x00,0x0A
};

__xdata uint8_t Ep0Buffer[THIS_ENDP0_SIZE];
__xdata uint8_t Ep1Buffer[THIS_ENDP1_SIZE];

void USBInit(void)
{
    USB_CTRL = 0x00;
    UDEV_CTRL = bUD_PD_DIS | bUD_PORT_EN;
    USB_INT_EN = bUIE_SUSPEND | bUIE_TRANSFER | bUIE_BUS_RST;
    USB_DEV_AD = 0x00;
    UEP0_DMA = (uint16_t)Ep0Buffer;
    UEP1_DMA = (uint16_t)Ep1Buffer;
    UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_ACK;
    UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;
    USB_CTRL = bUC_DEV_PU_EN | bUC_INT_BUSY | bUC_DMA_EN;
    IE_USB = 1;
    EA = 1;
}

void USBPoll(void)
{
    // Basic poll loop: nothing fancy here
}

void USBWrite(uint8_t *buf, uint8_t len)
{
    uint8_t i;
    for(i=0; i<len; i++)
        Ep1Buffer[i] = buf[i];
    UEP1_T_LEN = len;
    UEP1_CTRL = (UEP1_CTRL & ~MASK_UEP_T_RES) | UEP_T_RES_ACK;
}
