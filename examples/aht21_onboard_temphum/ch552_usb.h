#ifndef __CH552_USB_H__
#define __CH552_USB_H__

#include <compiler.h>
#include <stdint.h>

/* USB Endpoint configuration */
#define USB_EP0_SIZE       8
#define USB_EP1_SIZE       8
#define USB_EP2_SIZE       8

/* USB Request Codes */
#define USB_REQ_GET_DESCRIPTOR   0x06
#define USB_REQ_SET_ADDRESS      0x05
#define USB_REQ_SET_CONFIGURATION 0x09

/* Descriptor Types */
#define USB_DESC_TYPE_DEVICE     0x01
#define USB_DESC_TYPE_CONFIG     0x02
#define USB_DESC_TYPE_STRING     0x03
#define USB_DESC_TYPE_INTERFACE  0x04
#define USB_DESC_TYPE_ENDPOINT   0x05
#define USB_DESC_TYPE_HID        0x21
#define USB_DESC_TYPE_REPORT     0x22

/* USB setup packet structure */
typedef struct {
    uint8_t bmRequestType;
    uint8_t bRequest;
    uint16_t wValue;
    uint16_t wIndex;
    uint16_t wLength;
} __xdata USB_SETUP_PACKET;

/* USB HID functions */
void USBInit(void);
void USBInterrupt(void);
void HIDSendReport(uint8_t* buf, uint8_t len);

/* To be called from main loop if not interrupt-driven */
void USBPoll(void);

#endif /* __CH552_USB_H__ */
