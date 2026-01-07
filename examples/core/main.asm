;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Linux)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Manuf_Des
	.globl _Prod_Des
	.globl _SerDes
	.globl _LangDes
	.globl _HIDRepDesc
	.globl _CfgDesc
	.globl _DevDesc
	.globl _main
	.globl _DeviceInterrupt
	.globl _USBDeviceEndPointCfg
	.globl _USBDeviceIntCfg
	.globl _USBDeviceCfg
	.globl _sk6812_send_rgbw
	.globl _sk6812_init
	.globl _mDelaymS
	.globl _CfgFsys
	.globl ___memcpy
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _Ep2Buffer
	.globl _Ep1Buffer
	.globl _Ep0Buffer
	.globl _UpPoint2_Busy
	.globl _USBBufOutPoint
	.globl _USBByteCount
	.globl _MidiByteCount
	.globl _Midi_Output_Point
	.globl _Midi_Input_Point
	.globl _Receive_Midi_Buf
	.globl _SetupReqBuf
	.globl _pDescr
	.globl _UsbConfig
	.globl _Count
	.globl _SetupReq
	.globl _SetupLen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_SetupLen::
	.ds 2
_SetupReq::
	.ds 1
_Count::
	.ds 1
_UsbConfig::
	.ds 1
_pDescr::
	.ds 3
_SetupReqBuf::
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_Receive_Midi_Buf::
	.ds 64
_Midi_Input_Point::
	.ds 1
_Midi_Output_Point::
	.ds 1
_MidiByteCount::
	.ds 1
_USBByteCount::
	.ds 1
_USBBufOutPoint::
	.ds 1
_UpPoint2_Busy::
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_DeviceInterrupt_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_Ep0Buffer	=	0x0000
_Ep1Buffer	=	0x0040
_Ep2Buffer	=	0x0080
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_DeviceInterrupt
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:120: volatile __idata uint8_t Midi_Input_Point = 0;   //循环缓冲区写入指针，总线复位需要初始化为0
	mov	r0,#_Midi_Input_Point
	mov	@r0,#0x00
;	main.c:121: volatile __idata uint8_t Midi_Output_Point = 0;  //循环缓冲区取出指针，总线复位需要初始化为0
	mov	r0,#_Midi_Output_Point
	mov	@r0,#0x00
;	main.c:122: volatile __idata uint8_t MidiByteCount = 0;	  //当前缓冲区剩余待取字节数
	mov	r0,#_MidiByteCount
	mov	@r0,#0x00
;	main.c:125: volatile __idata uint8_t USBByteCount = 0;	  //代表USB端点接收到的数据
	mov	r0,#_USBByteCount
	mov	@r0,#0x00
;	main.c:126: volatile __idata uint8_t USBBufOutPoint = 0;	//取数据指针
	mov	r0,#_USBBufOutPoint
	mov	@r0,#0x00
;	main.c:128: volatile __idata uint8_t UpPoint2_Busy  = 0;   //上传端点是否忙标志
	mov	r0,#_UpPoint2_Busy
	mov	@r0,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceCfg'
;------------------------------------------------------------
;	main.c:138: void USBDeviceCfg()
;	-----------------------------------------
;	 function USBDeviceCfg
;	-----------------------------------------
_USBDeviceCfg:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:140: USB_CTRL = 0x00;														   //清空USB控制寄存器
	mov	_USB_CTRL,#0x00
;	main.c:141: USB_CTRL &= ~bUC_HOST_MODE;												//该位为选择设备模式
	anl	_USB_CTRL,#0x7f
;	main.c:142: USB_CTRL |=  bUC_DEV_PU_EN | bUC_INT_BUSY | bUC_DMA_EN;					//USB设备和内部上拉使能,在中断期间中断标志未清除前自动返回NAK
	orl	_USB_CTRL,#0x29
;	main.c:143: USB_DEV_AD = 0x00;														 //设备地址初始化
	mov	_USB_DEV_AD,#0x00
;	main.c:146: USB_CTRL &= ~bUC_LOW_SPEED;
	anl	_USB_CTRL,#0xbf
;	main.c:147: UDEV_CTRL &= ~bUD_LOW_SPEED;											 //选择全速12M模式，默认方式
	anl	_UDEV_CTRL,#0xfb
;	main.c:148: UDEV_CTRL = bUD_PD_DIS;  // 禁止DP/DM下拉电阻
	mov	_UDEV_CTRL,#0x80
;	main.c:149: UDEV_CTRL |= bUD_PORT_EN;												  //使能物理端口
	orl	_UDEV_CTRL,#0x01
;	main.c:150: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceIntCfg'
;------------------------------------------------------------
;	main.c:158: void USBDeviceIntCfg()
;	-----------------------------------------
;	 function USBDeviceIntCfg
;	-----------------------------------------
_USBDeviceIntCfg:
;	main.c:160: USB_INT_EN |= bUIE_SUSPEND;											   //使能设备挂起中断
	orl	_USB_INT_EN,#0x04
;	main.c:161: USB_INT_EN |= bUIE_TRANSFER;											  //使能USB传输完成中断
	orl	_USB_INT_EN,#0x02
;	main.c:162: USB_INT_EN |= bUIE_BUS_RST;											   //使能设备模式USB总线复位中断
	orl	_USB_INT_EN,#0x01
;	main.c:163: USB_INT_FG |= 0x1F;													   //清中断标志
	orl	_USB_INT_FG,#0x1f
;	main.c:164: IE_USB = 1;															   //使能USB中断
;	assignBit
	setb	_IE_USB
;	main.c:165: EA = 1;																   //允许单片机中断
;	assignBit
	setb	_EA
;	main.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBDeviceEndPointCfg'
;------------------------------------------------------------
;	main.c:174: void USBDeviceEndPointCfg()
;	-----------------------------------------
;	 function USBDeviceEndPointCfg
;	-----------------------------------------
_USBDeviceEndPointCfg:
;	main.c:176: UEP1_DMA = (uint16_t) Ep1Buffer;													  //端点1 发送数据传输地址
	mov	r6,#_Ep1Buffer
	mov	r7,#(_Ep1Buffer >> 8)
	mov	((_UEP1_DMA >> 0) & 0xFF),r6
	mov	((_UEP1_DMA >> 8) & 0xFF),r7
;	main.c:177: UEP2_DMA = (uint16_t) Ep2Buffer;													  //端点2 IN数据传输地址
	mov	r6,#_Ep2Buffer
	mov	r7,#(_Ep2Buffer >> 8)
	mov	((_UEP2_DMA >> 0) & 0xFF),r6
	mov	((_UEP2_DMA >> 8) & 0xFF),r7
;	main.c:178: UEP2_3_MOD = 0xCC;														 //端点2/3 单缓冲收发使能
	mov	_UEP2_3_MOD,#0xcc
;	main.c:179: UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;		//端点2自动翻转同步标志位，IN事务返回NAK，OUT返回ACK
	mov	_UEP2_CTRL,#0x12
;	main.c:181: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;				//端点1自动翻转同步标志位，IN事务返回NAK
	mov	_UEP1_CTRL,#0x12
;	main.c:182: UEP0_DMA = (uint16_t) Ep0Buffer;													  //端点0数据传输地址
	mov	r6,#_Ep0Buffer
	mov	r7,#(_Ep0Buffer >> 8)
	mov	((_UEP0_DMA >> 0) & 0xFF),r6
	mov	((_UEP0_DMA >> 8) & 0xFF),r7
;	main.c:183: UEP4_1_MOD = 0X40;														 //端点1上传缓冲区；端点0单64字节收发缓冲区
	mov	_UEP4_1_MOD,#0x40
;	main.c:184: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;				//手动翻转，OUT事务返回ACK，IN事务返回NAK
	mov	_UEP0_CTRL,#0x02
;	main.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DeviceInterrupt'
;------------------------------------------------------------
;len           Allocated to registers r4 r5 
;r             Allocated to registers r7 
;g             Allocated to registers 
;b             Allocated to registers 
;------------------------------------------------------------
;	main.c:209: void DeviceInterrupt(void) __interrupt (INT_NO_USB)					   //USB中断服务程序,使用寄存器组1
;	-----------------------------------------
;	 function DeviceInterrupt
;	-----------------------------------------
_DeviceInterrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:212: if(UIF_TRANSFER)															//USB传输完成标志
	jb	_UIF_TRANSFER,00632$
	ljmp	00216$
00632$:
;	main.c:214: switch (USB_INT_ST & (MASK_UIS_TOKEN | MASK_UIS_ENDP))
	mov	a,#0x3f
	anl	a,_USB_INT_ST
	mov	r7,a
	mov	r6,a
	cjne	r6,#0x00,00633$
	ljmp	00205$
00633$:
	cjne	r7,#0x02,00634$
	sjmp	00103$
00634$:
	cjne	r7,#0x20,00635$
	ljmp	00200$
00635$:
	cjne	r7,#0x21,00636$
	sjmp	00101$
00636$:
	cjne	r7,#0x22,00637$
	sjmp	00102$
00637$:
	cjne	r7,#0x30,00638$
	sjmp	00106$
00638$:
	ljmp	00214$
;	main.c:216: case UIS_TOKEN_IN | 1:												  //endpoint 1# 端点中断上传
00101$:
;	main.c:217: UEP1_T_LEN = 0;
	mov	_UEP1_T_LEN,#0x00
;	main.c:218: UEP1_CTRL = UEP1_CTRL & ~ MASK_UEP_T_RES | UEP_T_RES_NAK;		   //默认应答NAK
	mov	a,#0xfc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	main.c:219: break;
	ljmp	00214$
;	main.c:220: case UIS_TOKEN_IN | 2:												  //endpoint 2# 端点批量上传
00102$:
;	main.c:222: UEP2_T_LEN = 0;													//预使用发送长度一定要清空
	mov	_UEP2_T_LEN,#0x00
;	main.c:223: UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_T_RES | UEP_T_RES_NAK;		   //默认应答NAK
	mov	a,#0xfc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	main.c:224: UpPoint2_Busy = 0;												  //清除忙标志
	mov	r0,#_UpPoint2_Busy
	mov	@r0,#0x00
;	main.c:226: break;
	ljmp	00214$
;	main.c:227: case UIS_TOKEN_OUT | 2:											 //endpoint 3# 端点批量下传
00103$:
;	main.c:228: if ( U_TOG_OK )													 // 不同步的数据包将丢弃
	jb	_U_TOG_OK,00639$
	ljmp	00214$
00639$:
;	main.c:230: USBByteCount = USB_RX_LEN;
	mov	r0,#_USBByteCount
	mov	@r0,_USB_RX_LEN
;	main.c:231: USBBufOutPoint = 0;											 //取数据指针复位
	mov	r0,#_USBBufOutPoint
	mov	@r0,#0x00
;	main.c:232: UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_R_RES | UEP_R_RES_NAK;	   //收到一包数据就NAK，主函数处理完，由主函数修改响应方式
	mov	a,#0xf3
	anl	a,_UEP2_CTRL
	orl	a,#0x08
	mov	_UEP2_CTRL,a
;	main.c:234: break;
	ljmp	00214$
;	main.c:235: case UIS_TOKEN_SETUP | 0:												//SETUP事务
00106$:
;	main.c:236: len = USB_RX_LEN;
	mov	r6,_USB_RX_LEN
	mov	r7,#0x00
;	main.c:237: if(len == (sizeof(USB_SETUP_REQ)))
	cjne	r6,#0x08,00640$
	cjne	r7,#0x00,00640$
	sjmp	00641$
00640$:
	ljmp	00192$
00641$:
;	main.c:239: SetupLen = ((uint16_t)UsbSetupBuf->wLengthH<<8) | (UsbSetupBuf->wLengthL);
	mov	dptr,#(_Ep0Buffer + 0x0007)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0006)
	movx	a,@dptr
	mov	r4,#0x00
	orl	a,r7
	mov	_SetupLen,a
	mov	a,r4
	orl	a,r6
	mov	(_SetupLen + 1),a
;	main.c:240: len = 0;													  // 默认为成功并且上传0长度
	mov	r6,#0x00
;	main.c:241: SetupReq = UsbSetupBuf->bRequest;
	mov	dptr,#(_Ep0Buffer + 0x0001)
	movx	a,@dptr
	mov	_SetupReq,a
;	main.c:242: if ( ( UsbSetupBuf->bRequestType & USB_REQ_TYP_MASK ) != USB_REQ_TYP_STANDARD )//非标准请求
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r5,a
	anl	a,#0x60
	jz	00189$
;	main.c:244: switch( SetupReq )
	mov	a,#0x09
	cjne	a,_SetupReq,00108$
;	main.c:248: len = 0;	// ACK the SETUP stage
	mov	r6,#0x00
	mov	r7,#0x00
;	main.c:249: break;
	ljmp	00193$
;	main.c:251: default:
00108$:
;	main.c:252: len = 0xFF;  								 									 /*命令不支持*/
	mov	r6,#0xff
	mov	r7,#0x00
;	main.c:254: }
	ljmp	00193$
00189$:
;	main.c:258: switch(SetupReq)											 //请求码
	mov	a,_SetupReq
	add	a,#0xff - 0x0a
	jnc	00645$
	ljmp	00186$
00645$:
	mov	a,_SetupReq
	add	a,#(00646$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_SetupReq
	add	a,#(00647$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00646$:
	.db	00182$
	.db	00134$
	.db	00186$
	.db	00155$
	.db	00186$
	.db	00128$
	.db	00110$
	.db	00186$
	.db	00129$
	.db	00132$
	.db	00193$
00647$:
	.db	00182$>>8
	.db	00134$>>8
	.db	00186$>>8
	.db	00155$>>8
	.db	00186$>>8
	.db	00128$>>8
	.db	00110$>>8
	.db	00186$>>8
	.db	00129$>>8
	.db	00132$>>8
	.db	00193$>>8
;	main.c:260: case USB_GET_DESCRIPTOR:
00110$:
;	main.c:261: switch(UsbSetupBuf->wValueH)
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,00648$
	sjmp	00111$
00648$:
	cjne	r5,#0x02,00649$
	sjmp	00112$
00649$:
	cjne	r5,#0x03,00650$
	sjmp	00113$
00650$:
	cjne	r5,#0x22,00651$
	sjmp	00123$
00651$:
	ljmp	00124$
;	main.c:263: case 1:													   //设备描述符
00111$:
;	main.c:264: pDescr = DevDesc;										 //把设备描述符送到要发送的缓冲区
	mov	_pDescr,#_DevDesc
	mov	(_pDescr + 1),#(_DevDesc >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:265: len = sizeof(DevDesc);
	mov	r4,#0x12
	mov	r5,#0x00
;	main.c:266: break;
;	main.c:267: case 2:														//配置描述符
	sjmp	00125$
00112$:
;	main.c:268: pDescr = CfgDesc;										  //把设备描述符送到要发送的缓冲区
	mov	_pDescr,#_CfgDesc
	mov	(_pDescr + 1),#(_CfgDesc >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:269: len = sizeof(CfgDesc);
	mov	r4,#0x22
	mov	r5,#0x00
;	main.c:270: break;
;	main.c:271: case 3:                                                       // String descriptor
	sjmp	00125$
00113$:
;	main.c:272: if(UsbSetupBuf->wValueL == 0)
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	jnz	00121$
;	main.c:274: pDescr = LangDes;
	mov	_pDescr,#_LangDes
	mov	(_pDescr + 1),#(_LangDes >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:275: len = sizeof(LangDes);
	mov	r4,#0x04
	mov	r5,#0x00
	sjmp	00125$
00121$:
;	main.c:277: else if(UsbSetupBuf->wValueL == 1)
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x01,00118$
;	main.c:279: pDescr = Manuf_Des;
	mov	_pDescr,#_Manuf_Des
	mov	(_pDescr + 1),#(_Manuf_Des >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:280: len = sizeof(Manuf_Des);
	mov	r4,#0x16
	mov	r5,#0x00
	sjmp	00125$
00118$:
;	main.c:282: else if(UsbSetupBuf->wValueL == 2)
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x02,00115$
;	main.c:284: pDescr = Prod_Des;
	mov	_pDescr,#_Prod_Des
	mov	(_pDescr + 1),#(_Prod_Des >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:285: len = sizeof(Prod_Des);
	mov	r4,#0x1e
	mov	r5,#0x00
	sjmp	00125$
00115$:
;	main.c:289: pDescr = SerDes;
	mov	_pDescr,#_SerDes
	mov	(_pDescr + 1),#(_SerDes >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:290: len = sizeof(SerDes);
	mov	r4,#0x0e
	mov	r5,#0x00
;	main.c:292: break;
;	main.c:293: case 0x22:                                                    // HID Report descriptor
	sjmp	00125$
00123$:
;	main.c:294: pDescr = HIDRepDesc;
	mov	_pDescr,#_HIDRepDesc
	mov	(_pDescr + 1),#(_HIDRepDesc >> 8)
	mov	(_pDescr + 2),#0x80
;	main.c:295: len = sizeof(HIDRepDesc);
	mov	r4,#0x22
	mov	r5,#0x00
;	main.c:296: break;
;	main.c:297: default:
	sjmp	00125$
00124$:
;	main.c:298: len = 0xff;												//不支持的命令或者出错
	mov	r4,#0xff
	mov	r5,#0x00
;	main.c:300: }
00125$:
;	main.c:301: if ( SetupLen > len )
	clr	c
	mov	a,r4
	subb	a,_SetupLen
	mov	a,r5
	subb	a,(_SetupLen + 1)
	jnc	00127$
;	main.c:303: SetupLen = len;	//限制总长度
	mov	_SetupLen,r4
	mov	(_SetupLen + 1),r5
00127$:
;	main.c:305: len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;							//本次传输长度
	mov	r4,_SetupLen
	mov	r5,(_SetupLen + 1)
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	subb	a,#0x00
	mov	_DeviceInterrupt_sloc0_1_0,c
	jc	00229$
	mov	r4,#0x08
	mov	r5,#0x00
	sjmp	00230$
00229$:
	mov	r4,_SetupLen
	mov	r5,(_SetupLen + 1)
00230$:
	mov	ar6,r4
	mov	ar7,r5
;	main.c:306: memcpy(Ep0Buffer,pDescr,len);								  //加载上传数据
	mov	___memcpy_PARM_2,_pDescr
	mov	(___memcpy_PARM_2 + 1),(_pDescr + 1)
	mov	(___memcpy_PARM_2 + 2),(_pDescr + 2)
	mov	___memcpy_PARM_3,r6
	mov	(___memcpy_PARM_3 + 1),r7
	mov	dptr,#_Ep0Buffer
	mov	b, #0x00
	push	ar7
	push	ar6
	lcall	___memcpy
	pop	ar6
	pop	ar7
;	main.c:307: SetupLen -= len;
	mov	a,_SetupLen
	clr	c
	subb	a,r6
	mov	_SetupLen,a
	mov	a,(_SetupLen + 1)
	subb	a,r7
	mov	(_SetupLen + 1),a
;	main.c:308: pDescr += len;
	mov	a,r6
	add	a, _pDescr
	mov	_pDescr,a
	mov	a,r7
	addc	a, (_pDescr + 1)
	mov	(_pDescr + 1),a
;	main.c:309: break;
	ljmp	00193$
;	main.c:310: case USB_SET_ADDRESS:
00128$:
;	main.c:311: SetupLen = UsbSetupBuf->wValueL;							  //暂存USB设备地址
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	_SetupLen, a
	mov	(_SetupLen + 1),#0x00
;	main.c:312: break;
	ljmp	00193$
;	main.c:313: case USB_GET_CONFIGURATION:
00129$:
;	main.c:314: Ep0Buffer[0] = UsbConfig;
	mov	dptr,#_Ep0Buffer
	mov	a,_UsbConfig
	movx	@dptr,a
;	main.c:315: if ( SetupLen >= 1 )
	mov	r4,_SetupLen
	mov	r5,(_SetupLen + 1)
	clr	c
	mov	a,r4
	subb	a,#0x01
	mov	a,r5
	subb	a,#0x00
	jnc	00659$
	ljmp	00193$
00659$:
;	main.c:317: len = 1;
	mov	r6,#0x01
	mov	r7,#0x00
;	main.c:319: break;
	ljmp	00193$
;	main.c:320: case USB_SET_CONFIGURATION:
00132$:
;	main.c:321: UsbConfig = UsbSetupBuf->wValueL;
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	_UsbConfig,a
;	main.c:322: break;
	ljmp	00193$
;	main.c:325: case USB_CLEAR_FEATURE:											//Clear Feature
00134$:
;	main.c:326: if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_DEVICE )				  /* 清除设备 */
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00153$
;	main.c:328: if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x01 )
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	cjne	r5,#0x01,00139$
	cjne	r4,#0x00,00139$
;	main.c:330: if( CfgDesc[ 7 ] & 0x20 )
	mov	dptr,#(_CfgDesc + 0x0007)
	clr	a
	movc	a,@a+dptr
	jnb	acc.5,00664$
	ljmp	00193$
00664$:
;	main.c:336: len = 0xFF;										/* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
	ljmp	00193$
00139$:
;	main.c:341: len = 0xFF;											/* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
	ljmp	00193$
00153$:
;	main.c:344: else if ( ( UsbSetupBuf->bRequestType & USB_REQ_RECIP_MASK ) == USB_REQ_RECIP_ENDP )// 端点
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x1f
	cjne	r5,#0x02,00150$
;	main.c:346: switch( UsbSetupBuf->wIndexL )
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,00667$
	sjmp	00146$
00667$:
	cjne	r5,#0x02,00668$
	sjmp	00144$
00668$:
	cjne	r5,#0x03,00669$
	sjmp	00142$
00669$:
	cjne	r5,#0x81,00670$
	sjmp	00145$
00670$:
	cjne	r5,#0x82,00671$
	sjmp	00143$
00671$:
	cjne	r5,#0x83,00147$
;	main.c:349: UEP3_CTRL = UEP3_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP3_CTRL
	orl	a,#0x02
	mov	_UEP3_CTRL,a
;	main.c:350: break;
	ljmp	00193$
;	main.c:351: case 0x03:
00142$:
;	main.c:352: UEP3_CTRL = UEP3_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
	anl	_UEP3_CTRL,#0x73
;	main.c:353: break;
	ljmp	00193$
;	main.c:354: case 0x82:
00143$:
;	main.c:355: UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP2_CTRL
	orl	a,#0x02
	mov	_UEP2_CTRL,a
;	main.c:356: break;
	ljmp	00193$
;	main.c:357: case 0x02:
00144$:
;	main.c:358: UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
	anl	_UEP2_CTRL,#0x73
;	main.c:359: break;
	ljmp	00193$
;	main.c:360: case 0x81:
00145$:
;	main.c:361: UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
	mov	a,#0xbc
	anl	a,_UEP1_CTRL
	orl	a,#0x02
	mov	_UEP1_CTRL,a
;	main.c:362: break;
	ljmp	00193$
;	main.c:363: case 0x01:
00146$:
;	main.c:364: UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
	anl	_UEP1_CTRL,#0x73
;	main.c:365: break;
	ljmp	00193$
;	main.c:366: default:
00147$:
;	main.c:367: len = 0xFF;										 // 不支持的端点
	mov	r6,#0xff
	mov	r7,#0x00
;	main.c:369: }
	ljmp	00193$
00150$:
;	main.c:373: len = 0xFF;												// 不是端点不支持
	mov	r6,#0xff
	mov	r7,#0x00
;	main.c:375: break;
	ljmp	00193$
;	main.c:376: case USB_SET_FEATURE:										  /* Set Feature */
00155$:
;	main.c:377: if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_DEVICE )				  /* 设置设备 */
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	anl	a,#0x1f
	jnz	00180$
;	main.c:379: if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x01 )
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	cjne	r5,#0x01,00163$
	cjne	r4,#0x00,00163$
;	main.c:381: if( CfgDesc[ 7 ] & 0x20 )
	mov	dptr,#(_CfgDesc + 0x0007)
	clr	a
	movc	a,@a+dptr
	jnb	acc.5,00160$
;	main.c:387: while ( XBUS_AUX & bUART0_TX )
00156$:
	mov	a,_XBUS_AUX
	jb	acc.7,00156$
;	main.c:391: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:392: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:393: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD0_LO | bWAK_RXD1_LO;					  //USB或者RXD0/1有信号时可被唤醒
	mov	_WAKE_CTRL,#0xc1
;	main.c:394: PCON |= PD;																 //睡眠
	orl	_PCON,#0x02
;	main.c:395: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:396: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:397: WAKE_CTRL = 0x00;
	mov	_WAKE_CTRL,#0x00
	ljmp	00193$
00160$:
;	main.c:401: len = 0xFF;										/* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
	ljmp	00193$
00163$:
;	main.c:406: len = 0xFF;											/* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
	ljmp	00193$
00180$:
;	main.c:409: else if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_ENDP )			 /* 设置端点 */
	mov	dptr,#_Ep0Buffer
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x1f
	cjne	r5,#0x02,00680$
	sjmp	00681$
00680$:
	ljmp	00177$
00681$:
;	main.c:411: if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x00 )
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	mov	a,r5
	orl	a,r4
	jz	00682$
	ljmp	00174$
00682$:
;	main.c:413: switch( ( ( uint16_t )UsbSetupBuf->wIndexH << 8 ) | UsbSetupBuf->wIndexL )
	mov	dptr,#(_Ep0Buffer + 0x0005)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_Ep0Buffer + 0x0004)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	cjne	r5,#0x01,00683$
	cjne	r4,#0x00,00683$
	sjmp	00170$
00683$:
	cjne	r5,#0x02,00684$
	cjne	r4,#0x00,00684$
	sjmp	00168$
00684$:
	cjne	r5,#0x03,00685$
	cjne	r4,#0x00,00685$
	sjmp	00166$
00685$:
	cjne	r5,#0x81,00686$
	cjne	r4,#0x00,00686$
	sjmp	00169$
00686$:
	cjne	r5,#0x82,00687$
	cjne	r4,#0x00,00687$
	sjmp	00167$
00687$:
	cjne	r5,#0x83,00171$
	cjne	r4,#0x00,00171$
;	main.c:416: UEP3_CTRL = UEP3_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点3 IN STALL */
	mov	a,#0xbf
	anl	a,_UEP3_CTRL
	orl	a,#0x03
	mov	_UEP3_CTRL,a
;	main.c:417: break;
;	main.c:418: case 0x03:
	sjmp	00193$
00166$:
;	main.c:419: UEP3_CTRL = UEP3_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点3 OUT Stall */
	mov	a,#0x7f
	anl	a,_UEP3_CTRL
	orl	a,#0x0c
	mov	_UEP3_CTRL,a
;	main.c:420: break;
;	main.c:421: case 0x82:
	sjmp	00193$
00167$:
;	main.c:422: UEP2_CTRL = UEP2_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点2 IN STALL */
	mov	a,#0xbf
	anl	a,_UEP2_CTRL
	orl	a,#0x03
	mov	_UEP2_CTRL,a
;	main.c:423: break;
;	main.c:424: case 0x02:
	sjmp	00193$
00168$:
;	main.c:425: UEP2_CTRL = UEP2_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点2 OUT Stall */
	mov	a,#0x7f
	anl	a,_UEP2_CTRL
	orl	a,#0x0c
	mov	_UEP2_CTRL,a
;	main.c:426: break;
;	main.c:427: case 0x81:
	sjmp	00193$
00169$:
;	main.c:428: UEP1_CTRL = UEP1_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点1 IN STALL */
	mov	a,#0xbf
	anl	a,_UEP1_CTRL
	orl	a,#0x03
	mov	_UEP1_CTRL,a
;	main.c:429: break;
;	main.c:430: case 0x01:
	sjmp	00193$
00170$:
;	main.c:431: UEP1_CTRL = UEP1_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点1 OUT Stall */
	mov	a,#0x7f
	anl	a,_UEP1_CTRL
	orl	a,#0x0c
	mov	_UEP1_CTRL,a
;	main.c:432: default:
00171$:
;	main.c:433: len = 0xFF;									/* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
;	main.c:435: }
	sjmp	00193$
00174$:
;	main.c:439: len = 0xFF;									  /* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
	sjmp	00193$
00177$:
;	main.c:444: len = 0xFF;										  /* 操作失败 */
	mov	r6,#0xff
	mov	r7,#0x00
;	main.c:446: break;
;	main.c:447: case USB_GET_STATUS:
	sjmp	00193$
00182$:
;	main.c:448: Ep0Buffer[0] = 0x00;
	mov	dptr,#_Ep0Buffer
	clr	a
	movx	@dptr,a
;	main.c:449: Ep0Buffer[1] = 0x00;
	mov	dptr,#(_Ep0Buffer + 0x0001)
	movx	@dptr,a
;	main.c:450: if ( SetupLen >= 2 )
	mov	r4,_SetupLen
	mov	r5,(_SetupLen + 1)
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	jc	00184$
;	main.c:452: len = 2;
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00193$
00184$:
;	main.c:456: len = SetupLen;
	mov	r6,_SetupLen
	mov	r7,(_SetupLen + 1)
;	main.c:458: break;
;	main.c:459: default:
	sjmp	00193$
00186$:
;	main.c:460: len = 0xff;													//操作失败
	mov	r6,#0xff
	mov	r7,#0x00
;	main.c:462: }
	sjmp	00193$
00192$:
;	main.c:467: len = 0xff;														 //包长度错误
	mov	r6,#0xff
	mov	r7,#0x00
00193$:
;	main.c:469: if(len == 0xff)
	mov	ar4,r6
	mov	ar5,r7
	cjne	r4,#0xff,00198$
	cjne	r5,#0x00,00198$
;	main.c:471: SetupReq = 0xFF;
	mov	_SetupReq,#0xff
;	main.c:472: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL;//STALL
	mov	_UEP0_CTRL,#0xcf
	ljmp	00214$
00198$:
;	main.c:474: else if(len <= DEFAULT_ENDP0_SIZE)													   //上传数据或者状态阶段返回0长度包
	clr	c
	mov	a,#0x08
	subb	a,r4
	clr	a
	subb	a,r5
	jc	00195$
;	main.c:476: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r6
;	main.c:477: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;//默认数据包是DATA1，返回应答ACK
	mov	_UEP0_CTRL,#0xc0
	ljmp	00214$
00195$:
;	main.c:481: UEP0_T_LEN = 0;  //虽然尚未到状态阶段，但是提前预置上传0长度数据包以防主机提前进入状态阶段
	mov	_UEP0_T_LEN,#0x00
;	main.c:482: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;//默认数据包是DATA1,返回应答ACK
	mov	_UEP0_CTRL,#0xc0
;	main.c:484: break;
	ljmp	00214$
;	main.c:485: case UIS_TOKEN_IN | 0:													  //endpoint0 IN
00200$:
;	main.c:486: switch(SetupReq)
	mov	a,#0x05
	cjne	a,_SetupReq,00694$
	sjmp	00202$
00694$:
	mov	a,#0x06
	cjne	a,_SetupReq,00203$
;	main.c:489: len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;								 //本次传输长度
	mov	r6,_SetupLen
	mov	r7,(_SetupLen + 1)
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	subb	a,#0x00
	mov	_DeviceInterrupt_sloc0_1_0,c
	jc	00231$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00232$
00231$:
	mov	r6,_SetupLen
	mov	r7,(_SetupLen + 1)
00232$:
;	main.c:490: memcpy( Ep0Buffer, pDescr, len );								   //加载上传数据
	mov	___memcpy_PARM_2,_pDescr
	mov	(___memcpy_PARM_2 + 1),(_pDescr + 1)
	mov	(___memcpy_PARM_2 + 2),(_pDescr + 2)
	mov	___memcpy_PARM_3,r6
	mov	(___memcpy_PARM_3 + 1),r7
	mov	dptr,#_Ep0Buffer
	mov	b, #0x00
	push	ar7
	push	ar6
	lcall	___memcpy
	pop	ar6
	pop	ar7
;	main.c:491: SetupLen -= len;
	mov	a,_SetupLen
	clr	c
	subb	a,r6
	mov	_SetupLen,a
	mov	a,(_SetupLen + 1)
	subb	a,r7
	mov	(_SetupLen + 1),a
;	main.c:492: pDescr += len;
	mov	a,r6
	add	a, _pDescr
	mov	_pDescr,a
	mov	a,r7
	addc	a, (_pDescr + 1)
	mov	(_pDescr + 1),a
;	main.c:493: UEP0_T_LEN = len;
	mov	_UEP0_T_LEN,r6
;	main.c:494: UEP0_CTRL ^= bUEP_T_TOG;											 //同步标志位翻转
	xrl	_UEP0_CTRL,#0x40
;	main.c:495: break;
;	main.c:496: case USB_SET_ADDRESS:
	sjmp	00214$
00202$:
;	main.c:497: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | SetupLen;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	mov	a,_SetupLen
	mov	r6,a
	orl	a,r7
	mov	_USB_DEV_AD,a
;	main.c:498: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	main.c:499: break;
;	main.c:500: default:
	sjmp	00214$
00203$:
;	main.c:501: UEP0_T_LEN = 0;													  //状态阶段完成中断或者是强制上传0长度数据包结束控制传输
	mov	_UEP0_T_LEN,#0x00
;	main.c:502: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	main.c:505: break;
;	main.c:506: case UIS_TOKEN_OUT | 0:  // endpoint0 OUT
	sjmp	00214$
00205$:
;	main.c:507: if(SetupReq == 0x09)  // SET_REPORT (HID Output Report)
	mov	a,#0x09
	cjne	a,_SetupReq,00211$
;	main.c:509: if( U_TOG_OK )
	jnb	_U_TOG_OK,00214$
;	main.c:515: if(USB_RX_LEN >= 4) {
	mov	a,#0x100 - 0x04
	add	a,_USB_RX_LEN
	jnc	00207$
;	main.c:516: uint8_t r = Ep0Buffer[1];
	mov	dptr,#(_Ep0Buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
;	main.c:517: uint8_t g = Ep0Buffer[2];
	mov	dptr,#(_Ep0Buffer + 0x0002)
	movx	a,@dptr
	mov	_sk6812_send_rgbw_PARM_2,a
;	main.c:518: uint8_t b = Ep0Buffer[3];
	mov	dptr,#(_Ep0Buffer + 0x0003)
	movx	a,@dptr
	mov	_sk6812_send_rgbw_PARM_3,a
;	main.c:519: sk6812_send_rgbw(r, g, b, 0);  // W=0 (RGB LED only)
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, r7
	lcall	_sk6812_send_rgbw
00207$:
;	main.c:521: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	main.c:522: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;
	mov	_UEP0_CTRL,_UEP0_CTRL
	sjmp	00214$
00211$:
;	main.c:537: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	main.c:538: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;  //状态阶段，对IN响应NAK
	mov	_UEP0_CTRL,_UEP0_CTRL
;	main.c:546: }
00214$:
;	main.c:547: UIF_TRANSFER = 0;														   //写0清空中断
;	assignBit
	clr	_UIF_TRANSFER
00216$:
;	main.c:549: if(UIF_BUS_RST)																 //设备模式USB总线复位中断
	jnb	_UIF_BUS_RST,00218$
;	main.c:554: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
	mov	_UEP0_CTRL,#0x02
;	main.c:555: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;
	mov	_UEP1_CTRL,#0x12
;	main.c:556: UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
	mov	_UEP2_CTRL,#0x12
;	main.c:557: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	main.c:558: UIF_SUSPEND = 0;
;	assignBit
	clr	_UIF_SUSPEND
;	main.c:559: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	main.c:560: UIF_BUS_RST = 0;															 //清中断标志
;	assignBit
	clr	_UIF_BUS_RST
;	main.c:561: Midi_Input_Point = 0;   //循环缓冲区输入指针
	mov	r0,#_Midi_Input_Point
	mov	@r0,#0x00
;	main.c:562: Midi_Output_Point = 0;  //循环缓冲区读出指针
	mov	r0,#_Midi_Output_Point
	mov	@r0,#0x00
;	main.c:563: MidiByteCount = 0;	  //当前缓冲区剩余待取字节数
	mov	r0,#_MidiByteCount
	mov	@r0,#0x00
;	main.c:564: USBByteCount = 0;	   //USB端点收到的长度
	mov	r0,#_USBByteCount
	mov	@r0,#0x00
;	main.c:565: UsbConfig = 0;		  //清除配置值
	mov	_UsbConfig,#0x00
;	main.c:566: UpPoint2_Busy = 0;
	mov	r0,#_UpPoint2_Busy
	mov	@r0,#0x00
00218$:
;	main.c:568: if (UIF_SUSPEND)																 //USB总线挂起/唤醒完成
;	main.c:570: UIF_SUSPEND = 0;
;	assignBit
	jbc	_UIF_SUSPEND,00703$
	sjmp	00225$
00703$:
;	main.c:571: if ( USB_MIS_ST & bUMS_SUSPEND )											 //挂起
	mov	a,_USB_MIS_ST
	mov	r7,a
	jnb	acc.2,00227$
;	main.c:576: while ( XBUS_AUX & bUART0_TX )
00219$:
	mov	a,_XBUS_AUX
	mov	r7,a
	jb	acc.7,00219$
;	main.c:580: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:581: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:582: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD0_LO | bWAK_RXD1_LO;					  //USB或者RXD0/1有信号时可被唤醒
	mov	_WAKE_CTRL,#0xc1
;	main.c:583: PCON |= PD;																 //睡眠
	orl	_PCON,#0x02
;	main.c:584: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:585: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:586: WAKE_CTRL = 0x00;
	mov	_WAKE_CTRL,#0x00
	sjmp	00227$
00225$:
;	main.c:590: USB_INT_FG = 0xFF;															 //清中断标志
	mov	_USB_INT_FG,#0xff
00227$:
;	main.c:593: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	ljmp	sdcc_atomic_maybe_rollback
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i             Allocated with name '_main_i_10000_119'
;r             Allocated to registers r7 
;g             Allocated to registers 
;b             Allocated to registers 
;w             Allocated to registers 
;------------------------------------------------------------
;	main.c:614: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:617: CfgFsys();                   // Configure system clock
	lcall	_CfgFsys
;	main.c:618: mDelaymS(5);                 // Wait for clock to stabilize
	mov	dptr,#0x0005
	lcall	_mDelaymS
;	main.c:621: sk6812_init();
	lcall	_sk6812_init
;	main.c:625: sk6812_send_rgbw(255, 0, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0x00
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0xff
	lcall	_sk6812_send_rgbw
;	main.c:626: mDelaymS(1000);
	mov	dptr,#0x03e8
	lcall	_mDelaymS
;	main.c:627: sk6812_send_rgbw(0, 0, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0x00
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:628: mDelaymS(500);
	mov	dptr,#0x01f4
	lcall	_mDelaymS
;	main.c:631: sk6812_send_rgbw(0, 255, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0xff
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:632: mDelaymS(1000);
	mov	dptr,#0x03e8
	lcall	_mDelaymS
;	main.c:633: sk6812_send_rgbw(0, 0, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0x00
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:634: mDelaymS(500);
	mov	dptr,#0x01f4
	lcall	_mDelaymS
;	main.c:637: sk6812_send_rgbw(0, 0, 255, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0x00
	mov	_sk6812_send_rgbw_PARM_3,#0xff
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:638: mDelaymS(1000);
	mov	dptr,#0x03e8
	lcall	_mDelaymS
;	main.c:639: sk6812_send_rgbw(0, 0, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0x00
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:640: mDelaymS(500);
	mov	dptr,#0x01f4
	lcall	_mDelaymS
;	main.c:643: USBDeviceCfg();
	lcall	_USBDeviceCfg
;	main.c:644: USBDeviceEndPointCfg();
	lcall	_USBDeviceEndPointCfg
;	main.c:645: USBDeviceIntCfg();
	lcall	_USBDeviceIntCfg
;	main.c:646: UEP0_T_LEN = 0;
	mov	_UEP0_T_LEN,#0x00
;	main.c:647: UEP1_T_LEN = 0;
	mov	_UEP1_T_LEN,#0x00
;	main.c:648: UEP2_T_LEN = 0;
	mov	_UEP2_T_LEN,#0x00
;	main.c:651: sk6812_send_rgbw(0, 255, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0xff
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:652: mDelaymS(200);
	mov	dptr,#0x00c8
	lcall	_mDelaymS
;	main.c:653: sk6812_send_rgbw(0, 0, 0, 0);
	mov	_sk6812_send_rgbw_PARM_2,#0x00
	mov	_sk6812_send_rgbw_PARM_3,#0x00
	mov	_sk6812_send_rgbw_PARM_4,#0x00
	mov	dpl, #0x00
	lcall	_sk6812_send_rgbw
;	main.c:655: while(1)
00107$:
;	main.c:658: if(UsbConfig && USBByteCount)
	mov	a,_UsbConfig
	jz	00107$
	mov	r0,#_USBByteCount
	mov	a,@r0
	jz	00107$
;	main.c:662: if(USBByteCount >= 4) {
	mov	r0,#_USBByteCount
	cjne	@r0,#0x04,00137$
00137$:
	jc	00102$
;	main.c:664: uint8_t r = Ep2Buffer[0];
	mov	dptr,#_Ep2Buffer
	movx	a,@dptr
	mov	r7,a
;	main.c:665: uint8_t g = Ep2Buffer[1];
	mov	dptr,#(_Ep2Buffer + 0x0001)
	movx	a,@dptr
	mov	_sk6812_send_rgbw_PARM_2,a
;	main.c:666: uint8_t b = Ep2Buffer[2];
	mov	dptr,#(_Ep2Buffer + 0x0002)
	movx	a,@dptr
	mov	_sk6812_send_rgbw_PARM_3,a
;	main.c:667: uint8_t w = Ep2Buffer[3];
	mov	dptr,#(_Ep2Buffer + 0x0003)
	movx	a,@dptr
	mov	_sk6812_send_rgbw_PARM_4,a
;	main.c:670: sk6812_send_rgbw(r, g, b, w);
	mov	dpl, r7
	lcall	_sk6812_send_rgbw
00102$:
;	main.c:674: USBByteCount = 0;
	mov	r0,#_USBByteCount
	mov	@r0,#0x00
;	main.c:677: UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_R_RES | UEP_R_RES_ACK;
	anl	_UEP2_CTRL,#0xf3
;	main.c:680: }
	sjmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_DevDesc:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xc0	; 192
	.db #0x16	; 22
	.db #0x52	; 82	'R'
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.area CSEG    (CODE)
	.area CONST   (CODE)
_CfgDesc:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x82	; 130
	.db #0x03	; 3
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x01	; 1
	.area CSEG    (CODE)
	.area CONST   (CODE)
_HIDRepDesc:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x09	; 9
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0xc0	; 192
	.area CSEG    (CODE)
	.area CONST   (CODE)
_LangDes:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
	.area CSEG    (CODE)
	.area CONST   (CODE)
_SerDes:
	.db #0x0e	; 14
	.db #0x03	; 3
	.db #0x76	; 118	'v'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.area CSEG    (CODE)
	.area CONST   (CODE)
_Prod_Des:
	.db #0x1e	; 30
	.db #0x03	; 3
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.area CSEG    (CODE)
	.area CONST   (CODE)
_Manuf_Des:
	.db #0x16	; 22
	.db #0x03	; 3
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
