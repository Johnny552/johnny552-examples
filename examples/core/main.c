/********************************** (C) COPYRIGHT *******************************
* File Name		: main.c
* Author		: Zhiyuan Wan
* License		: MIT
* Version		: V1.0
* Date			: 2018/03/27
* Description		: CH55x做USB-MIDI桥。使用UAC-MIDI协议。此实例是一个简单的回环设备。
*******************************************************************************/
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "lib/usb_hid/ch554.h"
#include "lib/usb_hid/ch554_usb.h"
#include "lib/usb_hid/debug.h"
#include "lib/sk6812/sk6812.h"
#include "lib/aht21/aht21.h"
#include "lib/i2c_local.h"  // Local I2C with slower timing for 0.1uF cap

__xdata __at (0x0000) uint8_t  Ep0Buffer[DEFAULT_ENDP0_SIZE];	   // Endpoint 0 OUT & IN buffer, must be even address
__xdata __at (0x0040) uint8_t  Ep1Buffer[DEFAULT_ENDP1_SIZE];	   // Endpoint 1 upload buffer
__xdata __at (0x0080) uint8_t  Ep2Buffer[2*MAX_PACKET_SIZE];	//Endpoint 2 IN & OUT buffer, must be an even address

uint16_t SetupLen;
uint8_t   SetupReq,Count,UsbConfig;
const uint8_t *  pDescr;													   //USB configuration flag
USB_SETUP_REQ   SetupReqBuf;												   //Temporary Setup package
#define UsbSetupBuf	 ((PUSB_SETUP_REQ)Ep0Buffer)

/* Device descriptor - HID */
__code uint8_t DevDesc[] = {	
				0x12,0x01,0x00,0x02,                // USB 2.0
				0x00,0x00,0x00,DEFAULT_ENDP0_SIZE,  // Device class in interface
				0xC0,0x16,0x52,0x55,                // VID:PID 16C0:5552 (johnny552 custom)
				0x00,0x01,                          // Device version 1.0
				0x01,0x02,0x03,                     // String indices
				0x01                                 // One configuration
			   };
				
__code uint8_t CfgDesc[] ={
	// Configuration Descriptor
	0x09,0x02,sizeof(CfgDesc) & 0xff,sizeof(CfgDesc) >> 8,
	0x01,        // 1 interface
	0x01,        // Configuration 1
	0x00,        // No string
	0x80,        // Bus powered
	0x32,        // 100mA
	
	// Interface Descriptor
	0x09,0x04,
	0x00,        // Interface 0
	0x00,        // Alternate 0
	0x01,        // 1 endpoint (EP2 IN)
	0x03,        // HID class
	0x00,        // No subclass
	0x00,        // No protocol
	0x00,        // No string
	
	// HID Descriptor
	0x09,0x21,
	0x11,0x01,   // HID version 1.11
	0x00,        // No country code
	0x01,        // 1 descriptor
	0x22,        // Report descriptor type
	0x2A,0x00,   // Report descriptor length (42 bytes = 0x2A)
	
	// Endpoint Descriptor (EP2 IN)
	0x07,0x05,
	0x82,        // EP2 IN
	0x03,        // Interrupt
	0x08,0x00,   // 8 bytes max packet
	0x01         // Poll interval 1ms
};

// HID Report Descriptor - simple vendor-defined 8-byte IN/OUT
__code uint8_t HIDRepDesc[] = {
    0x06, 0x00, 0xFF,  // Usage Page (Vendor Defined)
    0x09, 0x01,        // Usage (Vendor Usage 1)
    0xA1, 0x01,        // Collection (Application)
    
    // INPUT report (device to host)
    0x09, 0x02,        //   Usage (Vendor Usage 2)
    0x15, 0x00,        //   Logical Minimum (0)
    0x26, 0xFF, 0x00,  //   Logical Maximum (255)
    0x75, 0x08,        //   Report Size (8 bits)
    0x95, 0x08,        //   Report Count (8 bytes)
    0x81, 0x02,        //   Input (Data,Var,Abs)
    
    // OUTPUT report (host to device)
    0x09, 0x03,        //   Usage (Vendor Usage 3)
    0x15, 0x00,        //   Logical Minimum (0)
    0x26, 0xFF, 0x00,  //   Logical Maximum (255)
    0x75, 0x08,        //   Report Size (8 bits)
    0x95, 0x08,        //   Report Count (8 bytes)
    0x91, 0x02,        //   Output (Data,Var,Abs)
    
    0xC0               // End Collection
};

/*字符串描述符*/
unsigned char  __code LangDes[]={0x04,0x03,0x09,0x04};		   //语言描述符
unsigned char  __code SerDes[]={								 // Serial number string descriptor
					0x0E,0x03,
					'v',0x00,'1',0x00,'.',0x00,'0',0x00,'.',0x00,'0',0x00
							   };
unsigned char  __code Prod_Des[]={								// Product string descriptor
					0x1E,0x03,
					'J',0x00,'o',0x00,'h',0x00,'n',0x00,'n',0x00,'y',0x00,'5',0x00,'5',0x00,'2',0x00,
					'-',0x00,'C',0x00,'o',0x00,'r',0x00,'e',0x00
								 };
unsigned char  __code Manuf_Des[]={
	0x16,0x03,
	'J',0x00,'o',0x00,'h',0x00,'n',0x00,'n',0x00,'y',0x00,'5',0x00,'5',0x00,'2',0x00,'.',0x00
};


//MIDI参数


#define MIDI_REV_LEN  64				 //串口接收缓冲区大小
__idata uint8_t Receive_Midi_Buf[MIDI_REV_LEN];   //串口接收缓冲区
volatile __idata uint8_t Midi_Input_Point = 0;   //循环缓冲区写入指针，总线复位需要初始化为0
volatile __idata uint8_t Midi_Output_Point = 0;  //循环缓冲区取出指针，总线复位需要初始化为0
volatile __idata uint8_t MidiByteCount = 0;	  //当前缓冲区剩余待取字节数


volatile __idata uint8_t USBByteCount = 0;	  //代表USB端点接收到的数据
volatile __idata uint8_t USBBufOutPoint = 0;	//取数据指针

volatile __idata uint8_t UpPoint2_Busy  = 0;   //上传端点是否忙标志


/*******************************************************************************
* Function Name  : USBDeviceCfg()
* Description	: USB设备模式配置
* Input		  : None
* Output		 : None
* Return		 : None
*******************************************************************************/
void USBDeviceCfg()
{
	USB_CTRL = 0x00;														   //清空USB控制寄存器
	USB_CTRL &= ~bUC_HOST_MODE;												//该位为选择设备模式
	USB_CTRL |=  bUC_DEV_PU_EN | bUC_INT_BUSY | bUC_DMA_EN;					//USB设备和内部上拉使能,在中断期间中断标志未清除前自动返回NAK
	USB_DEV_AD = 0x00;														 //设备地址初始化
	//	 USB_CTRL |= bUC_LOW_SPEED;
	//	 UDEV_CTRL |= bUD_LOW_SPEED;												//选择低速1.5M模式
	USB_CTRL &= ~bUC_LOW_SPEED;
	UDEV_CTRL &= ~bUD_LOW_SPEED;											 //选择全速12M模式，默认方式
	UDEV_CTRL = bUD_PD_DIS;  // 禁止DP/DM下拉电阻
	UDEV_CTRL |= bUD_PORT_EN;												  //使能物理端口
}
/*******************************************************************************
* Function Name  : USBDeviceIntCfg()
* Description	: USB设备模式中断初始化
* Input		  : None
* Output		 : None
* Return		 : None
*******************************************************************************/
void USBDeviceIntCfg()
{
	USB_INT_EN |= bUIE_SUSPEND;											   //使能设备挂起中断
	USB_INT_EN |= bUIE_TRANSFER;											  //使能USB传输完成中断
	USB_INT_EN |= bUIE_BUS_RST;											   //使能设备模式USB总线复位中断
	USB_INT_FG |= 0x1F;													   //清中断标志
	IE_USB = 1;															   //使能USB中断
	EA = 1;																   //允许单片机中断
}
/*******************************************************************************
* Function Name  : USBDeviceEndPointCfg()
* Description	: USB设备模式端点配置，模拟兼容HID设备，除了端点0的控制传输，还包括端点2批量上下传
* Input		  : None
* Output		 : None
* Return		 : None
*******************************************************************************/
void USBDeviceEndPointCfg()
{
	UEP1_DMA = (uint16_t) Ep1Buffer;													  //端点1 发送数据传输地址
	UEP2_DMA = (uint16_t) Ep2Buffer;													  //端点2 IN数据传输地址
	UEP2_3_MOD = 0xCC;														 //端点2/3 单缓冲收发使能
	UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;		//端点2自动翻转同步标志位，IN事务返回NAK，OUT返回ACK

	UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;				//端点1自动翻转同步标志位，IN事务返回NAK
	UEP0_DMA = (uint16_t) Ep0Buffer;													  //端点0数据传输地址
	UEP4_1_MOD = 0X40;														 //端点1上传缓冲区；端点0单64字节收发缓冲区
	UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;				//手动翻转，OUT事务返回ACK，IN事务返回NAK
}
#if 0
/*******************************************************************************
* Function Name  : Config_Uart1(uint8_t *cfg_uart)
* Description	: 配置串口1参数，留待以后使用
* Input		  : 串口配置参数 四位波特率、停止位、校验、数据位
* Output		 : None
* Return		 : None
*******************************************************************************/
void Config_Uart1(uint8_t *cfg_uart)
{
	uint32_t uart1_buad = 0;
	*((uint8_t *)&uart1_buad) = cfg_uart[0];
	*((uint8_t *)&uart1_buad+1) = cfg_uart[1];
	*((uint8_t *)&uart1_buad+2) = cfg_uart[2];
	*((uint8_t *)&uart1_buad+3) = cfg_uart[3];
	SBAUD1 = 256 - FREQ_SYS/16/uart1_buad; //  SBAUD1 = 256 - Fsys / 16 / baud rate
	IE_UART1 = 1;
}
#endif
/*******************************************************************************
* Function Name  : DeviceInterrupt()
* Description	:CH55xUSB interrupt processing function
*******************************************************************************/
void DeviceInterrupt(void) __interrupt (INT_NO_USB)					   //USB中断服务程序,使用寄存器组1
{
	uint16_t len;
	if(UIF_TRANSFER)															//USB传输完成标志
	{
		switch (USB_INT_ST & (MASK_UIS_TOKEN | MASK_UIS_ENDP))
		{
		case UIS_TOKEN_IN | 1:												  //endpoint 1# 端点中断上传
			UEP1_T_LEN = 0;
			UEP1_CTRL = UEP1_CTRL & ~ MASK_UEP_T_RES | UEP_T_RES_NAK;		   //默认应答NAK
			break;
		case UIS_TOKEN_IN | 2:												  //endpoint 2# 端点批量上传
		{
			UEP2_T_LEN = 0;													//预使用发送长度一定要清空
			UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_T_RES | UEP_T_RES_NAK;		   //默认应答NAK
			UpPoint2_Busy = 0;												  //清除忙标志
		}
			break;
		case UIS_TOKEN_OUT | 2:											 //endpoint 3# 端点批量下传
			if ( U_TOG_OK )													 // 不同步的数据包将丢弃
			{
				USBByteCount = USB_RX_LEN;
				USBBufOutPoint = 0;											 //取数据指针复位
				UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_R_RES | UEP_R_RES_NAK;	   //收到一包数据就NAK，主函数处理完，由主函数修改响应方式
			}
			break;
		case UIS_TOKEN_SETUP | 0:												//SETUP事务
			len = USB_RX_LEN;
			if(len == (sizeof(USB_SETUP_REQ)))
			{
				SetupLen = ((uint16_t)UsbSetupBuf->wLengthH<<8) | (UsbSetupBuf->wLengthL);
				len = 0;													  // 默认为成功并且上传0长度
				SetupReq = UsbSetupBuf->bRequest;
				if ( ( UsbSetupBuf->bRequestType & USB_REQ_TYP_MASK ) != USB_REQ_TYP_STANDARD )//非标准请求
				{
					switch( SetupReq )
					{
					case 0x01:	// GET_REPORT (HID class request)
					{
						int16_t temperature = 0;
						uint16_t humidity = 0;
						uint8_t sensor_status;
						uint8_t retry_count = 0;
						
						// Trigger AHT21 measurement
						aht21_trigger();
						
						// Datasheet requires >80ms delay after trigger
						// With slow I2C we need more time
						mDelaymS(100);  // Wait 100ms (was 80ms)
						
						// Retry up to 3 times if sensor is still busy
						do {
							sensor_status = aht21_read(&temperature, &humidity);
							if (sensor_status == 1) {  // Sensor busy (status bit[7] = 1)
								mDelaymS(20);  // Wait a bit more
								retry_count++;
							} else {
								break;  // Success or other error
							}
						} while (retry_count < 3);
						
						if(sensor_status == 0) {
							// Success - flash green briefly
							sk6812_send_rgbw(0, 100, 0, 0);
							mDelaymS(50);
							sk6812_send_rgbw(0, 0, 0, 0);
							
							// Prepare sensor data in EP0 buffer (with calibration applied)
							Ep0Buffer[0] = 0x01;  // Report ID
							Ep0Buffer[1] = (uint8_t)(temperature >> 8);    // Temperature high byte
							Ep0Buffer[2] = (uint8_t)(temperature & 0xFF);  // Temperature low byte
							Ep0Buffer[3] = (uint8_t)(humidity >> 8);       // Humidity high byte
							Ep0Buffer[4] = (uint8_t)(humidity & 0xFF);     // Humidity low byte
							Ep0Buffer[5] = 0;
							Ep0Buffer[6] = 0;
							Ep0Buffer[7] = 0;
						} else {
							// Error - flash red briefly and return error marker
							sk6812_send_rgbw(100, 0, 0, 0);
							mDelaymS(50);
							sk6812_send_rgbw(0, 0, 0, 0);
							
							Ep0Buffer[0] = 0x01;  // Report ID
							Ep0Buffer[1] = 0xFF;  // Error marker
							Ep0Buffer[2] = 0xFF;
							Ep0Buffer[3] = 0xFF;
							Ep0Buffer[4] = 0xFF;
							Ep0Buffer[5] = sensor_status;  // Debug: error code
							Ep0Buffer[6] = retry_count;     // Debug: retry count
							Ep0Buffer[7] = 0;
						}
						
						pDescr = Ep0Buffer;  // Point to our buffer
						len = 8;  // Return 8 bytes
						break;
					}
					case 0x09:	// SET_REPORT (HID class request)
						// Will receive data in OUT stage, handled in UIS_TOKEN_OUT
						len = 0;	// ACK the SETUP stage
						break;
					
					default:
						len = 0xFF;  								 									 /*命令不支持*/
						break;
					}
				}
				else															 //标准请求
				{
					switch(SetupReq)											 //请求码
					{
					case USB_GET_DESCRIPTOR:
						switch(UsbSetupBuf->wValueH)
						{
						case 1:													   //设备描述符
							pDescr = DevDesc;										 //把设备描述符送到要发送的缓冲区
							len = sizeof(DevDesc);
							break;
						case 2:														//配置描述符
							pDescr = CfgDesc;										  //把设备描述符送到要发送的缓冲区
							len = sizeof(CfgDesc);
							break;
						case 3:                                                       // String descriptor
							if(UsbSetupBuf->wValueL == 0)
							{
								pDescr = LangDes;
								len = sizeof(LangDes);
							}
							else if(UsbSetupBuf->wValueL == 1)
							{
								pDescr = Manuf_Des;
								len = sizeof(Manuf_Des);
							}
							else if(UsbSetupBuf->wValueL == 2)
							{
								pDescr = Prod_Des;
								len = sizeof(Prod_Des);
							}
							else
							{
								pDescr = SerDes;
								len = sizeof(SerDes);
							}
							break;
						case 0x22:                                                    // HID Report descriptor
							pDescr = HIDRepDesc;
							len = sizeof(HIDRepDesc);
							break;
						default:
							len = 0xff;												//不支持的命令或者出错
							break;
						}
						if ( SetupLen > len )
						{
							SetupLen = len;	//限制总长度
						}
						len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;							//本次传输长度
						memcpy(Ep0Buffer,pDescr,len);								  //加载上传数据
						SetupLen -= len;
						pDescr += len;
						break;
					case USB_SET_ADDRESS:
						SetupLen = UsbSetupBuf->wValueL;							  //暂存USB设备地址
						break;
					case USB_GET_CONFIGURATION:
						Ep0Buffer[0] = UsbConfig;
						if ( SetupLen >= 1 )
						{
							len = 1;
						}
						break;
					case USB_SET_CONFIGURATION:
						UsbConfig = UsbSetupBuf->wValueL;
						break;
					case USB_GET_INTERFACE:
						break;
					case USB_CLEAR_FEATURE:											//Clear Feature
						if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_DEVICE )				  /* 清除设备 */
						{
							if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x01 )
							{
								if( CfgDesc[ 7 ] & 0x20 )
								{
									/* 唤醒 */
								}
								else
								{
									len = 0xFF;										/* 操作失败 */
								}
							}
							else
							{
								len = 0xFF;											/* 操作失败 */
							}
						}
						else if ( ( UsbSetupBuf->bRequestType & USB_REQ_RECIP_MASK ) == USB_REQ_RECIP_ENDP )// 端点
						{
							switch( UsbSetupBuf->wIndexL )
							{
							case 0x83:
								UEP3_CTRL = UEP3_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
								break;
							case 0x03:
								UEP3_CTRL = UEP3_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
								break;
							case 0x82:
								UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
								break;
							case 0x02:
								UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
								break;
							case 0x81:
								UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
								break;
							case 0x01:
								UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
								break;
							default:
								len = 0xFF;										 // 不支持的端点
								break;
							}
						}
						else
						{
							len = 0xFF;												// 不是端点不支持
						}
						break;
					case USB_SET_FEATURE:										  /* Set Feature */
						if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_DEVICE )				  /* 设置设备 */
						{
							if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x01 )
							{
								if( CfgDesc[ 7 ] & 0x20 )
								{
									/* 休眠 */
#ifdef DE_PRINTF
									printf( "suspend\r\n" );															 //睡眠状态
#endif
									while ( XBUS_AUX & bUART0_TX )
									{
										;	//等待发送完成
									}
									SAFE_MOD = 0x55;
									SAFE_MOD = 0xAA;
									WAKE_CTRL = bWAK_BY_USB | bWAK_RXD0_LO | bWAK_RXD1_LO;					  //USB或者RXD0/1有信号时可被唤醒
									PCON |= PD;																 //睡眠
									SAFE_MOD = 0x55;
									SAFE_MOD = 0xAA;
									WAKE_CTRL = 0x00;
								}
								else
								{
									len = 0xFF;										/* 操作失败 */
								}
							}
							else
							{
								len = 0xFF;											/* 操作失败 */
							}
						}
						else if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_ENDP )			 /* 设置端点 */
						{
							if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x00 )
							{
								switch( ( ( uint16_t )UsbSetupBuf->wIndexH << 8 ) | UsbSetupBuf->wIndexL )
								{
								case 0x83:
									UEP3_CTRL = UEP3_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点3 IN STALL */
									break;
								case 0x03:
									UEP3_CTRL = UEP3_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点3 OUT Stall */
									break;
								case 0x82:
									UEP2_CTRL = UEP2_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点2 IN STALL */
									break;
								case 0x02:
									UEP2_CTRL = UEP2_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点2 OUT Stall */
									break;
								case 0x81:
									UEP1_CTRL = UEP1_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点1 IN STALL */
									break;
								case 0x01:
									UEP1_CTRL = UEP1_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点1 OUT Stall */
								default:
									len = 0xFF;									/* 操作失败 */
									break;
								}
							}
							else
							{
								len = 0xFF;									  /* 操作失败 */
							}
						}
						else
						{
							len = 0xFF;										  /* 操作失败 */
						}
						break;
					case USB_GET_STATUS:
						Ep0Buffer[0] = 0x00;
						Ep0Buffer[1] = 0x00;
						if ( SetupLen >= 2 )
						{
							len = 2;
						}
						else
						{
							len = SetupLen;
						}
						break;
					default:
						len = 0xff;													//操作失败
						break;
					}
				}
			}
			else
			{
				len = 0xff;														 //包长度错误
			}
			if(len == 0xff)
			{
				SetupReq = 0xFF;
				UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL;//STALL
			}
			else if(len <= DEFAULT_ENDP0_SIZE)													   //上传数据或者状态阶段返回0长度包
			{
				UEP0_T_LEN = len;
				UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;//默认数据包是DATA1，返回应答ACK
			}
			else
			{
				UEP0_T_LEN = 0;  //虽然尚未到状态阶段，但是提前预置上传0长度数据包以防主机提前进入状态阶段
				UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;//默认数据包是DATA1,返回应答ACK
			}
			break;
		case UIS_TOKEN_IN | 0:													  //endpoint0 IN
			switch(SetupReq)
			{
			case 0x01:  // GET_REPORT - send data back to host
				len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;
				memcpy( Ep0Buffer, pDescr, len );  // Copy data to EP0 buffer
				SetupLen -= len;
				pDescr += len;
				UEP0_T_LEN = len;
				UEP0_CTRL ^= bUEP_T_TOG;  // Toggle sync bit
				break;
			case USB_GET_DESCRIPTOR:
				len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;								 //本次传输长度
				memcpy( Ep0Buffer, pDescr, len );								   //加载上传数据
				SetupLen -= len;
				pDescr += len;
				UEP0_T_LEN = len;
				UEP0_CTRL ^= bUEP_T_TOG;											 //同步标志位翻转
				break;
			case USB_SET_ADDRESS:
				USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | SetupLen;
				UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
				break;
			default:
				UEP0_T_LEN = 0;													  //状态阶段完成中断或者是强制上传0长度数据包结束控制传输
				UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
				break;
			}
			break;
		case UIS_TOKEN_OUT | 0:  // endpoint0 OUT
			if(SetupReq == 0x09)  // SET_REPORT (HID Output Report)
			{
				if( U_TOG_OK )
				{
					// Script sends: [0x00, 0x00, R, G, B, 0, 0, 0]
					// Buffer[0] = 0x00 (Report ID added by HID stack)
					// Buffer[1] = 0x00 (Report ID from led.sh)
					// Buffer[2] = R, Buffer[3] = G, Buffer[4] = B
					if(USB_RX_LEN >= 4) {
						uint8_t r = Ep0Buffer[1];
						uint8_t g = Ep0Buffer[2];
						uint8_t b = Ep0Buffer[3];
						sk6812_send_rgbw(r, g, b, 0);  // W=0 (RGB LED only)
					}
					UEP0_T_LEN = 0;
					UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;
				}
			}
			/*else if(SetupReq ==SET_LINE_CODING)  //设置串口属性
			{
				if( U_TOG_OK )
				{
				//	memcpy(LineCoding,UsbSetupBuf,USB_RX_LEN);
				//	Config_Uart1(LineCoding);
					UEP0_T_LEN = 0;
					UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;  // 准备上传0包
				}
			}*/
			else
			{
				UEP0_T_LEN = 0;
				UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;  //状态阶段，对IN响应NAK
			}
			break;



		default:
			break;
		}
		UIF_TRANSFER = 0;														   //写0清空中断
	}
	if(UIF_BUS_RST)																 //设备模式USB总线复位中断
	{
#ifdef DE_PRINTF
		printf( "reset\r\n" );															 //睡眠状态
#endif
		UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
		UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;
		UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
		USB_DEV_AD = 0x00;
		UIF_SUSPEND = 0;
		UIF_TRANSFER = 0;
		UIF_BUS_RST = 0;															 //清中断标志
		Midi_Input_Point = 0;   //循环缓冲区输入指针
		Midi_Output_Point = 0;  //循环缓冲区读出指针
		MidiByteCount = 0;	  //当前缓冲区剩余待取字节数
		USBByteCount = 0;	   //USB端点收到的长度
		UsbConfig = 0;		  //清除配置值
		UpPoint2_Busy = 0;
	}
	if (UIF_SUSPEND)																 //USB总线挂起/唤醒完成
	{
		UIF_SUSPEND = 0;
		if ( USB_MIS_ST & bUMS_SUSPEND )											 //挂起
		{
#ifdef DE_PRINTF
			printf( "suspend\r\n" );															 //睡眠状态
#endif
			while ( XBUS_AUX & bUART0_TX )
			{
				;	//等待发送完成
			}
			SAFE_MOD = 0x55;
			SAFE_MOD = 0xAA;
			WAKE_CTRL = bWAK_BY_USB | bWAK_RXD0_LO | bWAK_RXD1_LO;					  //USB或者RXD0/1有信号时可被唤醒
			PCON |= PD;																 //睡眠
			SAFE_MOD = 0x55;
			SAFE_MOD = 0xAA;
			WAKE_CTRL = 0x00;
		}   
	}
	else {																			 //意外的中断,不可能发生的情况
		USB_INT_FG = 0xFF;															 //清中断标志

	}
}
/*******************************************************************************
* Function Name  : Uart1_ISR()
* Description	: 串口接收中断函数，实现循环缓冲接收
*******************************************************************************/
#if 0
void Uart1_ISR(void) __interrupt (INT_NO_UART1)
{
	if(U1RI)   //收到数据
	{
		Receive_Uart_Buf[Uart_Input_Point++] = SBUF1;
		UartByteCount++;					//当前缓冲区剩余待取字节数
		if(Uart_Input_Point>=UART_REV_LEN)
			Uart_Input_Point = 0;		   //写入指针
		U1RI =0;
	}

}
#endif

//主函数
void main()
{
	uint8_t i;
	CfgFsys();                   // Configure system clock
	mDelaymS(5);                 // Wait for clock to stabilize
	
	// SK6812 LED init
	sk6812_init();
	
	// Test: Turn LED blue for 2 seconds to confirm LED works
	sk6812_send_rgbw(0, 0, 255, 0);  // Blue
	mDelaymS(2000);
	sk6812_send_rgbw(0, 0, 0, 0);    // Off
	
	// Disable alternate functions on P3.3 and P3.4
	PIN_FUNC &= ~bUART1_PIN_X;  // UART1 stays on P1.6/P1.7
	PIN_FUNC &= ~bPWM2_PIN_X;   // PWM2 stays on P3.0
	
	// CRITICAL: Power stability for AHT21 (board has only 0.1uF, not 10uF)
	// Give sensor extra time to stabilize with small decoupling cap
	mDelaymS(500);  // Extended delay for power stability
	
	// Configure P3.3 and P3.4 as OPEN-DRAIN outputs (correct for I2C with 4.5k pull-ups!)
	P3_MOD_OC |= ((1<<3) | (1<<4));   // Set bits = open-drain mode
	P3_DIR_PU &= ~((1<<3) | (1<<4));  // Clear bits = output mode
	
	// Initialize I2C bus FIRST (sets pins high)
	i2c_init();
	
	// Wait longer for sensor - datasheet says 100ms, but with only 0.1uF cap we need more
	mDelaymS(200);
	
	// Initialize AHT21 sensor
	uint8_t init_status = aht21_init();
	mDelaymS(20);  // Wait for sensor to stabilize
	
	// USB init
	USBDeviceCfg();
	USBDeviceEndPointCfg();
	USBDeviceIntCfg();
	UEP0_T_LEN = 0;
	UEP1_T_LEN = 0;
	UEP2_T_LEN = 0;
	
	// Visual indicator of sensor init status:
	// 0 = Success (1 green flash)
	// 1 = Sensor not responding (2 red flashes)
	// 2 = Sensor not calibrated (2 yellow flashes)
	if (init_status == 0) {
		sk6812_send_rgbw(0, 255, 0, 0);  // Green: Success
		mDelaymS(200);
		sk6812_send_rgbw(0, 0, 0, 0);
	} else if (init_status == 1) {
		// Flash red twice for init error
		sk6812_send_rgbw(255, 0, 0, 0);
		mDelaymS(150);
		sk6812_send_rgbw(0, 0, 0, 0);
		mDelaymS(100);
		sk6812_send_rgbw(255, 0, 0, 0);
		mDelaymS(150);
		sk6812_send_rgbw(0, 0, 0, 0);
	} else {
		// Flash yellow twice for not calibrated
		sk6812_send_rgbw(255, 255, 0, 0);
		mDelaymS(150);
		sk6812_send_rgbw(0, 0, 0, 0);
		mDelaymS(100);
		sk6812_send_rgbw(255, 255, 0, 0);
		mDelaymS(150);
		sk6812_send_rgbw(0, 0, 0, 0);
	}
	
	while(1)
	{
		// Check if we received USB HID data
		if(UsbConfig && USBByteCount)
		{
			// We received data! Format: [R, G, B, W, ...]
			// Minimum 4 bytes for one RGBW command
			if(USBByteCount >= 4) {
				// Extract RGBW values from received data
				uint8_t r = Ep2Buffer[0];
				uint8_t g = Ep2Buffer[1];
				uint8_t b = Ep2Buffer[2];
				uint8_t w = Ep2Buffer[3];
				
				// Update LED
				sk6812_send_rgbw(r, g, b, w);
			}
			
			// Clear the received byte count
			USBByteCount = 0;
			
			// Re-enable endpoint to receive more data
			UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_R_RES | UEP_R_RES_ACK;
		}
	}
}
