                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Manuf_Des
                                     12 	.globl _Prod_Des
                                     13 	.globl _SerDes
                                     14 	.globl _LangDes
                                     15 	.globl _HIDRepDesc
                                     16 	.globl _CfgDesc
                                     17 	.globl _DevDesc
                                     18 	.globl _main
                                     19 	.globl _DeviceInterrupt
                                     20 	.globl _USBDeviceEndPointCfg
                                     21 	.globl _USBDeviceIntCfg
                                     22 	.globl _USBDeviceCfg
                                     23 	.globl _sk6812_send_rgbw
                                     24 	.globl _sk6812_init
                                     25 	.globl _mDelaymS
                                     26 	.globl _CfgFsys
                                     27 	.globl ___memcpy
                                     28 	.globl _UIF_BUS_RST
                                     29 	.globl _UIF_DETECT
                                     30 	.globl _UIF_TRANSFER
                                     31 	.globl _UIF_SUSPEND
                                     32 	.globl _UIF_HST_SOF
                                     33 	.globl _UIF_FIFO_OV
                                     34 	.globl _U_SIE_FREE
                                     35 	.globl _U_TOG_OK
                                     36 	.globl _U_IS_NAK
                                     37 	.globl _ADC_CHAN0
                                     38 	.globl _ADC_CHAN1
                                     39 	.globl _CMP_CHAN
                                     40 	.globl _ADC_START
                                     41 	.globl _ADC_IF
                                     42 	.globl _CMP_IF
                                     43 	.globl _CMPO
                                     44 	.globl _U1RI
                                     45 	.globl _U1TI
                                     46 	.globl _U1RB8
                                     47 	.globl _U1TB8
                                     48 	.globl _U1REN
                                     49 	.globl _U1SMOD
                                     50 	.globl _U1SM0
                                     51 	.globl _S0_R_FIFO
                                     52 	.globl _S0_T_FIFO
                                     53 	.globl _S0_FREE
                                     54 	.globl _S0_IF_BYTE
                                     55 	.globl _S0_IF_FIRST
                                     56 	.globl _S0_IF_OV
                                     57 	.globl _S0_FST_ACT
                                     58 	.globl _CP_RL2
                                     59 	.globl _C_T2
                                     60 	.globl _TR2
                                     61 	.globl _EXEN2
                                     62 	.globl _TCLK
                                     63 	.globl _RCLK
                                     64 	.globl _EXF2
                                     65 	.globl _CAP1F
                                     66 	.globl _TF2
                                     67 	.globl _RI
                                     68 	.globl _TI
                                     69 	.globl _RB8
                                     70 	.globl _TB8
                                     71 	.globl _REN
                                     72 	.globl _SM2
                                     73 	.globl _SM1
                                     74 	.globl _SM0
                                     75 	.globl _IT0
                                     76 	.globl _IE0
                                     77 	.globl _IT1
                                     78 	.globl _IE1
                                     79 	.globl _TR0
                                     80 	.globl _TF0
                                     81 	.globl _TR1
                                     82 	.globl _TF1
                                     83 	.globl _RXD
                                     84 	.globl _PWM1_
                                     85 	.globl _TXD
                                     86 	.globl _PWM2_
                                     87 	.globl _AIN3
                                     88 	.globl _VBUS1
                                     89 	.globl _INT0
                                     90 	.globl _TXD1_
                                     91 	.globl _INT1
                                     92 	.globl _T0
                                     93 	.globl _RXD1_
                                     94 	.globl _PWM2
                                     95 	.globl _T1
                                     96 	.globl _UDP
                                     97 	.globl _UDM
                                     98 	.globl _TIN0
                                     99 	.globl _CAP1
                                    100 	.globl _T2
                                    101 	.globl _AIN0
                                    102 	.globl _VBUS2
                                    103 	.globl _TIN1
                                    104 	.globl _CAP2
                                    105 	.globl _T2EX
                                    106 	.globl _RXD_
                                    107 	.globl _TXD_
                                    108 	.globl _AIN1
                                    109 	.globl _UCC1
                                    110 	.globl _TIN2
                                    111 	.globl _SCS
                                    112 	.globl _CAP1_
                                    113 	.globl _T2_
                                    114 	.globl _AIN2
                                    115 	.globl _UCC2
                                    116 	.globl _TIN3
                                    117 	.globl _PWM1
                                    118 	.globl _MOSI
                                    119 	.globl _TIN4
                                    120 	.globl _RXD1
                                    121 	.globl _MISO
                                    122 	.globl _TIN5
                                    123 	.globl _TXD1
                                    124 	.globl _SCK
                                    125 	.globl _IE_SPI0
                                    126 	.globl _IE_TKEY
                                    127 	.globl _IE_USB
                                    128 	.globl _IE_ADC
                                    129 	.globl _IE_UART1
                                    130 	.globl _IE_PWMX
                                    131 	.globl _IE_GPIO
                                    132 	.globl _IE_WDOG
                                    133 	.globl _PX0
                                    134 	.globl _PT0
                                    135 	.globl _PX1
                                    136 	.globl _PT1
                                    137 	.globl _PS
                                    138 	.globl _PT2
                                    139 	.globl _PL_FLAG
                                    140 	.globl _PH_FLAG
                                    141 	.globl _EX0
                                    142 	.globl _ET0
                                    143 	.globl _EX1
                                    144 	.globl _ET1
                                    145 	.globl _ES
                                    146 	.globl _ET2
                                    147 	.globl _E_DIS
                                    148 	.globl _EA
                                    149 	.globl _P
                                    150 	.globl _F1
                                    151 	.globl _OV
                                    152 	.globl _RS0
                                    153 	.globl _RS1
                                    154 	.globl _F0
                                    155 	.globl _AC
                                    156 	.globl _CY
                                    157 	.globl _UEP1_DMA_H
                                    158 	.globl _UEP1_DMA_L
                                    159 	.globl _UEP1_DMA
                                    160 	.globl _UEP0_DMA_H
                                    161 	.globl _UEP0_DMA_L
                                    162 	.globl _UEP0_DMA
                                    163 	.globl _UEP2_3_MOD
                                    164 	.globl _UEP4_1_MOD
                                    165 	.globl _UEP3_DMA_H
                                    166 	.globl _UEP3_DMA_L
                                    167 	.globl _UEP3_DMA
                                    168 	.globl _UEP2_DMA_H
                                    169 	.globl _UEP2_DMA_L
                                    170 	.globl _UEP2_DMA
                                    171 	.globl _USB_DEV_AD
                                    172 	.globl _USB_CTRL
                                    173 	.globl _USB_INT_EN
                                    174 	.globl _UEP4_T_LEN
                                    175 	.globl _UEP4_CTRL
                                    176 	.globl _UEP0_T_LEN
                                    177 	.globl _UEP0_CTRL
                                    178 	.globl _USB_RX_LEN
                                    179 	.globl _USB_MIS_ST
                                    180 	.globl _USB_INT_ST
                                    181 	.globl _USB_INT_FG
                                    182 	.globl _UEP3_T_LEN
                                    183 	.globl _UEP3_CTRL
                                    184 	.globl _UEP2_T_LEN
                                    185 	.globl _UEP2_CTRL
                                    186 	.globl _UEP1_T_LEN
                                    187 	.globl _UEP1_CTRL
                                    188 	.globl _UDEV_CTRL
                                    189 	.globl _USB_C_CTRL
                                    190 	.globl _TKEY_DATH
                                    191 	.globl _TKEY_DATL
                                    192 	.globl _TKEY_DAT
                                    193 	.globl _TKEY_CTRL
                                    194 	.globl _ADC_DATA
                                    195 	.globl _ADC_CFG
                                    196 	.globl _ADC_CTRL
                                    197 	.globl _SBAUD1
                                    198 	.globl _SBUF1
                                    199 	.globl _SCON1
                                    200 	.globl _SPI0_SETUP
                                    201 	.globl _SPI0_CK_SE
                                    202 	.globl _SPI0_CTRL
                                    203 	.globl _SPI0_DATA
                                    204 	.globl _SPI0_STAT
                                    205 	.globl _PWM_CK_SE
                                    206 	.globl _PWM_CTRL
                                    207 	.globl _PWM_DATA1
                                    208 	.globl _PWM_DATA2
                                    209 	.globl _T2CAP1H
                                    210 	.globl _T2CAP1L
                                    211 	.globl _T2CAP1
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _T2COUNT
                                    215 	.globl _RCAP2H
                                    216 	.globl _RCAP2L
                                    217 	.globl _RCAP2
                                    218 	.globl _T2MOD
                                    219 	.globl _T2CON
                                    220 	.globl _SBUF
                                    221 	.globl _SCON
                                    222 	.globl _TH1
                                    223 	.globl _TH0
                                    224 	.globl _TL1
                                    225 	.globl _TL0
                                    226 	.globl _TMOD
                                    227 	.globl _TCON
                                    228 	.globl _XBUS_AUX
                                    229 	.globl _PIN_FUNC
                                    230 	.globl _P3_DIR_PU
                                    231 	.globl _P3_MOD_OC
                                    232 	.globl _P3
                                    233 	.globl _P2
                                    234 	.globl _P1_DIR_PU
                                    235 	.globl _P1_MOD_OC
                                    236 	.globl _P1
                                    237 	.globl _ROM_CTRL
                                    238 	.globl _ROM_DATA_H
                                    239 	.globl _ROM_DATA_L
                                    240 	.globl _ROM_DATA
                                    241 	.globl _ROM_ADDR_H
                                    242 	.globl _ROM_ADDR_L
                                    243 	.globl _ROM_ADDR
                                    244 	.globl _GPIO_IE
                                    245 	.globl _IP_EX
                                    246 	.globl _IE_EX
                                    247 	.globl _IP
                                    248 	.globl _IE
                                    249 	.globl _WDOG_COUNT
                                    250 	.globl _RESET_KEEP
                                    251 	.globl _WAKE_CTRL
                                    252 	.globl _CLOCK_CFG
                                    253 	.globl _PCON
                                    254 	.globl _GLOBAL_CFG
                                    255 	.globl _SAFE_MOD
                                    256 	.globl _DPH
                                    257 	.globl _DPL
                                    258 	.globl _SP
                                    259 	.globl _B
                                    260 	.globl _ACC
                                    261 	.globl _PSW
                                    262 	.globl _Ep2Buffer
                                    263 	.globl _Ep1Buffer
                                    264 	.globl _Ep0Buffer
                                    265 	.globl _UpPoint2_Busy
                                    266 	.globl _USBBufOutPoint
                                    267 	.globl _USBByteCount
                                    268 	.globl _MidiByteCount
                                    269 	.globl _Midi_Output_Point
                                    270 	.globl _Midi_Input_Point
                                    271 	.globl _Receive_Midi_Buf
                                    272 	.globl _SetupReqBuf
                                    273 	.globl _pDescr
                                    274 	.globl _UsbConfig
                                    275 	.globl _Count
                                    276 	.globl _SetupReq
                                    277 	.globl _SetupLen
                                    278 ;--------------------------------------------------------
                                    279 ; special function registers
                                    280 ;--------------------------------------------------------
                                    281 	.area RSEG    (ABS,DATA)
      000000                        282 	.org 0x0000
                           0000D0   283 _PSW	=	0x00d0
                           0000E0   284 _ACC	=	0x00e0
                           0000F0   285 _B	=	0x00f0
                           000081   286 _SP	=	0x0081
                           000082   287 _DPL	=	0x0082
                           000083   288 _DPH	=	0x0083
                           0000A1   289 _SAFE_MOD	=	0x00a1
                           0000B1   290 _GLOBAL_CFG	=	0x00b1
                           000087   291 _PCON	=	0x0087
                           0000B9   292 _CLOCK_CFG	=	0x00b9
                           0000A9   293 _WAKE_CTRL	=	0x00a9
                           0000FE   294 _RESET_KEEP	=	0x00fe
                           0000FF   295 _WDOG_COUNT	=	0x00ff
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           0000E8   298 _IE_EX	=	0x00e8
                           0000E9   299 _IP_EX	=	0x00e9
                           0000C7   300 _GPIO_IE	=	0x00c7
                           008584   301 _ROM_ADDR	=	0x8584
                           000084   302 _ROM_ADDR_L	=	0x0084
                           000085   303 _ROM_ADDR_H	=	0x0085
                           008F8E   304 _ROM_DATA	=	0x8f8e
                           00008E   305 _ROM_DATA_L	=	0x008e
                           00008F   306 _ROM_DATA_H	=	0x008f
                           000086   307 _ROM_CTRL	=	0x0086
                           000090   308 _P1	=	0x0090
                           000092   309 _P1_MOD_OC	=	0x0092
                           000093   310 _P1_DIR_PU	=	0x0093
                           0000A0   311 _P2	=	0x00a0
                           0000B0   312 _P3	=	0x00b0
                           000096   313 _P3_MOD_OC	=	0x0096
                           000097   314 _P3_DIR_PU	=	0x0097
                           0000C6   315 _PIN_FUNC	=	0x00c6
                           0000A2   316 _XBUS_AUX	=	0x00a2
                           000088   317 _TCON	=	0x0088
                           000089   318 _TMOD	=	0x0089
                           00008A   319 _TL0	=	0x008a
                           00008B   320 _TL1	=	0x008b
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           000098   323 _SCON	=	0x0098
                           000099   324 _SBUF	=	0x0099
                           0000C8   325 _T2CON	=	0x00c8
                           0000C9   326 _T2MOD	=	0x00c9
                           00CBCA   327 _RCAP2	=	0xcbca
                           0000CA   328 _RCAP2L	=	0x00ca
                           0000CB   329 _RCAP2H	=	0x00cb
                           00CDCC   330 _T2COUNT	=	0xcdcc
                           0000CC   331 _TL2	=	0x00cc
                           0000CD   332 _TH2	=	0x00cd
                           00CFCE   333 _T2CAP1	=	0xcfce
                           0000CE   334 _T2CAP1L	=	0x00ce
                           0000CF   335 _T2CAP1H	=	0x00cf
                           00009B   336 _PWM_DATA2	=	0x009b
                           00009C   337 _PWM_DATA1	=	0x009c
                           00009D   338 _PWM_CTRL	=	0x009d
                           00009E   339 _PWM_CK_SE	=	0x009e
                           0000F8   340 _SPI0_STAT	=	0x00f8
                           0000F9   341 _SPI0_DATA	=	0x00f9
                           0000FA   342 _SPI0_CTRL	=	0x00fa
                           0000FB   343 _SPI0_CK_SE	=	0x00fb
                           0000FC   344 _SPI0_SETUP	=	0x00fc
                           0000C0   345 _SCON1	=	0x00c0
                           0000C1   346 _SBUF1	=	0x00c1
                           0000C2   347 _SBAUD1	=	0x00c2
                           000080   348 _ADC_CTRL	=	0x0080
                           00009A   349 _ADC_CFG	=	0x009a
                           00009F   350 _ADC_DATA	=	0x009f
                           0000C3   351 _TKEY_CTRL	=	0x00c3
                           00C5C4   352 _TKEY_DAT	=	0xc5c4
                           0000C4   353 _TKEY_DATL	=	0x00c4
                           0000C5   354 _TKEY_DATH	=	0x00c5
                           000091   355 _USB_C_CTRL	=	0x0091
                           0000D1   356 _UDEV_CTRL	=	0x00d1
                           0000D2   357 _UEP1_CTRL	=	0x00d2
                           0000D3   358 _UEP1_T_LEN	=	0x00d3
                           0000D4   359 _UEP2_CTRL	=	0x00d4
                           0000D5   360 _UEP2_T_LEN	=	0x00d5
                           0000D6   361 _UEP3_CTRL	=	0x00d6
                           0000D7   362 _UEP3_T_LEN	=	0x00d7
                           0000D8   363 _USB_INT_FG	=	0x00d8
                           0000D9   364 _USB_INT_ST	=	0x00d9
                           0000DA   365 _USB_MIS_ST	=	0x00da
                           0000DB   366 _USB_RX_LEN	=	0x00db
                           0000DC   367 _UEP0_CTRL	=	0x00dc
                           0000DD   368 _UEP0_T_LEN	=	0x00dd
                           0000DE   369 _UEP4_CTRL	=	0x00de
                           0000DF   370 _UEP4_T_LEN	=	0x00df
                           0000E1   371 _USB_INT_EN	=	0x00e1
                           0000E2   372 _USB_CTRL	=	0x00e2
                           0000E3   373 _USB_DEV_AD	=	0x00e3
                           00E5E4   374 _UEP2_DMA	=	0xe5e4
                           0000E4   375 _UEP2_DMA_L	=	0x00e4
                           0000E5   376 _UEP2_DMA_H	=	0x00e5
                           00E7E6   377 _UEP3_DMA	=	0xe7e6
                           0000E6   378 _UEP3_DMA_L	=	0x00e6
                           0000E7   379 _UEP3_DMA_H	=	0x00e7
                           0000EA   380 _UEP4_1_MOD	=	0x00ea
                           0000EB   381 _UEP2_3_MOD	=	0x00eb
                           00EDEC   382 _UEP0_DMA	=	0xedec
                           0000EC   383 _UEP0_DMA_L	=	0x00ec
                           0000ED   384 _UEP0_DMA_H	=	0x00ed
                           00EFEE   385 _UEP1_DMA	=	0xefee
                           0000EE   386 _UEP1_DMA_L	=	0x00ee
                           0000EF   387 _UEP1_DMA_H	=	0x00ef
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000D7   393 _CY	=	0x00d7
                           0000D6   394 _AC	=	0x00d6
                           0000D5   395 _F0	=	0x00d5
                           0000D4   396 _RS1	=	0x00d4
                           0000D3   397 _RS0	=	0x00d3
                           0000D2   398 _OV	=	0x00d2
                           0000D1   399 _F1	=	0x00d1
                           0000D0   400 _P	=	0x00d0
                           0000AF   401 _EA	=	0x00af
                           0000AE   402 _E_DIS	=	0x00ae
                           0000AD   403 _ET2	=	0x00ad
                           0000AC   404 _ES	=	0x00ac
                           0000AB   405 _ET1	=	0x00ab
                           0000AA   406 _EX1	=	0x00aa
                           0000A9   407 _ET0	=	0x00a9
                           0000A8   408 _EX0	=	0x00a8
                           0000BF   409 _PH_FLAG	=	0x00bf
                           0000BE   410 _PL_FLAG	=	0x00be
                           0000BD   411 _PT2	=	0x00bd
                           0000BC   412 _PS	=	0x00bc
                           0000BB   413 _PT1	=	0x00bb
                           0000BA   414 _PX1	=	0x00ba
                           0000B9   415 _PT0	=	0x00b9
                           0000B8   416 _PX0	=	0x00b8
                           0000EF   417 _IE_WDOG	=	0x00ef
                           0000EE   418 _IE_GPIO	=	0x00ee
                           0000ED   419 _IE_PWMX	=	0x00ed
                           0000EC   420 _IE_UART1	=	0x00ec
                           0000EB   421 _IE_ADC	=	0x00eb
                           0000EA   422 _IE_USB	=	0x00ea
                           0000E9   423 _IE_TKEY	=	0x00e9
                           0000E8   424 _IE_SPI0	=	0x00e8
                           000097   425 _SCK	=	0x0097
                           000097   426 _TXD1	=	0x0097
                           000097   427 _TIN5	=	0x0097
                           000096   428 _MISO	=	0x0096
                           000096   429 _RXD1	=	0x0096
                           000096   430 _TIN4	=	0x0096
                           000095   431 _MOSI	=	0x0095
                           000095   432 _PWM1	=	0x0095
                           000095   433 _TIN3	=	0x0095
                           000095   434 _UCC2	=	0x0095
                           000095   435 _AIN2	=	0x0095
                           000094   436 _T2_	=	0x0094
                           000094   437 _CAP1_	=	0x0094
                           000094   438 _SCS	=	0x0094
                           000094   439 _TIN2	=	0x0094
                           000094   440 _UCC1	=	0x0094
                           000094   441 _AIN1	=	0x0094
                           000093   442 _TXD_	=	0x0093
                           000092   443 _RXD_	=	0x0092
                           000091   444 _T2EX	=	0x0091
                           000091   445 _CAP2	=	0x0091
                           000091   446 _TIN1	=	0x0091
                           000091   447 _VBUS2	=	0x0091
                           000091   448 _AIN0	=	0x0091
                           000090   449 _T2	=	0x0090
                           000090   450 _CAP1	=	0x0090
                           000090   451 _TIN0	=	0x0090
                           0000B7   452 _UDM	=	0x00b7
                           0000B6   453 _UDP	=	0x00b6
                           0000B5   454 _T1	=	0x00b5
                           0000B4   455 _PWM2	=	0x00b4
                           0000B4   456 _RXD1_	=	0x00b4
                           0000B4   457 _T0	=	0x00b4
                           0000B3   458 _INT1	=	0x00b3
                           0000B2   459 _TXD1_	=	0x00b2
                           0000B2   460 _INT0	=	0x00b2
                           0000B2   461 _VBUS1	=	0x00b2
                           0000B2   462 _AIN3	=	0x00b2
                           0000B1   463 _PWM2_	=	0x00b1
                           0000B1   464 _TXD	=	0x00b1
                           0000B0   465 _PWM1_	=	0x00b0
                           0000B0   466 _RXD	=	0x00b0
                           00008F   467 _TF1	=	0x008f
                           00008E   468 _TR1	=	0x008e
                           00008D   469 _TF0	=	0x008d
                           00008C   470 _TR0	=	0x008c
                           00008B   471 _IE1	=	0x008b
                           00008A   472 _IT1	=	0x008a
                           000089   473 _IE0	=	0x0089
                           000088   474 _IT0	=	0x0088
                           00009F   475 _SM0	=	0x009f
                           00009E   476 _SM1	=	0x009e
                           00009D   477 _SM2	=	0x009d
                           00009C   478 _REN	=	0x009c
                           00009B   479 _TB8	=	0x009b
                           00009A   480 _RB8	=	0x009a
                           000099   481 _TI	=	0x0099
                           000098   482 _RI	=	0x0098
                           0000CF   483 _TF2	=	0x00cf
                           0000CF   484 _CAP1F	=	0x00cf
                           0000CE   485 _EXF2	=	0x00ce
                           0000CD   486 _RCLK	=	0x00cd
                           0000CC   487 _TCLK	=	0x00cc
                           0000CB   488 _EXEN2	=	0x00cb
                           0000CA   489 _TR2	=	0x00ca
                           0000C9   490 _C_T2	=	0x00c9
                           0000C8   491 _CP_RL2	=	0x00c8
                           0000FF   492 _S0_FST_ACT	=	0x00ff
                           0000FE   493 _S0_IF_OV	=	0x00fe
                           0000FD   494 _S0_IF_FIRST	=	0x00fd
                           0000FC   495 _S0_IF_BYTE	=	0x00fc
                           0000FB   496 _S0_FREE	=	0x00fb
                           0000FA   497 _S0_T_FIFO	=	0x00fa
                           0000F8   498 _S0_R_FIFO	=	0x00f8
                           0000C7   499 _U1SM0	=	0x00c7
                           0000C5   500 _U1SMOD	=	0x00c5
                           0000C4   501 _U1REN	=	0x00c4
                           0000C3   502 _U1TB8	=	0x00c3
                           0000C2   503 _U1RB8	=	0x00c2
                           0000C1   504 _U1TI	=	0x00c1
                           0000C0   505 _U1RI	=	0x00c0
                           000087   506 _CMPO	=	0x0087
                           000086   507 _CMP_IF	=	0x0086
                           000085   508 _ADC_IF	=	0x0085
                           000084   509 _ADC_START	=	0x0084
                           000083   510 _CMP_CHAN	=	0x0083
                           000081   511 _ADC_CHAN1	=	0x0081
                           000080   512 _ADC_CHAN0	=	0x0080
                           0000DF   513 _U_IS_NAK	=	0x00df
                           0000DE   514 _U_TOG_OK	=	0x00de
                           0000DD   515 _U_SIE_FREE	=	0x00dd
                           0000DC   516 _UIF_FIFO_OV	=	0x00dc
                           0000DB   517 _UIF_HST_SOF	=	0x00db
                           0000DA   518 _UIF_SUSPEND	=	0x00da
                           0000D9   519 _UIF_TRANSFER	=	0x00d9
                           0000D8   520 _UIF_DETECT	=	0x00d8
                           0000D8   521 _UIF_BUS_RST	=	0x00d8
                                    522 ;--------------------------------------------------------
                                    523 ; overlayable register banks
                                    524 ;--------------------------------------------------------
                                    525 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        526 	.ds 8
                                    527 ;--------------------------------------------------------
                                    528 ; overlayable bit register bank
                                    529 ;--------------------------------------------------------
                                    530 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        531 bits:
      000021                        532 	.ds 1
                           008000   533 	b0 = bits[0]
                           008100   534 	b1 = bits[1]
                           008200   535 	b2 = bits[2]
                           008300   536 	b3 = bits[3]
                           008400   537 	b4 = bits[4]
                           008500   538 	b5 = bits[5]
                           008600   539 	b6 = bits[6]
                           008700   540 	b7 = bits[7]
                                    541 ;--------------------------------------------------------
                                    542 ; internal ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area DSEG    (DATA)
      000008                        545 _SetupLen::
      000008                        546 	.ds 2
      00000A                        547 _SetupReq::
      00000A                        548 	.ds 1
      00000B                        549 _Count::
      00000B                        550 	.ds 1
      00000C                        551 _UsbConfig::
      00000C                        552 	.ds 1
      00000D                        553 _pDescr::
      00000D                        554 	.ds 3
      000010                        555 _SetupReqBuf::
      000010                        556 	.ds 8
                                    557 ;--------------------------------------------------------
                                    558 ; overlayable items in internal ram
                                    559 ;--------------------------------------------------------
                                    560 ;--------------------------------------------------------
                                    561 ; Stack segment in internal ram
                                    562 ;--------------------------------------------------------
                                    563 	.area SSEG
      000073                        564 __start__stack:
      000073                        565 	.ds	1
                                    566 
                                    567 ;--------------------------------------------------------
                                    568 ; indirectly addressable internal ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area ISEG    (DATA)
      00002D                        571 _Receive_Midi_Buf::
      00002D                        572 	.ds 64
      00006D                        573 _Midi_Input_Point::
      00006D                        574 	.ds 1
      00006E                        575 _Midi_Output_Point::
      00006E                        576 	.ds 1
      00006F                        577 _MidiByteCount::
      00006F                        578 	.ds 1
      000070                        579 _USBByteCount::
      000070                        580 	.ds 1
      000071                        581 _USBBufOutPoint::
      000071                        582 	.ds 1
      000072                        583 _UpPoint2_Busy::
      000072                        584 	.ds 1
                                    585 ;--------------------------------------------------------
                                    586 ; absolute internal ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area IABS    (ABS,DATA)
                                    589 	.area IABS    (ABS,DATA)
                                    590 ;--------------------------------------------------------
                                    591 ; bit data
                                    592 ;--------------------------------------------------------
                                    593 	.area BSEG    (BIT)
      000000                        594 _DeviceInterrupt_sloc0_1_0:
      000000                        595 	.ds 1
                                    596 ;--------------------------------------------------------
                                    597 ; paged external ram data
                                    598 ;--------------------------------------------------------
                                    599 	.area PSEG    (PAG,XDATA)
                                    600 ;--------------------------------------------------------
                                    601 ; uninitialized external ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area XSEG    (XDATA)
                           000000   604 _Ep0Buffer	=	0x0000
                           000040   605 _Ep1Buffer	=	0x0040
                           000080   606 _Ep2Buffer	=	0x0080
                                    607 ;--------------------------------------------------------
                                    608 ; absolute external ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area XABS    (ABS,XDATA)
                                    611 ;--------------------------------------------------------
                                    612 ; initialized external ram data
                                    613 ;--------------------------------------------------------
                                    614 	.area XISEG   (XDATA)
                                    615 	.area HOME    (CODE)
                                    616 	.area GSINIT0 (CODE)
                                    617 	.area GSINIT1 (CODE)
                                    618 	.area GSINIT2 (CODE)
                                    619 	.area GSINIT3 (CODE)
                                    620 	.area GSINIT4 (CODE)
                                    621 	.area GSINIT5 (CODE)
                                    622 	.area GSINIT  (CODE)
                                    623 	.area GSFINAL (CODE)
                                    624 	.area CSEG    (CODE)
                                    625 ;--------------------------------------------------------
                                    626 ; interrupt vector
                                    627 ;--------------------------------------------------------
                                    628 	.area HOME    (CODE)
      000000                        629 __interrupt_vect:
      000000 02 00 B6         [24]  630 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  631 	reti
      000004                        632 	.ds	7
      00000B 32               [24]  633 	reti
      00000C                        634 	.ds	7
      000013 32               [24]  635 	reti
      000014                        636 	.ds	7
      00001B 32               [24]  637 	reti
      00001C                        638 	.ds	7
      000023 32               [24]  639 	reti
      000024                        640 	.ds	7
      00002B 32               [24]  641 	reti
      00002C                        642 	.ds	7
      000033 32               [24]  643 	reti
      000034                        644 	.ds	7
      00003B 32               [24]  645 	reti
      00003C                        646 	.ds	7
      000043 02 01 7C         [24]  647 	ljmp	_DeviceInterrupt
                                    648 ; restartable atomic support routines
      000046                        649 	.ds	2
      000048                        650 sdcc_atomic_exchange_rollback_start::
      000048 00               [12]  651 	nop
      000049 00               [12]  652 	nop
      00004A                        653 sdcc_atomic_exchange_pdata_impl:
      00004A E2               [24]  654 	movx	a, @r0
      00004B FB               [12]  655 	mov	r3, a
      00004C EA               [12]  656 	mov	a, r2
      00004D F2               [24]  657 	movx	@r0, a
      00004E 80 2C            [24]  658 	sjmp	sdcc_atomic_exchange_exit
      000050 00               [12]  659 	nop
      000051 00               [12]  660 	nop
      000052                        661 sdcc_atomic_exchange_xdata_impl:
      000052 E0               [24]  662 	movx	a, @dptr
      000053 FB               [12]  663 	mov	r3, a
      000054 EA               [12]  664 	mov	a, r2
      000055 F0               [24]  665 	movx	@dptr, a
      000056 80 24            [24]  666 	sjmp	sdcc_atomic_exchange_exit
      000058                        667 sdcc_atomic_compare_exchange_idata_impl:
      000058 E6               [12]  668 	mov	a, @r0
      000059 B5 02 02         [24]  669 	cjne	a, ar2, .+#5
      00005C EB               [12]  670 	mov	a, r3
      00005D F6               [12]  671 	mov	@r0, a
      00005E 22               [24]  672 	ret
      00005F 00               [12]  673 	nop
      000060                        674 sdcc_atomic_compare_exchange_pdata_impl:
      000060 E2               [24]  675 	movx	a, @r0
      000061 B5 02 02         [24]  676 	cjne	a, ar2, .+#5
      000064 EB               [12]  677 	mov	a, r3
      000065 F2               [24]  678 	movx	@r0, a
      000066 22               [24]  679 	ret
      000067 00               [12]  680 	nop
      000068                        681 sdcc_atomic_compare_exchange_xdata_impl:
      000068 E0               [24]  682 	movx	a, @dptr
      000069 B5 02 02         [24]  683 	cjne	a, ar2, .+#5
      00006C EB               [12]  684 	mov	a, r3
      00006D F0               [24]  685 	movx	@dptr, a
      00006E 22               [24]  686 	ret
      00006F                        687 sdcc_atomic_exchange_rollback_end::
                                    688 
      00006F                        689 sdcc_atomic_exchange_gptr_impl::
      00006F 30 F6 E0         [24]  690 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000072 A8 82            [24]  691 	mov	r0, dpl
      000074 20 F5 D3         [24]  692 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000077                        693 sdcc_atomic_exchange_idata_impl:
      000077 EA               [12]  694 	mov	a, r2
      000078 C6               [12]  695 	xch	a, @r0
      000079 F5 82            [12]  696 	mov	dpl, a
      00007B 22               [24]  697 	ret
      00007C                        698 sdcc_atomic_exchange_exit:
      00007C 8B 82            [24]  699 	mov	dpl, r3
      00007E 22               [24]  700 	ret
      00007F                        701 sdcc_atomic_compare_exchange_gptr_impl::
      00007F 30 F6 E6         [24]  702 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000082 A8 82            [24]  703 	mov	r0, dpl
      000084 20 F5 D9         [24]  704 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000087 80 CF            [24]  705 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    706 ;--------------------------------------------------------
                                    707 ; global & static initialisations
                                    708 ;--------------------------------------------------------
                                    709 	.area HOME    (CODE)
                                    710 	.area GSINIT  (CODE)
                                    711 	.area GSFINAL (CODE)
                                    712 	.area GSINIT  (CODE)
                                    713 	.globl __sdcc_gsinit_startup
                                    714 	.globl __sdcc_program_startup
                                    715 	.globl __start__stack
                                    716 	.globl __mcs51_genXINIT
                                    717 	.globl __mcs51_genXRAMCLEAR
                                    718 	.globl __mcs51_genRAMCLEAR
                                    719 ;	main.c:120: volatile __idata uint8_t Midi_Input_Point = 0;   //循环缓冲区写入指针，总线复位需要初始化为0
      00010F 78 6D            [12]  720 	mov	r0,#_Midi_Input_Point
      000111 76 00            [12]  721 	mov	@r0,#0x00
                                    722 ;	main.c:121: volatile __idata uint8_t Midi_Output_Point = 0;  //循环缓冲区取出指针，总线复位需要初始化为0
      000113 78 6E            [12]  723 	mov	r0,#_Midi_Output_Point
      000115 76 00            [12]  724 	mov	@r0,#0x00
                                    725 ;	main.c:122: volatile __idata uint8_t MidiByteCount = 0;	  //当前缓冲区剩余待取字节数
      000117 78 6F            [12]  726 	mov	r0,#_MidiByteCount
      000119 76 00            [12]  727 	mov	@r0,#0x00
                                    728 ;	main.c:125: volatile __idata uint8_t USBByteCount = 0;	  //代表USB端点接收到的数据
      00011B 78 70            [12]  729 	mov	r0,#_USBByteCount
      00011D 76 00            [12]  730 	mov	@r0,#0x00
                                    731 ;	main.c:126: volatile __idata uint8_t USBBufOutPoint = 0;	//取数据指针
      00011F 78 71            [12]  732 	mov	r0,#_USBBufOutPoint
      000121 76 00            [12]  733 	mov	@r0,#0x00
                                    734 ;	main.c:128: volatile __idata uint8_t UpPoint2_Busy  = 0;   //上传端点是否忙标志
      000123 78 72            [12]  735 	mov	r0,#_UpPoint2_Busy
      000125 76 00            [12]  736 	mov	@r0,#0x00
                                    737 	.area GSFINAL (CODE)
      000127 02 00 89         [24]  738 	ljmp	__sdcc_program_startup
                                    739 ;--------------------------------------------------------
                                    740 ; Home
                                    741 ;--------------------------------------------------------
                                    742 	.area HOME    (CODE)
                                    743 	.area HOME    (CODE)
      000089                        744 __sdcc_program_startup:
      000089 02 06 D8         [24]  745 	ljmp	_main
                                    746 ;	return from main will return to caller
                                    747 ;--------------------------------------------------------
                                    748 ; code
                                    749 ;--------------------------------------------------------
                                    750 	.area CSEG    (CODE)
                                    751 ;------------------------------------------------------------
                                    752 ;Allocation info for local variables in function 'USBDeviceCfg'
                                    753 ;------------------------------------------------------------
                                    754 ;	main.c:138: void USBDeviceCfg()
                                    755 ;	-----------------------------------------
                                    756 ;	 function USBDeviceCfg
                                    757 ;	-----------------------------------------
      00012A                        758 _USBDeviceCfg:
                           000007   759 	ar7 = 0x07
                           000006   760 	ar6 = 0x06
                           000005   761 	ar5 = 0x05
                           000004   762 	ar4 = 0x04
                           000003   763 	ar3 = 0x03
                           000002   764 	ar2 = 0x02
                           000001   765 	ar1 = 0x01
                           000000   766 	ar0 = 0x00
                                    767 ;	main.c:140: USB_CTRL = 0x00;														   //清空USB控制寄存器
      00012A 75 E2 00         [24]  768 	mov	_USB_CTRL,#0x00
                                    769 ;	main.c:141: USB_CTRL &= ~bUC_HOST_MODE;												//该位为选择设备模式
      00012D 53 E2 7F         [24]  770 	anl	_USB_CTRL,#0x7f
                                    771 ;	main.c:142: USB_CTRL |=  bUC_DEV_PU_EN | bUC_INT_BUSY | bUC_DMA_EN;					//USB设备和内部上拉使能,在中断期间中断标志未清除前自动返回NAK
      000130 43 E2 29         [24]  772 	orl	_USB_CTRL,#0x29
                                    773 ;	main.c:143: USB_DEV_AD = 0x00;														 //设备地址初始化
      000133 75 E3 00         [24]  774 	mov	_USB_DEV_AD,#0x00
                                    775 ;	main.c:146: USB_CTRL &= ~bUC_LOW_SPEED;
      000136 53 E2 BF         [24]  776 	anl	_USB_CTRL,#0xbf
                                    777 ;	main.c:147: UDEV_CTRL &= ~bUD_LOW_SPEED;											 //选择全速12M模式，默认方式
      000139 53 D1 FB         [24]  778 	anl	_UDEV_CTRL,#0xfb
                                    779 ;	main.c:148: UDEV_CTRL = bUD_PD_DIS;  // 禁止DP/DM下拉电阻
      00013C 75 D1 80         [24]  780 	mov	_UDEV_CTRL,#0x80
                                    781 ;	main.c:149: UDEV_CTRL |= bUD_PORT_EN;												  //使能物理端口
      00013F 43 D1 01         [24]  782 	orl	_UDEV_CTRL,#0x01
                                    783 ;	main.c:150: }
      000142 22               [24]  784 	ret
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'USBDeviceIntCfg'
                                    787 ;------------------------------------------------------------
                                    788 ;	main.c:158: void USBDeviceIntCfg()
                                    789 ;	-----------------------------------------
                                    790 ;	 function USBDeviceIntCfg
                                    791 ;	-----------------------------------------
      000143                        792 _USBDeviceIntCfg:
                                    793 ;	main.c:160: USB_INT_EN |= bUIE_SUSPEND;											   //使能设备挂起中断
      000143 43 E1 04         [24]  794 	orl	_USB_INT_EN,#0x04
                                    795 ;	main.c:161: USB_INT_EN |= bUIE_TRANSFER;											  //使能USB传输完成中断
      000146 43 E1 02         [24]  796 	orl	_USB_INT_EN,#0x02
                                    797 ;	main.c:162: USB_INT_EN |= bUIE_BUS_RST;											   //使能设备模式USB总线复位中断
      000149 43 E1 01         [24]  798 	orl	_USB_INT_EN,#0x01
                                    799 ;	main.c:163: USB_INT_FG |= 0x1F;													   //清中断标志
      00014C 43 D8 1F         [24]  800 	orl	_USB_INT_FG,#0x1f
                                    801 ;	main.c:164: IE_USB = 1;															   //使能USB中断
                                    802 ;	assignBit
      00014F D2 EA            [12]  803 	setb	_IE_USB
                                    804 ;	main.c:165: EA = 1;																   //允许单片机中断
                                    805 ;	assignBit
      000151 D2 AF            [12]  806 	setb	_EA
                                    807 ;	main.c:166: }
      000153 22               [24]  808 	ret
                                    809 ;------------------------------------------------------------
                                    810 ;Allocation info for local variables in function 'USBDeviceEndPointCfg'
                                    811 ;------------------------------------------------------------
                                    812 ;	main.c:174: void USBDeviceEndPointCfg()
                                    813 ;	-----------------------------------------
                                    814 ;	 function USBDeviceEndPointCfg
                                    815 ;	-----------------------------------------
      000154                        816 _USBDeviceEndPointCfg:
                                    817 ;	main.c:176: UEP1_DMA = (uint16_t) Ep1Buffer;													  //端点1 发送数据传输地址
      000154 7E 40            [12]  818 	mov	r6,#_Ep1Buffer
      000156 7F 00            [12]  819 	mov	r7,#(_Ep1Buffer >> 8)
      000158 8E EE            [24]  820 	mov	((_UEP1_DMA >> 0) & 0xFF),r6
      00015A 8F EF            [24]  821 	mov	((_UEP1_DMA >> 8) & 0xFF),r7
                                    822 ;	main.c:177: UEP2_DMA = (uint16_t) Ep2Buffer;													  //端点2 IN数据传输地址
      00015C 7E 80            [12]  823 	mov	r6,#_Ep2Buffer
      00015E 7F 00            [12]  824 	mov	r7,#(_Ep2Buffer >> 8)
      000160 8E E4            [24]  825 	mov	((_UEP2_DMA >> 0) & 0xFF),r6
      000162 8F E5            [24]  826 	mov	((_UEP2_DMA >> 8) & 0xFF),r7
                                    827 ;	main.c:178: UEP2_3_MOD = 0xCC;														 //端点2/3 单缓冲收发使能
      000164 75 EB CC         [24]  828 	mov	_UEP2_3_MOD,#0xcc
                                    829 ;	main.c:179: UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;		//端点2自动翻转同步标志位，IN事务返回NAK，OUT返回ACK
      000167 75 D4 12         [24]  830 	mov	_UEP2_CTRL,#0x12
                                    831 ;	main.c:181: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;				//端点1自动翻转同步标志位，IN事务返回NAK
      00016A 75 D2 12         [24]  832 	mov	_UEP1_CTRL,#0x12
                                    833 ;	main.c:182: UEP0_DMA = (uint16_t) Ep0Buffer;													  //端点0数据传输地址
      00016D 7E 00            [12]  834 	mov	r6,#_Ep0Buffer
      00016F 7F 00            [12]  835 	mov	r7,#(_Ep0Buffer >> 8)
      000171 8E EC            [24]  836 	mov	((_UEP0_DMA >> 0) & 0xFF),r6
      000173 8F ED            [24]  837 	mov	((_UEP0_DMA >> 8) & 0xFF),r7
                                    838 ;	main.c:183: UEP4_1_MOD = 0X40;														 //端点1上传缓冲区；端点0单64字节收发缓冲区
      000175 75 EA 40         [24]  839 	mov	_UEP4_1_MOD,#0x40
                                    840 ;	main.c:184: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;				//手动翻转，OUT事务返回ACK，IN事务返回NAK
      000178 75 DC 02         [24]  841 	mov	_UEP0_CTRL,#0x02
                                    842 ;	main.c:185: }
      00017B 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'DeviceInterrupt'
                                    846 ;------------------------------------------------------------
                                    847 ;len           Allocated to registers r4 r5 
                                    848 ;r             Allocated to registers r7 
                                    849 ;g             Allocated to registers 
                                    850 ;b             Allocated to registers 
                                    851 ;------------------------------------------------------------
                                    852 ;	main.c:209: void DeviceInterrupt(void) __interrupt (INT_NO_USB)					   //USB中断服务程序,使用寄存器组1
                                    853 ;	-----------------------------------------
                                    854 ;	 function DeviceInterrupt
                                    855 ;	-----------------------------------------
      00017C                        856 _DeviceInterrupt:
      00017C C0 21            [24]  857 	push	bits
      00017E C0 E0            [24]  858 	push	acc
      000180 C0 F0            [24]  859 	push	b
      000182 C0 82            [24]  860 	push	dpl
      000184 C0 83            [24]  861 	push	dph
      000186 C0 07            [24]  862 	push	(0+7)
      000188 C0 06            [24]  863 	push	(0+6)
      00018A C0 05            [24]  864 	push	(0+5)
      00018C C0 04            [24]  865 	push	(0+4)
      00018E C0 03            [24]  866 	push	(0+3)
      000190 C0 02            [24]  867 	push	(0+2)
      000192 C0 01            [24]  868 	push	(0+1)
      000194 C0 00            [24]  869 	push	(0+0)
      000196 C0 D0            [24]  870 	push	psw
      000198 75 D0 00         [24]  871 	mov	psw,#0x00
                                    872 ;	main.c:212: if(UIF_TRANSFER)															//USB传输完成标志
      00019B 20 D9 03         [24]  873 	jb	_UIF_TRANSFER,00632$
      00019E 02 06 62         [24]  874 	ljmp	00216$
      0001A1                        875 00632$:
                                    876 ;	main.c:214: switch (USB_INT_ST & (MASK_UIS_TOKEN | MASK_UIS_ENDP))
      0001A1 74 3F            [12]  877 	mov	a,#0x3f
      0001A3 55 D9            [12]  878 	anl	a,_USB_INT_ST
      0001A5 FF               [12]  879 	mov	r7,a
      0001A6 FE               [12]  880 	mov	r6,a
      0001A7 BE 00 03         [24]  881 	cjne	r6,#0x00,00633$
      0001AA 02 06 2B         [24]  882 	ljmp	00205$
      0001AD                        883 00633$:
      0001AD BF 02 02         [24]  884 	cjne	r7,#0x02,00634$
      0001B0 80 38            [24]  885 	sjmp	00103$
      0001B2                        886 00634$:
      0001B2 BF 20 03         [24]  887 	cjne	r7,#0x20,00635$
      0001B5 02 05 B4         [24]  888 	ljmp	00200$
      0001B8                        889 00635$:
      0001B8 BF 21 02         [24]  890 	cjne	r7,#0x21,00636$
      0001BB 80 0D            [24]  891 	sjmp	00101$
      0001BD                        892 00636$:
      0001BD BF 22 02         [24]  893 	cjne	r7,#0x22,00637$
      0001C0 80 16            [24]  894 	sjmp	00102$
      0001C2                        895 00637$:
      0001C2 BF 30 02         [24]  896 	cjne	r7,#0x30,00638$
      0001C5 80 3C            [24]  897 	sjmp	00106$
      0001C7                        898 00638$:
      0001C7 02 06 60         [24]  899 	ljmp	00214$
                                    900 ;	main.c:216: case UIS_TOKEN_IN | 1:												  //endpoint 1# 端点中断上传
      0001CA                        901 00101$:
                                    902 ;	main.c:217: UEP1_T_LEN = 0;
      0001CA 75 D3 00         [24]  903 	mov	_UEP1_T_LEN,#0x00
                                    904 ;	main.c:218: UEP1_CTRL = UEP1_CTRL & ~ MASK_UEP_T_RES | UEP_T_RES_NAK;		   //默认应答NAK
      0001CD 74 FC            [12]  905 	mov	a,#0xfc
      0001CF 55 D2            [12]  906 	anl	a,_UEP1_CTRL
      0001D1 44 02            [12]  907 	orl	a,#0x02
      0001D3 F5 D2            [12]  908 	mov	_UEP1_CTRL,a
                                    909 ;	main.c:219: break;
      0001D5 02 06 60         [24]  910 	ljmp	00214$
                                    911 ;	main.c:220: case UIS_TOKEN_IN | 2:												  //endpoint 2# 端点批量上传
      0001D8                        912 00102$:
                                    913 ;	main.c:222: UEP2_T_LEN = 0;													//预使用发送长度一定要清空
      0001D8 75 D5 00         [24]  914 	mov	_UEP2_T_LEN,#0x00
                                    915 ;	main.c:223: UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_T_RES | UEP_T_RES_NAK;		   //默认应答NAK
      0001DB 74 FC            [12]  916 	mov	a,#0xfc
      0001DD 55 D4            [12]  917 	anl	a,_UEP2_CTRL
      0001DF 44 02            [12]  918 	orl	a,#0x02
      0001E1 F5 D4            [12]  919 	mov	_UEP2_CTRL,a
                                    920 ;	main.c:224: UpPoint2_Busy = 0;												  //清除忙标志
      0001E3 78 72            [12]  921 	mov	r0,#_UpPoint2_Busy
      0001E5 76 00            [12]  922 	mov	@r0,#0x00
                                    923 ;	main.c:226: break;
      0001E7 02 06 60         [24]  924 	ljmp	00214$
                                    925 ;	main.c:227: case UIS_TOKEN_OUT | 2:											 //endpoint 3# 端点批量下传
      0001EA                        926 00103$:
                                    927 ;	main.c:228: if ( U_TOG_OK )													 // 不同步的数据包将丢弃
      0001EA 20 DE 03         [24]  928 	jb	_U_TOG_OK,00639$
      0001ED 02 06 60         [24]  929 	ljmp	00214$
      0001F0                        930 00639$:
                                    931 ;	main.c:230: USBByteCount = USB_RX_LEN;
      0001F0 78 70            [12]  932 	mov	r0,#_USBByteCount
      0001F2 A6 DB            [24]  933 	mov	@r0,_USB_RX_LEN
                                    934 ;	main.c:231: USBBufOutPoint = 0;											 //取数据指针复位
      0001F4 78 71            [12]  935 	mov	r0,#_USBBufOutPoint
      0001F6 76 00            [12]  936 	mov	@r0,#0x00
                                    937 ;	main.c:232: UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_R_RES | UEP_R_RES_NAK;	   //收到一包数据就NAK，主函数处理完，由主函数修改响应方式
      0001F8 74 F3            [12]  938 	mov	a,#0xf3
      0001FA 55 D4            [12]  939 	anl	a,_UEP2_CTRL
      0001FC 44 08            [12]  940 	orl	a,#0x08
      0001FE F5 D4            [12]  941 	mov	_UEP2_CTRL,a
                                    942 ;	main.c:234: break;
      000200 02 06 60         [24]  943 	ljmp	00214$
                                    944 ;	main.c:235: case UIS_TOKEN_SETUP | 0:												//SETUP事务
      000203                        945 00106$:
                                    946 ;	main.c:236: len = USB_RX_LEN;
      000203 AE DB            [24]  947 	mov	r6,_USB_RX_LEN
      000205 7F 00            [12]  948 	mov	r7,#0x00
                                    949 ;	main.c:237: if(len == (sizeof(USB_SETUP_REQ)))
      000207 BE 08 05         [24]  950 	cjne	r6,#0x08,00640$
      00020A BF 00 02         [24]  951 	cjne	r7,#0x00,00640$
      00020D 80 03            [24]  952 	sjmp	00641$
      00020F                        953 00640$:
      00020F 02 05 84         [24]  954 	ljmp	00192$
      000212                        955 00641$:
                                    956 ;	main.c:239: SetupLen = ((uint16_t)UsbSetupBuf->wLengthH<<8) | (UsbSetupBuf->wLengthL);
      000212 90 00 07         [24]  957 	mov	dptr,#(_Ep0Buffer + 0x0007)
      000215 E0               [24]  958 	movx	a,@dptr
      000216 FE               [12]  959 	mov	r6,a
      000217 7F 00            [12]  960 	mov	r7,#0x00
      000219 90 00 06         [24]  961 	mov	dptr,#(_Ep0Buffer + 0x0006)
      00021C E0               [24]  962 	movx	a,@dptr
      00021D 7C 00            [12]  963 	mov	r4,#0x00
      00021F 4F               [12]  964 	orl	a,r7
      000220 F5 08            [12]  965 	mov	_SetupLen,a
      000222 EC               [12]  966 	mov	a,r4
      000223 4E               [12]  967 	orl	a,r6
      000224 F5 09            [12]  968 	mov	(_SetupLen + 1),a
                                    969 ;	main.c:240: len = 0;													  // 默认为成功并且上传0长度
      000226 7E 00            [12]  970 	mov	r6,#0x00
                                    971 ;	main.c:241: SetupReq = UsbSetupBuf->bRequest;
      000228 90 00 01         [24]  972 	mov	dptr,#(_Ep0Buffer + 0x0001)
      00022B E0               [24]  973 	movx	a,@dptr
      00022C F5 0A            [12]  974 	mov	_SetupReq,a
                                    975 ;	main.c:242: if ( ( UsbSetupBuf->bRequestType & USB_REQ_TYP_MASK ) != USB_REQ_TYP_STANDARD )//非标准请求
      00022E 90 00 00         [24]  976 	mov	dptr,#_Ep0Buffer
      000231 E0               [24]  977 	movx	a,@dptr
      000232 FD               [12]  978 	mov	r5,a
      000233 54 60            [12]  979 	anl	a,#0x60
      000235 60 13            [24]  980 	jz	00189$
                                    981 ;	main.c:244: switch( SetupReq )
      000237 74 09            [12]  982 	mov	a,#0x09
      000239 B5 0A 07         [24]  983 	cjne	a,_SetupReq,00108$
                                    984 ;	main.c:248: len = 0;	// ACK the SETUP stage
      00023C 7E 00            [12]  985 	mov	r6,#0x00
      00023E 7F 00            [12]  986 	mov	r7,#0x00
                                    987 ;	main.c:249: break;
      000240 02 05 88         [24]  988 	ljmp	00193$
                                    989 ;	main.c:251: default:
      000243                        990 00108$:
                                    991 ;	main.c:252: len = 0xFF;  								 									 /*命令不支持*/
      000243 7E FF            [12]  992 	mov	r6,#0xff
      000245 7F 00            [12]  993 	mov	r7,#0x00
                                    994 ;	main.c:254: }
      000247 02 05 88         [24]  995 	ljmp	00193$
      00024A                        996 00189$:
                                    997 ;	main.c:258: switch(SetupReq)											 //请求码
      00024A E5 0A            [12]  998 	mov	a,_SetupReq
      00024C 24 F5            [12]  999 	add	a,#0xff - 0x0a
      00024E 50 03            [24] 1000 	jnc	00645$
      000250 02 05 7E         [24] 1001 	ljmp	00186$
      000253                       1002 00645$:
      000253 E5 0A            [12] 1003 	mov	a,_SetupReq
      000255 24 0B            [12] 1004 	add	a,#(00646$-3-.)
      000257 83               [24] 1005 	movc	a,@a+pc
      000258 F5 82            [12] 1006 	mov	dpl,a
      00025A E5 0A            [12] 1007 	mov	a,_SetupReq
      00025C 24 0F            [12] 1008 	add	a,#(00647$-3-.)
      00025E 83               [24] 1009 	movc	a,@a+pc
      00025F F5 83            [12] 1010 	mov	dph,a
      000261 E4               [12] 1011 	clr	a
      000262 73               [24] 1012 	jmp	@a+dptr
      000263                       1013 00646$:
      000263 5C                    1014 	.db	00182$
      000264 AA                    1015 	.db	00134$
      000265 7E                    1016 	.db	00186$
      000266 51                    1017 	.db	00155$
      000267 7E                    1018 	.db	00186$
      000268 78                    1019 	.db	00128$
      000269 79                    1020 	.db	00110$
      00026A 7E                    1021 	.db	00186$
      00026B 84                    1022 	.db	00129$
      00026C A1                    1023 	.db	00132$
      00026D 88                    1024 	.db	00193$
      00026E                       1025 00647$:
      00026E 05                    1026 	.db	00182$>>8
      00026F 03                    1027 	.db	00134$>>8
      000270 05                    1028 	.db	00186$>>8
      000271 04                    1029 	.db	00155$>>8
      000272 05                    1030 	.db	00186$>>8
      000273 03                    1031 	.db	00128$>>8
      000274 02                    1032 	.db	00110$>>8
      000275 05                    1033 	.db	00186$>>8
      000276 03                    1034 	.db	00129$>>8
      000277 03                    1035 	.db	00132$>>8
      000278 05                    1036 	.db	00193$>>8
                                   1037 ;	main.c:260: case USB_GET_DESCRIPTOR:
      000279                       1038 00110$:
                                   1039 ;	main.c:261: switch(UsbSetupBuf->wValueH)
      000279 90 00 03         [24] 1040 	mov	dptr,#(_Ep0Buffer + 0x0003)
      00027C E0               [24] 1041 	movx	a,@dptr
      00027D FD               [12] 1042 	mov	r5,a
      00027E BD 01 02         [24] 1043 	cjne	r5,#0x01,00648$
      000281 80 12            [24] 1044 	sjmp	00111$
      000283                       1045 00648$:
      000283 BD 02 02         [24] 1046 	cjne	r5,#0x02,00649$
      000286 80 1C            [24] 1047 	sjmp	00112$
      000288                       1048 00649$:
      000288 BD 03 02         [24] 1049 	cjne	r5,#0x03,00650$
      00028B 80 26            [24] 1050 	sjmp	00113$
      00028D                       1051 00650$:
      00028D BD 22 02         [24] 1052 	cjne	r5,#0x22,00651$
      000290 80 73            [24] 1053 	sjmp	00123$
      000292                       1054 00651$:
      000292 02 03 14         [24] 1055 	ljmp	00124$
                                   1056 ;	main.c:263: case 1:													   //设备描述符
      000295                       1057 00111$:
                                   1058 ;	main.c:264: pDescr = DevDesc;										 //把设备描述符送到要发送的缓冲区
      000295 75 0D 96         [24] 1059 	mov	_pDescr,#_DevDesc
      000298 75 0E 09         [24] 1060 	mov	(_pDescr + 1),#(_DevDesc >> 8)
      00029B 75 0F 80         [24] 1061 	mov	(_pDescr + 2),#0x80
                                   1062 ;	main.c:265: len = sizeof(DevDesc);
      00029E 7C 12            [12] 1063 	mov	r4,#0x12
      0002A0 7D 00            [12] 1064 	mov	r5,#0x00
                                   1065 ;	main.c:266: break;
                                   1066 ;	main.c:267: case 2:														//配置描述符
      0002A2 80 74            [24] 1067 	sjmp	00125$
      0002A4                       1068 00112$:
                                   1069 ;	main.c:268: pDescr = CfgDesc;										  //把设备描述符送到要发送的缓冲区
      0002A4 75 0D A8         [24] 1070 	mov	_pDescr,#_CfgDesc
      0002A7 75 0E 09         [24] 1071 	mov	(_pDescr + 1),#(_CfgDesc >> 8)
      0002AA 75 0F 80         [24] 1072 	mov	(_pDescr + 2),#0x80
                                   1073 ;	main.c:269: len = sizeof(CfgDesc);
      0002AD 7C 22            [12] 1074 	mov	r4,#0x22
      0002AF 7D 00            [12] 1075 	mov	r5,#0x00
                                   1076 ;	main.c:270: break;
                                   1077 ;	main.c:271: case 3:                                                       // String descriptor
      0002B1 80 65            [24] 1078 	sjmp	00125$
      0002B3                       1079 00113$:
                                   1080 ;	main.c:272: if(UsbSetupBuf->wValueL == 0)
      0002B3 90 00 02         [24] 1081 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0002B6 E0               [24] 1082 	movx	a,@dptr
      0002B7 70 0F            [24] 1083 	jnz	00121$
                                   1084 ;	main.c:274: pDescr = LangDes;
      0002B9 75 0D EC         [24] 1085 	mov	_pDescr,#_LangDes
      0002BC 75 0E 09         [24] 1086 	mov	(_pDescr + 1),#(_LangDes >> 8)
      0002BF 75 0F 80         [24] 1087 	mov	(_pDescr + 2),#0x80
                                   1088 ;	main.c:275: len = sizeof(LangDes);
      0002C2 7C 04            [12] 1089 	mov	r4,#0x04
      0002C4 7D 00            [12] 1090 	mov	r5,#0x00
      0002C6 80 50            [24] 1091 	sjmp	00125$
      0002C8                       1092 00121$:
                                   1093 ;	main.c:277: else if(UsbSetupBuf->wValueL == 1)
      0002C8 90 00 02         [24] 1094 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0002CB E0               [24] 1095 	movx	a,@dptr
      0002CC FB               [12] 1096 	mov	r3,a
      0002CD BB 01 0F         [24] 1097 	cjne	r3,#0x01,00118$
                                   1098 ;	main.c:279: pDescr = Manuf_Des;
      0002D0 75 0D 1C         [24] 1099 	mov	_pDescr,#_Manuf_Des
      0002D3 75 0E 0A         [24] 1100 	mov	(_pDescr + 1),#(_Manuf_Des >> 8)
      0002D6 75 0F 80         [24] 1101 	mov	(_pDescr + 2),#0x80
                                   1102 ;	main.c:280: len = sizeof(Manuf_Des);
      0002D9 7C 16            [12] 1103 	mov	r4,#0x16
      0002DB 7D 00            [12] 1104 	mov	r5,#0x00
      0002DD 80 39            [24] 1105 	sjmp	00125$
      0002DF                       1106 00118$:
                                   1107 ;	main.c:282: else if(UsbSetupBuf->wValueL == 2)
      0002DF 90 00 02         [24] 1108 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0002E2 E0               [24] 1109 	movx	a,@dptr
      0002E3 FB               [12] 1110 	mov	r3,a
      0002E4 BB 02 0F         [24] 1111 	cjne	r3,#0x02,00115$
                                   1112 ;	main.c:284: pDescr = Prod_Des;
      0002E7 75 0D FE         [24] 1113 	mov	_pDescr,#_Prod_Des
      0002EA 75 0E 09         [24] 1114 	mov	(_pDescr + 1),#(_Prod_Des >> 8)
      0002ED 75 0F 80         [24] 1115 	mov	(_pDescr + 2),#0x80
                                   1116 ;	main.c:285: len = sizeof(Prod_Des);
      0002F0 7C 1E            [12] 1117 	mov	r4,#0x1e
      0002F2 7D 00            [12] 1118 	mov	r5,#0x00
      0002F4 80 22            [24] 1119 	sjmp	00125$
      0002F6                       1120 00115$:
                                   1121 ;	main.c:289: pDescr = SerDes;
      0002F6 75 0D F0         [24] 1122 	mov	_pDescr,#_SerDes
      0002F9 75 0E 09         [24] 1123 	mov	(_pDescr + 1),#(_SerDes >> 8)
      0002FC 75 0F 80         [24] 1124 	mov	(_pDescr + 2),#0x80
                                   1125 ;	main.c:290: len = sizeof(SerDes);
      0002FF 7C 0E            [12] 1126 	mov	r4,#0x0e
      000301 7D 00            [12] 1127 	mov	r5,#0x00
                                   1128 ;	main.c:292: break;
                                   1129 ;	main.c:293: case 0x22:                                                    // HID Report descriptor
      000303 80 13            [24] 1130 	sjmp	00125$
      000305                       1131 00123$:
                                   1132 ;	main.c:294: pDescr = HIDRepDesc;
      000305 75 0D CA         [24] 1133 	mov	_pDescr,#_HIDRepDesc
      000308 75 0E 09         [24] 1134 	mov	(_pDescr + 1),#(_HIDRepDesc >> 8)
      00030B 75 0F 80         [24] 1135 	mov	(_pDescr + 2),#0x80
                                   1136 ;	main.c:295: len = sizeof(HIDRepDesc);
      00030E 7C 22            [12] 1137 	mov	r4,#0x22
      000310 7D 00            [12] 1138 	mov	r5,#0x00
                                   1139 ;	main.c:296: break;
                                   1140 ;	main.c:297: default:
      000312 80 04            [24] 1141 	sjmp	00125$
      000314                       1142 00124$:
                                   1143 ;	main.c:298: len = 0xff;												//不支持的命令或者出错
      000314 7C FF            [12] 1144 	mov	r4,#0xff
      000316 7D 00            [12] 1145 	mov	r5,#0x00
                                   1146 ;	main.c:300: }
      000318                       1147 00125$:
                                   1148 ;	main.c:301: if ( SetupLen > len )
      000318 C3               [12] 1149 	clr	c
      000319 EC               [12] 1150 	mov	a,r4
      00031A 95 08            [12] 1151 	subb	a,_SetupLen
      00031C ED               [12] 1152 	mov	a,r5
      00031D 95 09            [12] 1153 	subb	a,(_SetupLen + 1)
      00031F 50 04            [24] 1154 	jnc	00127$
                                   1155 ;	main.c:303: SetupLen = len;	//限制总长度
      000321 8C 08            [24] 1156 	mov	_SetupLen,r4
      000323 8D 09            [24] 1157 	mov	(_SetupLen + 1),r5
      000325                       1158 00127$:
                                   1159 ;	main.c:305: len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;							//本次传输长度
      000325 AC 08            [24] 1160 	mov	r4,_SetupLen
      000327 AD 09            [24] 1161 	mov	r5,(_SetupLen + 1)
      000329 C3               [12] 1162 	clr	c
      00032A EC               [12] 1163 	mov	a,r4
      00032B 94 08            [12] 1164 	subb	a,#0x08
      00032D ED               [12] 1165 	mov	a,r5
      00032E 94 00            [12] 1166 	subb	a,#0x00
      000330 92 00            [24] 1167 	mov	_DeviceInterrupt_sloc0_1_0,c
      000332 40 06            [24] 1168 	jc	00229$
      000334 7C 08            [12] 1169 	mov	r4,#0x08
      000336 7D 00            [12] 1170 	mov	r5,#0x00
      000338 80 04            [24] 1171 	sjmp	00230$
      00033A                       1172 00229$:
      00033A AC 08            [24] 1173 	mov	r4,_SetupLen
      00033C AD 09            [24] 1174 	mov	r5,(_SetupLen + 1)
      00033E                       1175 00230$:
      00033E 8C 06            [24] 1176 	mov	ar6,r4
      000340 8D 07            [24] 1177 	mov	ar7,r5
                                   1178 ;	main.c:306: memcpy(Ep0Buffer,pDescr,len);								  //加载上传数据
      000342 85 0D 22         [24] 1179 	mov	___memcpy_PARM_2,_pDescr
      000345 85 0E 23         [24] 1180 	mov	(___memcpy_PARM_2 + 1),(_pDescr + 1)
      000348 85 0F 24         [24] 1181 	mov	(___memcpy_PARM_2 + 2),(_pDescr + 2)
      00034B 8E 25            [24] 1182 	mov	___memcpy_PARM_3,r6
      00034D 8F 26            [24] 1183 	mov	(___memcpy_PARM_3 + 1),r7
      00034F 90 00 00         [24] 1184 	mov	dptr,#_Ep0Buffer
      000352 75 F0 00         [24] 1185 	mov	b, #0x00
      000355 C0 07            [24] 1186 	push	ar7
      000357 C0 06            [24] 1187 	push	ar6
      000359 12 08 A6         [24] 1188 	lcall	___memcpy
      00035C D0 06            [24] 1189 	pop	ar6
      00035E D0 07            [24] 1190 	pop	ar7
                                   1191 ;	main.c:307: SetupLen -= len;
      000360 E5 08            [12] 1192 	mov	a,_SetupLen
      000362 C3               [12] 1193 	clr	c
      000363 9E               [12] 1194 	subb	a,r6
      000364 F5 08            [12] 1195 	mov	_SetupLen,a
      000366 E5 09            [12] 1196 	mov	a,(_SetupLen + 1)
      000368 9F               [12] 1197 	subb	a,r7
      000369 F5 09            [12] 1198 	mov	(_SetupLen + 1),a
                                   1199 ;	main.c:308: pDescr += len;
      00036B EE               [12] 1200 	mov	a,r6
      00036C 25 0D            [12] 1201 	add	a, _pDescr
      00036E F5 0D            [12] 1202 	mov	_pDescr,a
      000370 EF               [12] 1203 	mov	a,r7
      000371 35 0E            [12] 1204 	addc	a, (_pDescr + 1)
      000373 F5 0E            [12] 1205 	mov	(_pDescr + 1),a
                                   1206 ;	main.c:309: break;
      000375 02 05 88         [24] 1207 	ljmp	00193$
                                   1208 ;	main.c:310: case USB_SET_ADDRESS:
      000378                       1209 00128$:
                                   1210 ;	main.c:311: SetupLen = UsbSetupBuf->wValueL;							  //暂存USB设备地址
      000378 90 00 02         [24] 1211 	mov	dptr,#(_Ep0Buffer + 0x0002)
      00037B E0               [24] 1212 	movx	a,@dptr
      00037C F5 08            [12] 1213 	mov	_SetupLen, a
      00037E 75 09 00         [24] 1214 	mov	(_SetupLen + 1),#0x00
                                   1215 ;	main.c:312: break;
      000381 02 05 88         [24] 1216 	ljmp	00193$
                                   1217 ;	main.c:313: case USB_GET_CONFIGURATION:
      000384                       1218 00129$:
                                   1219 ;	main.c:314: Ep0Buffer[0] = UsbConfig;
      000384 90 00 00         [24] 1220 	mov	dptr,#_Ep0Buffer
      000387 E5 0C            [12] 1221 	mov	a,_UsbConfig
      000389 F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	main.c:315: if ( SetupLen >= 1 )
      00038A AC 08            [24] 1224 	mov	r4,_SetupLen
      00038C AD 09            [24] 1225 	mov	r5,(_SetupLen + 1)
      00038E C3               [12] 1226 	clr	c
      00038F EC               [12] 1227 	mov	a,r4
      000390 94 01            [12] 1228 	subb	a,#0x01
      000392 ED               [12] 1229 	mov	a,r5
      000393 94 00            [12] 1230 	subb	a,#0x00
      000395 50 03            [24] 1231 	jnc	00659$
      000397 02 05 88         [24] 1232 	ljmp	00193$
      00039A                       1233 00659$:
                                   1234 ;	main.c:317: len = 1;
      00039A 7E 01            [12] 1235 	mov	r6,#0x01
      00039C 7F 00            [12] 1236 	mov	r7,#0x00
                                   1237 ;	main.c:319: break;
      00039E 02 05 88         [24] 1238 	ljmp	00193$
                                   1239 ;	main.c:320: case USB_SET_CONFIGURATION:
      0003A1                       1240 00132$:
                                   1241 ;	main.c:321: UsbConfig = UsbSetupBuf->wValueL;
      0003A1 90 00 02         [24] 1242 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0003A4 E0               [24] 1243 	movx	a,@dptr
      0003A5 F5 0C            [12] 1244 	mov	_UsbConfig,a
                                   1245 ;	main.c:322: break;
      0003A7 02 05 88         [24] 1246 	ljmp	00193$
                                   1247 ;	main.c:325: case USB_CLEAR_FEATURE:											//Clear Feature
      0003AA                       1248 00134$:
                                   1249 ;	main.c:326: if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_DEVICE )				  /* 清除设备 */
      0003AA 90 00 00         [24] 1250 	mov	dptr,#_Ep0Buffer
      0003AD E0               [24] 1251 	movx	a,@dptr
      0003AE 54 1F            [12] 1252 	anl	a,#0x1f
      0003B0 70 32            [24] 1253 	jnz	00153$
                                   1254 ;	main.c:328: if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x01 )
      0003B2 90 00 03         [24] 1255 	mov	dptr,#(_Ep0Buffer + 0x0003)
      0003B5 E0               [24] 1256 	movx	a,@dptr
      0003B6 FC               [12] 1257 	mov	r4,a
      0003B7 7D 00            [12] 1258 	mov	r5,#0x00
      0003B9 90 00 02         [24] 1259 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0003BC E0               [24] 1260 	movx	a,@dptr
      0003BD FB               [12] 1261 	mov	r3,a
      0003BE 7A 00            [12] 1262 	mov	r2,#0x00
      0003C0 42 05            [12] 1263 	orl	ar5,a
      0003C2 EA               [12] 1264 	mov	a,r2
      0003C3 42 04            [12] 1265 	orl	ar4,a
      0003C5 BD 01 15         [24] 1266 	cjne	r5,#0x01,00139$
      0003C8 BC 00 12         [24] 1267 	cjne	r4,#0x00,00139$
                                   1268 ;	main.c:330: if( CfgDesc[ 7 ] & 0x20 )
      0003CB 90 09 AF         [24] 1269 	mov	dptr,#(_CfgDesc + 0x0007)
      0003CE E4               [12] 1270 	clr	a
      0003CF 93               [24] 1271 	movc	a,@a+dptr
      0003D0 30 E5 03         [24] 1272 	jnb	acc.5,00664$
      0003D3 02 05 88         [24] 1273 	ljmp	00193$
      0003D6                       1274 00664$:
                                   1275 ;	main.c:336: len = 0xFF;										/* 操作失败 */
      0003D6 7E FF            [12] 1276 	mov	r6,#0xff
      0003D8 7F 00            [12] 1277 	mov	r7,#0x00
      0003DA 02 05 88         [24] 1278 	ljmp	00193$
      0003DD                       1279 00139$:
                                   1280 ;	main.c:341: len = 0xFF;											/* 操作失败 */
      0003DD 7E FF            [12] 1281 	mov	r6,#0xff
      0003DF 7F 00            [12] 1282 	mov	r7,#0x00
      0003E1 02 05 88         [24] 1283 	ljmp	00193$
      0003E4                       1284 00153$:
                                   1285 ;	main.c:344: else if ( ( UsbSetupBuf->bRequestType & USB_REQ_RECIP_MASK ) == USB_REQ_RECIP_ENDP )// 端点
      0003E4 90 00 00         [24] 1286 	mov	dptr,#_Ep0Buffer
      0003E7 E0               [24] 1287 	movx	a,@dptr
      0003E8 FD               [12] 1288 	mov	r5,a
      0003E9 53 05 1F         [24] 1289 	anl	ar5,#0x1f
      0003EC BD 02 5B         [24] 1290 	cjne	r5,#0x02,00150$
                                   1291 ;	main.c:346: switch( UsbSetupBuf->wIndexL )
      0003EF 90 00 04         [24] 1292 	mov	dptr,#(_Ep0Buffer + 0x0004)
      0003F2 E0               [24] 1293 	movx	a,@dptr
      0003F3 FD               [12] 1294 	mov	r5,a
      0003F4 BD 01 02         [24] 1295 	cjne	r5,#0x01,00667$
      0003F7 80 44            [24] 1296 	sjmp	00146$
      0003F9                       1297 00667$:
      0003F9 BD 02 02         [24] 1298 	cjne	r5,#0x02,00668$
      0003FC 80 2E            [24] 1299 	sjmp	00144$
      0003FE                       1300 00668$:
      0003FE BD 03 02         [24] 1301 	cjne	r5,#0x03,00669$
      000401 80 18            [24] 1302 	sjmp	00142$
      000403                       1303 00669$:
      000403 BD 81 02         [24] 1304 	cjne	r5,#0x81,00670$
      000406 80 2A            [24] 1305 	sjmp	00145$
      000408                       1306 00670$:
      000408 BD 82 02         [24] 1307 	cjne	r5,#0x82,00671$
      00040B 80 14            [24] 1308 	sjmp	00143$
      00040D                       1309 00671$:
      00040D BD 83 33         [24] 1310 	cjne	r5,#0x83,00147$
                                   1311 ;	main.c:349: UEP3_CTRL = UEP3_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
      000410 74 BC            [12] 1312 	mov	a,#0xbc
      000412 55 D6            [12] 1313 	anl	a,_UEP3_CTRL
      000414 44 02            [12] 1314 	orl	a,#0x02
      000416 F5 D6            [12] 1315 	mov	_UEP3_CTRL,a
                                   1316 ;	main.c:350: break;
      000418 02 05 88         [24] 1317 	ljmp	00193$
                                   1318 ;	main.c:351: case 0x03:
      00041B                       1319 00142$:
                                   1320 ;	main.c:352: UEP3_CTRL = UEP3_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
      00041B 53 D6 73         [24] 1321 	anl	_UEP3_CTRL,#0x73
                                   1322 ;	main.c:353: break;
      00041E 02 05 88         [24] 1323 	ljmp	00193$
                                   1324 ;	main.c:354: case 0x82:
      000421                       1325 00143$:
                                   1326 ;	main.c:355: UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
      000421 74 BC            [12] 1327 	mov	a,#0xbc
      000423 55 D4            [12] 1328 	anl	a,_UEP2_CTRL
      000425 44 02            [12] 1329 	orl	a,#0x02
      000427 F5 D4            [12] 1330 	mov	_UEP2_CTRL,a
                                   1331 ;	main.c:356: break;
      000429 02 05 88         [24] 1332 	ljmp	00193$
                                   1333 ;	main.c:357: case 0x02:
      00042C                       1334 00144$:
                                   1335 ;	main.c:358: UEP2_CTRL = UEP2_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
      00042C 53 D4 73         [24] 1336 	anl	_UEP2_CTRL,#0x73
                                   1337 ;	main.c:359: break;
      00042F 02 05 88         [24] 1338 	ljmp	00193$
                                   1339 ;	main.c:360: case 0x81:
      000432                       1340 00145$:
                                   1341 ;	main.c:361: UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_T_TOG | MASK_UEP_T_RES ) | UEP_T_RES_NAK;
      000432 74 BC            [12] 1342 	mov	a,#0xbc
      000434 55 D2            [12] 1343 	anl	a,_UEP1_CTRL
      000436 44 02            [12] 1344 	orl	a,#0x02
      000438 F5 D2            [12] 1345 	mov	_UEP1_CTRL,a
                                   1346 ;	main.c:362: break;
      00043A 02 05 88         [24] 1347 	ljmp	00193$
                                   1348 ;	main.c:363: case 0x01:
      00043D                       1349 00146$:
                                   1350 ;	main.c:364: UEP1_CTRL = UEP1_CTRL & ~ ( bUEP_R_TOG | MASK_UEP_R_RES ) | UEP_R_RES_ACK;
      00043D 53 D2 73         [24] 1351 	anl	_UEP1_CTRL,#0x73
                                   1352 ;	main.c:365: break;
      000440 02 05 88         [24] 1353 	ljmp	00193$
                                   1354 ;	main.c:366: default:
      000443                       1355 00147$:
                                   1356 ;	main.c:367: len = 0xFF;										 // 不支持的端点
      000443 7E FF            [12] 1357 	mov	r6,#0xff
      000445 7F 00            [12] 1358 	mov	r7,#0x00
                                   1359 ;	main.c:369: }
      000447 02 05 88         [24] 1360 	ljmp	00193$
      00044A                       1361 00150$:
                                   1362 ;	main.c:373: len = 0xFF;												// 不是端点不支持
      00044A 7E FF            [12] 1363 	mov	r6,#0xff
      00044C 7F 00            [12] 1364 	mov	r7,#0x00
                                   1365 ;	main.c:375: break;
      00044E 02 05 88         [24] 1366 	ljmp	00193$
                                   1367 ;	main.c:376: case USB_SET_FEATURE:										  /* Set Feature */
      000451                       1368 00155$:
                                   1369 ;	main.c:377: if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_DEVICE )				  /* 设置设备 */
      000451 90 00 00         [24] 1370 	mov	dptr,#_Ep0Buffer
      000454 E0               [24] 1371 	movx	a,@dptr
      000455 54 1F            [12] 1372 	anl	a,#0x1f
      000457 70 4C            [24] 1373 	jnz	00180$
                                   1374 ;	main.c:379: if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x01 )
      000459 90 00 03         [24] 1375 	mov	dptr,#(_Ep0Buffer + 0x0003)
      00045C E0               [24] 1376 	movx	a,@dptr
      00045D FC               [12] 1377 	mov	r4,a
      00045E 7D 00            [12] 1378 	mov	r5,#0x00
      000460 90 00 02         [24] 1379 	mov	dptr,#(_Ep0Buffer + 0x0002)
      000463 E0               [24] 1380 	movx	a,@dptr
      000464 FB               [12] 1381 	mov	r3,a
      000465 7A 00            [12] 1382 	mov	r2,#0x00
      000467 42 05            [12] 1383 	orl	ar5,a
      000469 EA               [12] 1384 	mov	a,r2
      00046A 42 04            [12] 1385 	orl	ar4,a
      00046C BD 01 2F         [24] 1386 	cjne	r5,#0x01,00163$
      00046F BC 00 2C         [24] 1387 	cjne	r4,#0x00,00163$
                                   1388 ;	main.c:381: if( CfgDesc[ 7 ] & 0x20 )
      000472 90 09 AF         [24] 1389 	mov	dptr,#(_CfgDesc + 0x0007)
      000475 E4               [12] 1390 	clr	a
      000476 93               [24] 1391 	movc	a,@a+dptr
      000477 30 E5 1D         [24] 1392 	jnb	acc.5,00160$
                                   1393 ;	main.c:387: while ( XBUS_AUX & bUART0_TX )
      00047A                       1394 00156$:
      00047A E5 A2            [12] 1395 	mov	a,_XBUS_AUX
      00047C 20 E7 FB         [24] 1396 	jb	acc.7,00156$
                                   1397 ;	main.c:391: SAFE_MOD = 0x55;
      00047F 75 A1 55         [24] 1398 	mov	_SAFE_MOD,#0x55
                                   1399 ;	main.c:392: SAFE_MOD = 0xAA;
      000482 75 A1 AA         [24] 1400 	mov	_SAFE_MOD,#0xaa
                                   1401 ;	main.c:393: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD0_LO | bWAK_RXD1_LO;					  //USB或者RXD0/1有信号时可被唤醒
      000485 75 A9 C1         [24] 1402 	mov	_WAKE_CTRL,#0xc1
                                   1403 ;	main.c:394: PCON |= PD;																 //睡眠
      000488 43 87 02         [24] 1404 	orl	_PCON,#0x02
                                   1405 ;	main.c:395: SAFE_MOD = 0x55;
      00048B 75 A1 55         [24] 1406 	mov	_SAFE_MOD,#0x55
                                   1407 ;	main.c:396: SAFE_MOD = 0xAA;
      00048E 75 A1 AA         [24] 1408 	mov	_SAFE_MOD,#0xaa
                                   1409 ;	main.c:397: WAKE_CTRL = 0x00;
      000491 75 A9 00         [24] 1410 	mov	_WAKE_CTRL,#0x00
      000494 02 05 88         [24] 1411 	ljmp	00193$
      000497                       1412 00160$:
                                   1413 ;	main.c:401: len = 0xFF;										/* 操作失败 */
      000497 7E FF            [12] 1414 	mov	r6,#0xff
      000499 7F 00            [12] 1415 	mov	r7,#0x00
      00049B 02 05 88         [24] 1416 	ljmp	00193$
      00049E                       1417 00163$:
                                   1418 ;	main.c:406: len = 0xFF;											/* 操作失败 */
      00049E 7E FF            [12] 1419 	mov	r6,#0xff
      0004A0 7F 00            [12] 1420 	mov	r7,#0x00
      0004A2 02 05 88         [24] 1421 	ljmp	00193$
      0004A5                       1422 00180$:
                                   1423 ;	main.c:409: else if( ( UsbSetupBuf->bRequestType & 0x1F ) == USB_REQ_RECIP_ENDP )			 /* 设置端点 */
      0004A5 90 00 00         [24] 1424 	mov	dptr,#_Ep0Buffer
      0004A8 E0               [24] 1425 	movx	a,@dptr
      0004A9 FD               [12] 1426 	mov	r5,a
      0004AA 53 05 1F         [24] 1427 	anl	ar5,#0x1f
      0004AD BD 02 02         [24] 1428 	cjne	r5,#0x02,00680$
      0004B0 80 03            [24] 1429 	sjmp	00681$
      0004B2                       1430 00680$:
      0004B2 02 05 56         [24] 1431 	ljmp	00177$
      0004B5                       1432 00681$:
                                   1433 ;	main.c:411: if( ( ( ( uint16_t )UsbSetupBuf->wValueH << 8 ) | UsbSetupBuf->wValueL ) == 0x00 )
      0004B5 90 00 03         [24] 1434 	mov	dptr,#(_Ep0Buffer + 0x0003)
      0004B8 E0               [24] 1435 	movx	a,@dptr
      0004B9 FC               [12] 1436 	mov	r4,a
      0004BA 7D 00            [12] 1437 	mov	r5,#0x00
      0004BC 90 00 02         [24] 1438 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0004BF E0               [24] 1439 	movx	a,@dptr
      0004C0 FB               [12] 1440 	mov	r3,a
      0004C1 7A 00            [12] 1441 	mov	r2,#0x00
      0004C3 42 05            [12] 1442 	orl	ar5,a
      0004C5 EA               [12] 1443 	mov	a,r2
      0004C6 42 04            [12] 1444 	orl	ar4,a
      0004C8 ED               [12] 1445 	mov	a,r5
      0004C9 4C               [12] 1446 	orl	a,r4
      0004CA 60 03            [24] 1447 	jz	00682$
      0004CC 02 05 50         [24] 1448 	ljmp	00174$
      0004CF                       1449 00682$:
                                   1450 ;	main.c:413: switch( ( ( uint16_t )UsbSetupBuf->wIndexH << 8 ) | UsbSetupBuf->wIndexL )
      0004CF 90 00 05         [24] 1451 	mov	dptr,#(_Ep0Buffer + 0x0005)
      0004D2 E0               [24] 1452 	movx	a,@dptr
      0004D3 FC               [12] 1453 	mov	r4,a
      0004D4 7D 00            [12] 1454 	mov	r5,#0x00
      0004D6 90 00 04         [24] 1455 	mov	dptr,#(_Ep0Buffer + 0x0004)
      0004D9 E0               [24] 1456 	movx	a,@dptr
      0004DA FB               [12] 1457 	mov	r3,a
      0004DB 7A 00            [12] 1458 	mov	r2,#0x00
      0004DD 42 05            [12] 1459 	orl	ar5,a
      0004DF EA               [12] 1460 	mov	a,r2
      0004E0 42 04            [12] 1461 	orl	ar4,a
      0004E2 BD 01 05         [24] 1462 	cjne	r5,#0x01,00683$
      0004E5 BC 00 02         [24] 1463 	cjne	r4,#0x00,00683$
      0004E8 80 58            [24] 1464 	sjmp	00170$
      0004EA                       1465 00683$:
      0004EA BD 02 05         [24] 1466 	cjne	r5,#0x02,00684$
      0004ED BC 00 02         [24] 1467 	cjne	r4,#0x00,00684$
      0004F0 80 3C            [24] 1468 	sjmp	00168$
      0004F2                       1469 00684$:
      0004F2 BD 03 05         [24] 1470 	cjne	r5,#0x03,00685$
      0004F5 BC 00 02         [24] 1471 	cjne	r4,#0x00,00685$
      0004F8 80 20            [24] 1472 	sjmp	00166$
      0004FA                       1473 00685$:
      0004FA BD 81 05         [24] 1474 	cjne	r5,#0x81,00686$
      0004FD BC 00 02         [24] 1475 	cjne	r4,#0x00,00686$
      000500 80 36            [24] 1476 	sjmp	00169$
      000502                       1477 00686$:
      000502 BD 82 05         [24] 1478 	cjne	r5,#0x82,00687$
      000505 BC 00 02         [24] 1479 	cjne	r4,#0x00,00687$
      000508 80 1A            [24] 1480 	sjmp	00167$
      00050A                       1481 00687$:
      00050A BD 83 3D         [24] 1482 	cjne	r5,#0x83,00171$
      00050D BC 00 3A         [24] 1483 	cjne	r4,#0x00,00171$
                                   1484 ;	main.c:416: UEP3_CTRL = UEP3_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点3 IN STALL */
      000510 74 BF            [12] 1485 	mov	a,#0xbf
      000512 55 D6            [12] 1486 	anl	a,_UEP3_CTRL
      000514 44 03            [12] 1487 	orl	a,#0x03
      000516 F5 D6            [12] 1488 	mov	_UEP3_CTRL,a
                                   1489 ;	main.c:417: break;
                                   1490 ;	main.c:418: case 0x03:
      000518 80 6E            [24] 1491 	sjmp	00193$
      00051A                       1492 00166$:
                                   1493 ;	main.c:419: UEP3_CTRL = UEP3_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点3 OUT Stall */
      00051A 74 7F            [12] 1494 	mov	a,#0x7f
      00051C 55 D6            [12] 1495 	anl	a,_UEP3_CTRL
      00051E 44 0C            [12] 1496 	orl	a,#0x0c
      000520 F5 D6            [12] 1497 	mov	_UEP3_CTRL,a
                                   1498 ;	main.c:420: break;
                                   1499 ;	main.c:421: case 0x82:
      000522 80 64            [24] 1500 	sjmp	00193$
      000524                       1501 00167$:
                                   1502 ;	main.c:422: UEP2_CTRL = UEP2_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点2 IN STALL */
      000524 74 BF            [12] 1503 	mov	a,#0xbf
      000526 55 D4            [12] 1504 	anl	a,_UEP2_CTRL
      000528 44 03            [12] 1505 	orl	a,#0x03
      00052A F5 D4            [12] 1506 	mov	_UEP2_CTRL,a
                                   1507 ;	main.c:423: break;
                                   1508 ;	main.c:424: case 0x02:
      00052C 80 5A            [24] 1509 	sjmp	00193$
      00052E                       1510 00168$:
                                   1511 ;	main.c:425: UEP2_CTRL = UEP2_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点2 OUT Stall */
      00052E 74 7F            [12] 1512 	mov	a,#0x7f
      000530 55 D4            [12] 1513 	anl	a,_UEP2_CTRL
      000532 44 0C            [12] 1514 	orl	a,#0x0c
      000534 F5 D4            [12] 1515 	mov	_UEP2_CTRL,a
                                   1516 ;	main.c:426: break;
                                   1517 ;	main.c:427: case 0x81:
      000536 80 50            [24] 1518 	sjmp	00193$
      000538                       1519 00169$:
                                   1520 ;	main.c:428: UEP1_CTRL = UEP1_CTRL & (~bUEP_T_TOG) | UEP_T_RES_STALL;/* 设置端点1 IN STALL */
      000538 74 BF            [12] 1521 	mov	a,#0xbf
      00053A 55 D2            [12] 1522 	anl	a,_UEP1_CTRL
      00053C 44 03            [12] 1523 	orl	a,#0x03
      00053E F5 D2            [12] 1524 	mov	_UEP1_CTRL,a
                                   1525 ;	main.c:429: break;
                                   1526 ;	main.c:430: case 0x01:
      000540 80 46            [24] 1527 	sjmp	00193$
      000542                       1528 00170$:
                                   1529 ;	main.c:431: UEP1_CTRL = UEP1_CTRL & (~bUEP_R_TOG) | UEP_R_RES_STALL;/* 设置端点1 OUT Stall */
      000542 74 7F            [12] 1530 	mov	a,#0x7f
      000544 55 D2            [12] 1531 	anl	a,_UEP1_CTRL
      000546 44 0C            [12] 1532 	orl	a,#0x0c
      000548 F5 D2            [12] 1533 	mov	_UEP1_CTRL,a
                                   1534 ;	main.c:432: default:
      00054A                       1535 00171$:
                                   1536 ;	main.c:433: len = 0xFF;									/* 操作失败 */
      00054A 7E FF            [12] 1537 	mov	r6,#0xff
      00054C 7F 00            [12] 1538 	mov	r7,#0x00
                                   1539 ;	main.c:435: }
      00054E 80 38            [24] 1540 	sjmp	00193$
      000550                       1541 00174$:
                                   1542 ;	main.c:439: len = 0xFF;									  /* 操作失败 */
      000550 7E FF            [12] 1543 	mov	r6,#0xff
      000552 7F 00            [12] 1544 	mov	r7,#0x00
      000554 80 32            [24] 1545 	sjmp	00193$
      000556                       1546 00177$:
                                   1547 ;	main.c:444: len = 0xFF;										  /* 操作失败 */
      000556 7E FF            [12] 1548 	mov	r6,#0xff
      000558 7F 00            [12] 1549 	mov	r7,#0x00
                                   1550 ;	main.c:446: break;
                                   1551 ;	main.c:447: case USB_GET_STATUS:
      00055A 80 2C            [24] 1552 	sjmp	00193$
      00055C                       1553 00182$:
                                   1554 ;	main.c:448: Ep0Buffer[0] = 0x00;
      00055C 90 00 00         [24] 1555 	mov	dptr,#_Ep0Buffer
      00055F E4               [12] 1556 	clr	a
      000560 F0               [24] 1557 	movx	@dptr,a
                                   1558 ;	main.c:449: Ep0Buffer[1] = 0x00;
      000561 90 00 01         [24] 1559 	mov	dptr,#(_Ep0Buffer + 0x0001)
      000564 F0               [24] 1560 	movx	@dptr,a
                                   1561 ;	main.c:450: if ( SetupLen >= 2 )
      000565 AC 08            [24] 1562 	mov	r4,_SetupLen
      000567 AD 09            [24] 1563 	mov	r5,(_SetupLen + 1)
      000569 C3               [12] 1564 	clr	c
      00056A EC               [12] 1565 	mov	a,r4
      00056B 94 02            [12] 1566 	subb	a,#0x02
      00056D ED               [12] 1567 	mov	a,r5
      00056E 94 00            [12] 1568 	subb	a,#0x00
      000570 40 06            [24] 1569 	jc	00184$
                                   1570 ;	main.c:452: len = 2;
      000572 7E 02            [12] 1571 	mov	r6,#0x02
      000574 7F 00            [12] 1572 	mov	r7,#0x00
      000576 80 10            [24] 1573 	sjmp	00193$
      000578                       1574 00184$:
                                   1575 ;	main.c:456: len = SetupLen;
      000578 AE 08            [24] 1576 	mov	r6,_SetupLen
      00057A AF 09            [24] 1577 	mov	r7,(_SetupLen + 1)
                                   1578 ;	main.c:458: break;
                                   1579 ;	main.c:459: default:
      00057C 80 0A            [24] 1580 	sjmp	00193$
      00057E                       1581 00186$:
                                   1582 ;	main.c:460: len = 0xff;													//操作失败
      00057E 7E FF            [12] 1583 	mov	r6,#0xff
      000580 7F 00            [12] 1584 	mov	r7,#0x00
                                   1585 ;	main.c:462: }
      000582 80 04            [24] 1586 	sjmp	00193$
      000584                       1587 00192$:
                                   1588 ;	main.c:467: len = 0xff;														 //包长度错误
      000584 7E FF            [12] 1589 	mov	r6,#0xff
      000586 7F 00            [12] 1590 	mov	r7,#0x00
      000588                       1591 00193$:
                                   1592 ;	main.c:469: if(len == 0xff)
      000588 8E 04            [24] 1593 	mov	ar4,r6
      00058A 8F 05            [24] 1594 	mov	ar5,r7
      00058C BC FF 0C         [24] 1595 	cjne	r4,#0xff,00198$
      00058F BD 00 09         [24] 1596 	cjne	r5,#0x00,00198$
                                   1597 ;	main.c:471: SetupReq = 0xFF;
      000592 75 0A FF         [24] 1598 	mov	_SetupReq,#0xff
                                   1599 ;	main.c:472: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_STALL | UEP_T_RES_STALL;//STALL
      000595 75 DC CF         [24] 1600 	mov	_UEP0_CTRL,#0xcf
      000598 02 06 60         [24] 1601 	ljmp	00214$
      00059B                       1602 00198$:
                                   1603 ;	main.c:474: else if(len <= DEFAULT_ENDP0_SIZE)													   //上传数据或者状态阶段返回0长度包
      00059B C3               [12] 1604 	clr	c
      00059C 74 08            [12] 1605 	mov	a,#0x08
      00059E 9C               [12] 1606 	subb	a,r4
      00059F E4               [12] 1607 	clr	a
      0005A0 9D               [12] 1608 	subb	a,r5
      0005A1 40 08            [24] 1609 	jc	00195$
                                   1610 ;	main.c:476: UEP0_T_LEN = len;
      0005A3 8E DD            [24] 1611 	mov	_UEP0_T_LEN,r6
                                   1612 ;	main.c:477: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;//默认数据包是DATA1，返回应答ACK
      0005A5 75 DC C0         [24] 1613 	mov	_UEP0_CTRL,#0xc0
      0005A8 02 06 60         [24] 1614 	ljmp	00214$
      0005AB                       1615 00195$:
                                   1616 ;	main.c:481: UEP0_T_LEN = 0;  //虽然尚未到状态阶段，但是提前预置上传0长度数据包以防主机提前进入状态阶段
      0005AB 75 DD 00         [24] 1617 	mov	_UEP0_T_LEN,#0x00
                                   1618 ;	main.c:482: UEP0_CTRL = bUEP_R_TOG | bUEP_T_TOG | UEP_R_RES_ACK | UEP_T_RES_ACK;//默认数据包是DATA1,返回应答ACK
      0005AE 75 DC C0         [24] 1619 	mov	_UEP0_CTRL,#0xc0
                                   1620 ;	main.c:484: break;
      0005B1 02 06 60         [24] 1621 	ljmp	00214$
                                   1622 ;	main.c:485: case UIS_TOKEN_IN | 0:													  //endpoint0 IN
      0005B4                       1623 00200$:
                                   1624 ;	main.c:486: switch(SetupReq)
      0005B4 74 05            [12] 1625 	mov	a,#0x05
      0005B6 B5 0A 02         [24] 1626 	cjne	a,_SetupReq,00694$
      0005B9 80 58            [24] 1627 	sjmp	00202$
      0005BB                       1628 00694$:
      0005BB 74 06            [12] 1629 	mov	a,#0x06
      0005BD B5 0A 63         [24] 1630 	cjne	a,_SetupReq,00203$
                                   1631 ;	main.c:489: len = SetupLen >= DEFAULT_ENDP0_SIZE ? DEFAULT_ENDP0_SIZE : SetupLen;								 //本次传输长度
      0005C0 AE 08            [24] 1632 	mov	r6,_SetupLen
      0005C2 AF 09            [24] 1633 	mov	r7,(_SetupLen + 1)
      0005C4 C3               [12] 1634 	clr	c
      0005C5 EE               [12] 1635 	mov	a,r6
      0005C6 94 08            [12] 1636 	subb	a,#0x08
      0005C8 EF               [12] 1637 	mov	a,r7
      0005C9 94 00            [12] 1638 	subb	a,#0x00
      0005CB 92 00            [24] 1639 	mov	_DeviceInterrupt_sloc0_1_0,c
      0005CD 40 06            [24] 1640 	jc	00231$
      0005CF 7E 08            [12] 1641 	mov	r6,#0x08
      0005D1 7F 00            [12] 1642 	mov	r7,#0x00
      0005D3 80 04            [24] 1643 	sjmp	00232$
      0005D5                       1644 00231$:
      0005D5 AE 08            [24] 1645 	mov	r6,_SetupLen
      0005D7 AF 09            [24] 1646 	mov	r7,(_SetupLen + 1)
      0005D9                       1647 00232$:
                                   1648 ;	main.c:490: memcpy( Ep0Buffer, pDescr, len );								   //加载上传数据
      0005D9 85 0D 22         [24] 1649 	mov	___memcpy_PARM_2,_pDescr
      0005DC 85 0E 23         [24] 1650 	mov	(___memcpy_PARM_2 + 1),(_pDescr + 1)
      0005DF 85 0F 24         [24] 1651 	mov	(___memcpy_PARM_2 + 2),(_pDescr + 2)
      0005E2 8E 25            [24] 1652 	mov	___memcpy_PARM_3,r6
      0005E4 8F 26            [24] 1653 	mov	(___memcpy_PARM_3 + 1),r7
      0005E6 90 00 00         [24] 1654 	mov	dptr,#_Ep0Buffer
      0005E9 75 F0 00         [24] 1655 	mov	b, #0x00
      0005EC C0 07            [24] 1656 	push	ar7
      0005EE C0 06            [24] 1657 	push	ar6
      0005F0 12 08 A6         [24] 1658 	lcall	___memcpy
      0005F3 D0 06            [24] 1659 	pop	ar6
      0005F5 D0 07            [24] 1660 	pop	ar7
                                   1661 ;	main.c:491: SetupLen -= len;
      0005F7 E5 08            [12] 1662 	mov	a,_SetupLen
      0005F9 C3               [12] 1663 	clr	c
      0005FA 9E               [12] 1664 	subb	a,r6
      0005FB F5 08            [12] 1665 	mov	_SetupLen,a
      0005FD E5 09            [12] 1666 	mov	a,(_SetupLen + 1)
      0005FF 9F               [12] 1667 	subb	a,r7
      000600 F5 09            [12] 1668 	mov	(_SetupLen + 1),a
                                   1669 ;	main.c:492: pDescr += len;
      000602 EE               [12] 1670 	mov	a,r6
      000603 25 0D            [12] 1671 	add	a, _pDescr
      000605 F5 0D            [12] 1672 	mov	_pDescr,a
      000607 EF               [12] 1673 	mov	a,r7
      000608 35 0E            [12] 1674 	addc	a, (_pDescr + 1)
      00060A F5 0E            [12] 1675 	mov	(_pDescr + 1),a
                                   1676 ;	main.c:493: UEP0_T_LEN = len;
      00060C 8E DD            [24] 1677 	mov	_UEP0_T_LEN,r6
                                   1678 ;	main.c:494: UEP0_CTRL ^= bUEP_T_TOG;											 //同步标志位翻转
      00060E 63 DC 40         [24] 1679 	xrl	_UEP0_CTRL,#0x40
                                   1680 ;	main.c:495: break;
                                   1681 ;	main.c:496: case USB_SET_ADDRESS:
      000611 80 4D            [24] 1682 	sjmp	00214$
      000613                       1683 00202$:
                                   1684 ;	main.c:497: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | SetupLen;
      000613 E5 E3            [12] 1685 	mov	a,_USB_DEV_AD
      000615 54 80            [12] 1686 	anl	a,#0x80
      000617 FF               [12] 1687 	mov	r7,a
      000618 E5 08            [12] 1688 	mov	a,_SetupLen
      00061A FE               [12] 1689 	mov	r6,a
      00061B 4F               [12] 1690 	orl	a,r7
      00061C F5 E3            [12] 1691 	mov	_USB_DEV_AD,a
                                   1692 ;	main.c:498: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      00061E 75 DC 02         [24] 1693 	mov	_UEP0_CTRL,#0x02
                                   1694 ;	main.c:499: break;
                                   1695 ;	main.c:500: default:
      000621 80 3D            [24] 1696 	sjmp	00214$
      000623                       1697 00203$:
                                   1698 ;	main.c:501: UEP0_T_LEN = 0;													  //状态阶段完成中断或者是强制上传0长度数据包结束控制传输
      000623 75 DD 00         [24] 1699 	mov	_UEP0_T_LEN,#0x00
                                   1700 ;	main.c:502: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      000626 75 DC 02         [24] 1701 	mov	_UEP0_CTRL,#0x02
                                   1702 ;	main.c:505: break;
                                   1703 ;	main.c:506: case UIS_TOKEN_OUT | 0:  // endpoint0 OUT
      000629 80 35            [24] 1704 	sjmp	00214$
      00062B                       1705 00205$:
                                   1706 ;	main.c:507: if(SetupReq == 0x09)  // SET_REPORT (HID Output Report)
      00062B 74 09            [12] 1707 	mov	a,#0x09
      00062D B5 0A 2A         [24] 1708 	cjne	a,_SetupReq,00211$
                                   1709 ;	main.c:509: if( U_TOG_OK )
      000630 30 DE 2D         [24] 1710 	jnb	_U_TOG_OK,00214$
                                   1711 ;	main.c:515: if(USB_RX_LEN >= 4) {
      000633 74 FC            [12] 1712 	mov	a,#0x100 - 0x04
      000635 25 DB            [12] 1713 	add	a,_USB_RX_LEN
      000637 50 19            [24] 1714 	jnc	00207$
                                   1715 ;	main.c:516: uint8_t r = Ep0Buffer[1];
      000639 90 00 01         [24] 1716 	mov	dptr,#(_Ep0Buffer + 0x0001)
      00063C E0               [24] 1717 	movx	a,@dptr
      00063D FF               [12] 1718 	mov	r7,a
                                   1719 ;	main.c:517: uint8_t g = Ep0Buffer[2];
      00063E 90 00 02         [24] 1720 	mov	dptr,#(_Ep0Buffer + 0x0002)
      000641 E0               [24] 1721 	movx	a,@dptr
      000642 F5 18            [12] 1722 	mov	_sk6812_send_rgbw_PARM_2,a
                                   1723 ;	main.c:518: uint8_t b = Ep0Buffer[3];
      000644 90 00 03         [24] 1724 	mov	dptr,#(_Ep0Buffer + 0x0003)
      000647 E0               [24] 1725 	movx	a,@dptr
      000648 F5 19            [12] 1726 	mov	_sk6812_send_rgbw_PARM_3,a
                                   1727 ;	main.c:519: sk6812_send_rgbw(r, g, b, 0);  // W=0 (RGB LED only)
      00064A 75 1A 00         [24] 1728 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      00064D 8F 82            [24] 1729 	mov	dpl, r7
      00064F 12 08 07         [24] 1730 	lcall	_sk6812_send_rgbw
      000652                       1731 00207$:
                                   1732 ;	main.c:521: UEP0_T_LEN = 0;
      000652 75 DD 00         [24] 1733 	mov	_UEP0_T_LEN,#0x00
                                   1734 ;	main.c:522: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;
      000655 85 DC DC         [24] 1735 	mov	_UEP0_CTRL,_UEP0_CTRL
      000658 80 06            [24] 1736 	sjmp	00214$
      00065A                       1737 00211$:
                                   1738 ;	main.c:537: UEP0_T_LEN = 0;
      00065A 75 DD 00         [24] 1739 	mov	_UEP0_T_LEN,#0x00
                                   1740 ;	main.c:538: UEP0_CTRL |= UEP_R_RES_ACK | UEP_T_RES_ACK;  //状态阶段，对IN响应NAK
      00065D 85 DC DC         [24] 1741 	mov	_UEP0_CTRL,_UEP0_CTRL
                                   1742 ;	main.c:546: }
      000660                       1743 00214$:
                                   1744 ;	main.c:547: UIF_TRANSFER = 0;														   //写0清空中断
                                   1745 ;	assignBit
      000660 C2 D9            [12] 1746 	clr	_UIF_TRANSFER
      000662                       1747 00216$:
                                   1748 ;	main.c:549: if(UIF_BUS_RST)																 //设备模式USB总线复位中断
      000662 30 D8 29         [24] 1749 	jnb	_UIF_BUS_RST,00218$
                                   1750 ;	main.c:554: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      000665 75 DC 02         [24] 1751 	mov	_UEP0_CTRL,#0x02
                                   1752 ;	main.c:555: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK;
      000668 75 D2 12         [24] 1753 	mov	_UEP1_CTRL,#0x12
                                   1754 ;	main.c:556: UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK | UEP_R_RES_ACK;
      00066B 75 D4 12         [24] 1755 	mov	_UEP2_CTRL,#0x12
                                   1756 ;	main.c:557: USB_DEV_AD = 0x00;
      00066E 75 E3 00         [24] 1757 	mov	_USB_DEV_AD,#0x00
                                   1758 ;	main.c:558: UIF_SUSPEND = 0;
                                   1759 ;	assignBit
      000671 C2 DA            [12] 1760 	clr	_UIF_SUSPEND
                                   1761 ;	main.c:559: UIF_TRANSFER = 0;
                                   1762 ;	assignBit
      000673 C2 D9            [12] 1763 	clr	_UIF_TRANSFER
                                   1764 ;	main.c:560: UIF_BUS_RST = 0;															 //清中断标志
                                   1765 ;	assignBit
      000675 C2 D8            [12] 1766 	clr	_UIF_BUS_RST
                                   1767 ;	main.c:561: Midi_Input_Point = 0;   //循环缓冲区输入指针
      000677 78 6D            [12] 1768 	mov	r0,#_Midi_Input_Point
      000679 76 00            [12] 1769 	mov	@r0,#0x00
                                   1770 ;	main.c:562: Midi_Output_Point = 0;  //循环缓冲区读出指针
      00067B 78 6E            [12] 1771 	mov	r0,#_Midi_Output_Point
      00067D 76 00            [12] 1772 	mov	@r0,#0x00
                                   1773 ;	main.c:563: MidiByteCount = 0;	  //当前缓冲区剩余待取字节数
      00067F 78 6F            [12] 1774 	mov	r0,#_MidiByteCount
      000681 76 00            [12] 1775 	mov	@r0,#0x00
                                   1776 ;	main.c:564: USBByteCount = 0;	   //USB端点收到的长度
      000683 78 70            [12] 1777 	mov	r0,#_USBByteCount
      000685 76 00            [12] 1778 	mov	@r0,#0x00
                                   1779 ;	main.c:565: UsbConfig = 0;		  //清除配置值
      000687 75 0C 00         [24] 1780 	mov	_UsbConfig,#0x00
                                   1781 ;	main.c:566: UpPoint2_Busy = 0;
      00068A 78 72            [12] 1782 	mov	r0,#_UpPoint2_Busy
      00068C 76 00            [12] 1783 	mov	@r0,#0x00
      00068E                       1784 00218$:
                                   1785 ;	main.c:568: if (UIF_SUSPEND)																 //USB总线挂起/唤醒完成
                                   1786 ;	main.c:570: UIF_SUSPEND = 0;
                                   1787 ;	assignBit
      00068E 10 DA 02         [24] 1788 	jbc	_UIF_SUSPEND,00703$
      000691 80 23            [24] 1789 	sjmp	00225$
      000693                       1790 00703$:
                                   1791 ;	main.c:571: if ( USB_MIS_ST & bUMS_SUSPEND )											 //挂起
      000693 E5 DA            [12] 1792 	mov	a,_USB_MIS_ST
      000695 FF               [12] 1793 	mov	r7,a
      000696 30 E2 20         [24] 1794 	jnb	acc.2,00227$
                                   1795 ;	main.c:576: while ( XBUS_AUX & bUART0_TX )
      000699                       1796 00219$:
      000699 E5 A2            [12] 1797 	mov	a,_XBUS_AUX
      00069B FF               [12] 1798 	mov	r7,a
      00069C 20 E7 FA         [24] 1799 	jb	acc.7,00219$
                                   1800 ;	main.c:580: SAFE_MOD = 0x55;
      00069F 75 A1 55         [24] 1801 	mov	_SAFE_MOD,#0x55
                                   1802 ;	main.c:581: SAFE_MOD = 0xAA;
      0006A2 75 A1 AA         [24] 1803 	mov	_SAFE_MOD,#0xaa
                                   1804 ;	main.c:582: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD0_LO | bWAK_RXD1_LO;					  //USB或者RXD0/1有信号时可被唤醒
      0006A5 75 A9 C1         [24] 1805 	mov	_WAKE_CTRL,#0xc1
                                   1806 ;	main.c:583: PCON |= PD;																 //睡眠
      0006A8 43 87 02         [24] 1807 	orl	_PCON,#0x02
                                   1808 ;	main.c:584: SAFE_MOD = 0x55;
      0006AB 75 A1 55         [24] 1809 	mov	_SAFE_MOD,#0x55
                                   1810 ;	main.c:585: SAFE_MOD = 0xAA;
      0006AE 75 A1 AA         [24] 1811 	mov	_SAFE_MOD,#0xaa
                                   1812 ;	main.c:586: WAKE_CTRL = 0x00;
      0006B1 75 A9 00         [24] 1813 	mov	_WAKE_CTRL,#0x00
      0006B4 80 03            [24] 1814 	sjmp	00227$
      0006B6                       1815 00225$:
                                   1816 ;	main.c:590: USB_INT_FG = 0xFF;															 //清中断标志
      0006B6 75 D8 FF         [24] 1817 	mov	_USB_INT_FG,#0xff
      0006B9                       1818 00227$:
                                   1819 ;	main.c:593: }
      0006B9 D0 D0            [24] 1820 	pop	psw
      0006BB D0 00            [24] 1821 	pop	(0+0)
      0006BD D0 01            [24] 1822 	pop	(0+1)
      0006BF D0 02            [24] 1823 	pop	(0+2)
      0006C1 D0 03            [24] 1824 	pop	(0+3)
      0006C3 D0 04            [24] 1825 	pop	(0+4)
      0006C5 D0 05            [24] 1826 	pop	(0+5)
      0006C7 D0 06            [24] 1827 	pop	(0+6)
      0006C9 D0 07            [24] 1828 	pop	(0+7)
      0006CB D0 83            [24] 1829 	pop	dph
      0006CD D0 82            [24] 1830 	pop	dpl
      0006CF D0 F0            [24] 1831 	pop	b
      0006D1 D0 E0            [24] 1832 	pop	acc
      0006D3 D0 21            [24] 1833 	pop	bits
      0006D5 02 00 8C         [24] 1834 	ljmp	sdcc_atomic_maybe_rollback
                                   1835 ;------------------------------------------------------------
                                   1836 ;Allocation info for local variables in function 'main'
                                   1837 ;------------------------------------------------------------
                                   1838 ;i             Allocated with name '_main_i_10000_119'
                                   1839 ;r             Allocated to registers r7 
                                   1840 ;g             Allocated to registers 
                                   1841 ;b             Allocated to registers 
                                   1842 ;w             Allocated to registers 
                                   1843 ;------------------------------------------------------------
                                   1844 ;	main.c:614: void main()
                                   1845 ;	-----------------------------------------
                                   1846 ;	 function main
                                   1847 ;	-----------------------------------------
      0006D8                       1848 _main:
                                   1849 ;	main.c:617: CfgFsys();                   // Configure system clock
      0006D8 12 08 3A         [24] 1850 	lcall	_CfgFsys
                                   1851 ;	main.c:618: mDelaymS(5);                 // Wait for clock to stabilize
      0006DB 90 00 05         [24] 1852 	mov	dptr,#0x0005
      0006DE 12 08 6A         [24] 1853 	lcall	_mDelaymS
                                   1854 ;	main.c:621: sk6812_init();
      0006E1 12 07 CD         [24] 1855 	lcall	_sk6812_init
                                   1856 ;	main.c:625: sk6812_send_rgbw(255, 0, 0, 0);
      0006E4 75 18 00         [24] 1857 	mov	_sk6812_send_rgbw_PARM_2,#0x00
      0006E7 75 19 00         [24] 1858 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      0006EA 75 1A 00         [24] 1859 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      0006ED 75 82 FF         [24] 1860 	mov	dpl, #0xff
      0006F0 12 08 07         [24] 1861 	lcall	_sk6812_send_rgbw
                                   1862 ;	main.c:626: mDelaymS(1000);
      0006F3 90 03 E8         [24] 1863 	mov	dptr,#0x03e8
      0006F6 12 08 6A         [24] 1864 	lcall	_mDelaymS
                                   1865 ;	main.c:627: sk6812_send_rgbw(0, 0, 0, 0);
      0006F9 75 18 00         [24] 1866 	mov	_sk6812_send_rgbw_PARM_2,#0x00
      0006FC 75 19 00         [24] 1867 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      0006FF 75 1A 00         [24] 1868 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      000702 75 82 00         [24] 1869 	mov	dpl, #0x00
      000705 12 08 07         [24] 1870 	lcall	_sk6812_send_rgbw
                                   1871 ;	main.c:628: mDelaymS(500);
      000708 90 01 F4         [24] 1872 	mov	dptr,#0x01f4
      00070B 12 08 6A         [24] 1873 	lcall	_mDelaymS
                                   1874 ;	main.c:631: sk6812_send_rgbw(0, 255, 0, 0);
      00070E 75 18 FF         [24] 1875 	mov	_sk6812_send_rgbw_PARM_2,#0xff
      000711 75 19 00         [24] 1876 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      000714 75 1A 00         [24] 1877 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      000717 75 82 00         [24] 1878 	mov	dpl, #0x00
      00071A 12 08 07         [24] 1879 	lcall	_sk6812_send_rgbw
                                   1880 ;	main.c:632: mDelaymS(1000);
      00071D 90 03 E8         [24] 1881 	mov	dptr,#0x03e8
      000720 12 08 6A         [24] 1882 	lcall	_mDelaymS
                                   1883 ;	main.c:633: sk6812_send_rgbw(0, 0, 0, 0);
      000723 75 18 00         [24] 1884 	mov	_sk6812_send_rgbw_PARM_2,#0x00
      000726 75 19 00         [24] 1885 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      000729 75 1A 00         [24] 1886 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      00072C 75 82 00         [24] 1887 	mov	dpl, #0x00
      00072F 12 08 07         [24] 1888 	lcall	_sk6812_send_rgbw
                                   1889 ;	main.c:634: mDelaymS(500);
      000732 90 01 F4         [24] 1890 	mov	dptr,#0x01f4
      000735 12 08 6A         [24] 1891 	lcall	_mDelaymS
                                   1892 ;	main.c:637: sk6812_send_rgbw(0, 0, 255, 0);
      000738 75 18 00         [24] 1893 	mov	_sk6812_send_rgbw_PARM_2,#0x00
      00073B 75 19 FF         [24] 1894 	mov	_sk6812_send_rgbw_PARM_3,#0xff
      00073E 75 1A 00         [24] 1895 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      000741 75 82 00         [24] 1896 	mov	dpl, #0x00
      000744 12 08 07         [24] 1897 	lcall	_sk6812_send_rgbw
                                   1898 ;	main.c:638: mDelaymS(1000);
      000747 90 03 E8         [24] 1899 	mov	dptr,#0x03e8
      00074A 12 08 6A         [24] 1900 	lcall	_mDelaymS
                                   1901 ;	main.c:639: sk6812_send_rgbw(0, 0, 0, 0);
      00074D 75 18 00         [24] 1902 	mov	_sk6812_send_rgbw_PARM_2,#0x00
      000750 75 19 00         [24] 1903 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      000753 75 1A 00         [24] 1904 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      000756 75 82 00         [24] 1905 	mov	dpl, #0x00
      000759 12 08 07         [24] 1906 	lcall	_sk6812_send_rgbw
                                   1907 ;	main.c:640: mDelaymS(500);
      00075C 90 01 F4         [24] 1908 	mov	dptr,#0x01f4
      00075F 12 08 6A         [24] 1909 	lcall	_mDelaymS
                                   1910 ;	main.c:643: USBDeviceCfg();
      000762 12 01 2A         [24] 1911 	lcall	_USBDeviceCfg
                                   1912 ;	main.c:644: USBDeviceEndPointCfg();
      000765 12 01 54         [24] 1913 	lcall	_USBDeviceEndPointCfg
                                   1914 ;	main.c:645: USBDeviceIntCfg();
      000768 12 01 43         [24] 1915 	lcall	_USBDeviceIntCfg
                                   1916 ;	main.c:646: UEP0_T_LEN = 0;
      00076B 75 DD 00         [24] 1917 	mov	_UEP0_T_LEN,#0x00
                                   1918 ;	main.c:647: UEP1_T_LEN = 0;
      00076E 75 D3 00         [24] 1919 	mov	_UEP1_T_LEN,#0x00
                                   1920 ;	main.c:648: UEP2_T_LEN = 0;
      000771 75 D5 00         [24] 1921 	mov	_UEP2_T_LEN,#0x00
                                   1922 ;	main.c:651: sk6812_send_rgbw(0, 255, 0, 0);
      000774 75 18 FF         [24] 1923 	mov	_sk6812_send_rgbw_PARM_2,#0xff
      000777 75 19 00         [24] 1924 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      00077A 75 1A 00         [24] 1925 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      00077D 75 82 00         [24] 1926 	mov	dpl, #0x00
      000780 12 08 07         [24] 1927 	lcall	_sk6812_send_rgbw
                                   1928 ;	main.c:652: mDelaymS(200);
      000783 90 00 C8         [24] 1929 	mov	dptr,#0x00c8
      000786 12 08 6A         [24] 1930 	lcall	_mDelaymS
                                   1931 ;	main.c:653: sk6812_send_rgbw(0, 0, 0, 0);
      000789 75 18 00         [24] 1932 	mov	_sk6812_send_rgbw_PARM_2,#0x00
      00078C 75 19 00         [24] 1933 	mov	_sk6812_send_rgbw_PARM_3,#0x00
      00078F 75 1A 00         [24] 1934 	mov	_sk6812_send_rgbw_PARM_4,#0x00
      000792 75 82 00         [24] 1935 	mov	dpl, #0x00
      000795 12 08 07         [24] 1936 	lcall	_sk6812_send_rgbw
                                   1937 ;	main.c:655: while(1)
      000798                       1938 00107$:
                                   1939 ;	main.c:658: if(UsbConfig && USBByteCount)
      000798 E5 0C            [12] 1940 	mov	a,_UsbConfig
      00079A 60 FC            [24] 1941 	jz	00107$
      00079C 78 70            [12] 1942 	mov	r0,#_USBByteCount
      00079E E6               [12] 1943 	mov	a,@r0
      00079F 60 F7            [24] 1944 	jz	00107$
                                   1945 ;	main.c:662: if(USBByteCount >= 4) {
      0007A1 78 70            [12] 1946 	mov	r0,#_USBByteCount
      0007A3 B6 04 00         [24] 1947 	cjne	@r0,#0x04,00137$
      0007A6                       1948 00137$:
      0007A6 40 1C            [24] 1949 	jc	00102$
                                   1950 ;	main.c:664: uint8_t r = Ep2Buffer[0];
      0007A8 90 00 80         [24] 1951 	mov	dptr,#_Ep2Buffer
      0007AB E0               [24] 1952 	movx	a,@dptr
      0007AC FF               [12] 1953 	mov	r7,a
                                   1954 ;	main.c:665: uint8_t g = Ep2Buffer[1];
      0007AD 90 00 81         [24] 1955 	mov	dptr,#(_Ep2Buffer + 0x0001)
      0007B0 E0               [24] 1956 	movx	a,@dptr
      0007B1 F5 18            [12] 1957 	mov	_sk6812_send_rgbw_PARM_2,a
                                   1958 ;	main.c:666: uint8_t b = Ep2Buffer[2];
      0007B3 90 00 82         [24] 1959 	mov	dptr,#(_Ep2Buffer + 0x0002)
      0007B6 E0               [24] 1960 	movx	a,@dptr
      0007B7 F5 19            [12] 1961 	mov	_sk6812_send_rgbw_PARM_3,a
                                   1962 ;	main.c:667: uint8_t w = Ep2Buffer[3];
      0007B9 90 00 83         [24] 1963 	mov	dptr,#(_Ep2Buffer + 0x0003)
      0007BC E0               [24] 1964 	movx	a,@dptr
      0007BD F5 1A            [12] 1965 	mov	_sk6812_send_rgbw_PARM_4,a
                                   1966 ;	main.c:670: sk6812_send_rgbw(r, g, b, w);
      0007BF 8F 82            [24] 1967 	mov	dpl, r7
      0007C1 12 08 07         [24] 1968 	lcall	_sk6812_send_rgbw
      0007C4                       1969 00102$:
                                   1970 ;	main.c:674: USBByteCount = 0;
      0007C4 78 70            [12] 1971 	mov	r0,#_USBByteCount
      0007C6 76 00            [12] 1972 	mov	@r0,#0x00
                                   1973 ;	main.c:677: UEP2_CTRL = UEP2_CTRL & ~ MASK_UEP_R_RES | UEP_R_RES_ACK;
      0007C8 53 D4 F3         [24] 1974 	anl	_UEP2_CTRL,#0xf3
                                   1975 ;	main.c:680: }
      0007CB 80 CB            [24] 1976 	sjmp	00107$
                                   1977 	.area CSEG    (CODE)
                                   1978 	.area CONST   (CODE)
                                   1979 	.area CONST   (CODE)
      000996                       1980 _DevDesc:
      000996 12                    1981 	.db #0x12	; 18
      000997 01                    1982 	.db #0x01	; 1
      000998 00                    1983 	.db #0x00	; 0
      000999 02                    1984 	.db #0x02	; 2
      00099A 00                    1985 	.db #0x00	; 0
      00099B 00                    1986 	.db #0x00	; 0
      00099C 00                    1987 	.db #0x00	; 0
      00099D 08                    1988 	.db #0x08	; 8
      00099E C0                    1989 	.db #0xc0	; 192
      00099F 16                    1990 	.db #0x16	; 22
      0009A0 52                    1991 	.db #0x52	; 82	'R'
      0009A1 55                    1992 	.db #0x55	; 85	'U'
      0009A2 00                    1993 	.db #0x00	; 0
      0009A3 01                    1994 	.db #0x01	; 1
      0009A4 01                    1995 	.db #0x01	; 1
      0009A5 02                    1996 	.db #0x02	; 2
      0009A6 03                    1997 	.db #0x03	; 3
      0009A7 01                    1998 	.db #0x01	; 1
                                   1999 	.area CSEG    (CODE)
                                   2000 	.area CONST   (CODE)
      0009A8                       2001 _CfgDesc:
      0009A8 09                    2002 	.db #0x09	; 9
      0009A9 02                    2003 	.db #0x02	; 2
      0009AA 22                    2004 	.db #0x22	; 34
      0009AB 00                    2005 	.db #0x00	; 0
      0009AC 01                    2006 	.db #0x01	; 1
      0009AD 01                    2007 	.db #0x01	; 1
      0009AE 00                    2008 	.db #0x00	; 0
      0009AF 80                    2009 	.db #0x80	; 128
      0009B0 32                    2010 	.db #0x32	; 50	'2'
      0009B1 09                    2011 	.db #0x09	; 9
      0009B2 04                    2012 	.db #0x04	; 4
      0009B3 00                    2013 	.db #0x00	; 0
      0009B4 00                    2014 	.db #0x00	; 0
      0009B5 01                    2015 	.db #0x01	; 1
      0009B6 03                    2016 	.db #0x03	; 3
      0009B7 00                    2017 	.db #0x00	; 0
      0009B8 00                    2018 	.db #0x00	; 0
      0009B9 00                    2019 	.db #0x00	; 0
      0009BA 09                    2020 	.db #0x09	; 9
      0009BB 21                    2021 	.db #0x21	; 33
      0009BC 11                    2022 	.db #0x11	; 17
      0009BD 01                    2023 	.db #0x01	; 1
      0009BE 00                    2024 	.db #0x00	; 0
      0009BF 01                    2025 	.db #0x01	; 1
      0009C0 22                    2026 	.db #0x22	; 34
      0009C1 2A                    2027 	.db #0x2a	; 42
      0009C2 00                    2028 	.db #0x00	; 0
      0009C3 07                    2029 	.db #0x07	; 7
      0009C4 05                    2030 	.db #0x05	; 5
      0009C5 82                    2031 	.db #0x82	; 130
      0009C6 03                    2032 	.db #0x03	; 3
      0009C7 08                    2033 	.db #0x08	; 8
      0009C8 00                    2034 	.db #0x00	; 0
      0009C9 01                    2035 	.db #0x01	; 1
                                   2036 	.area CSEG    (CODE)
                                   2037 	.area CONST   (CODE)
      0009CA                       2038 _HIDRepDesc:
      0009CA 06                    2039 	.db #0x06	; 6
      0009CB 00                    2040 	.db #0x00	; 0
      0009CC FF                    2041 	.db #0xff	; 255
      0009CD 09                    2042 	.db #0x09	; 9
      0009CE 01                    2043 	.db #0x01	; 1
      0009CF A1                    2044 	.db #0xa1	; 161
      0009D0 01                    2045 	.db #0x01	; 1
      0009D1 09                    2046 	.db #0x09	; 9
      0009D2 02                    2047 	.db #0x02	; 2
      0009D3 15                    2048 	.db #0x15	; 21
      0009D4 00                    2049 	.db #0x00	; 0
      0009D5 26                    2050 	.db #0x26	; 38
      0009D6 FF                    2051 	.db #0xff	; 255
      0009D7 00                    2052 	.db #0x00	; 0
      0009D8 75                    2053 	.db #0x75	; 117	'u'
      0009D9 08                    2054 	.db #0x08	; 8
      0009DA 95                    2055 	.db #0x95	; 149
      0009DB 08                    2056 	.db #0x08	; 8
      0009DC 81                    2057 	.db #0x81	; 129
      0009DD 02                    2058 	.db #0x02	; 2
      0009DE 09                    2059 	.db #0x09	; 9
      0009DF 03                    2060 	.db #0x03	; 3
      0009E0 15                    2061 	.db #0x15	; 21
      0009E1 00                    2062 	.db #0x00	; 0
      0009E2 26                    2063 	.db #0x26	; 38
      0009E3 FF                    2064 	.db #0xff	; 255
      0009E4 00                    2065 	.db #0x00	; 0
      0009E5 75                    2066 	.db #0x75	; 117	'u'
      0009E6 08                    2067 	.db #0x08	; 8
      0009E7 95                    2068 	.db #0x95	; 149
      0009E8 08                    2069 	.db #0x08	; 8
      0009E9 91                    2070 	.db #0x91	; 145
      0009EA 02                    2071 	.db #0x02	; 2
      0009EB C0                    2072 	.db #0xc0	; 192
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      0009EC                       2075 _LangDes:
      0009EC 04                    2076 	.db #0x04	; 4
      0009ED 03                    2077 	.db #0x03	; 3
      0009EE 09                    2078 	.db #0x09	; 9
      0009EF 04                    2079 	.db #0x04	; 4
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
      0009F0                       2082 _SerDes:
      0009F0 0E                    2083 	.db #0x0e	; 14
      0009F1 03                    2084 	.db #0x03	; 3
      0009F2 76                    2085 	.db #0x76	; 118	'v'
      0009F3 00                    2086 	.db #0x00	; 0
      0009F4 31                    2087 	.db #0x31	; 49	'1'
      0009F5 00                    2088 	.db #0x00	; 0
      0009F6 2E                    2089 	.db #0x2e	; 46
      0009F7 00                    2090 	.db #0x00	; 0
      0009F8 30                    2091 	.db #0x30	; 48	'0'
      0009F9 00                    2092 	.db #0x00	; 0
      0009FA 2E                    2093 	.db #0x2e	; 46
      0009FB 00                    2094 	.db #0x00	; 0
      0009FC 30                    2095 	.db #0x30	; 48	'0'
      0009FD 00                    2096 	.db #0x00	; 0
                                   2097 	.area CSEG    (CODE)
                                   2098 	.area CONST   (CODE)
      0009FE                       2099 _Prod_Des:
      0009FE 1E                    2100 	.db #0x1e	; 30
      0009FF 03                    2101 	.db #0x03	; 3
      000A00 4A                    2102 	.db #0x4a	; 74	'J'
      000A01 00                    2103 	.db #0x00	; 0
      000A02 6F                    2104 	.db #0x6f	; 111	'o'
      000A03 00                    2105 	.db #0x00	; 0
      000A04 68                    2106 	.db #0x68	; 104	'h'
      000A05 00                    2107 	.db #0x00	; 0
      000A06 6E                    2108 	.db #0x6e	; 110	'n'
      000A07 00                    2109 	.db #0x00	; 0
      000A08 6E                    2110 	.db #0x6e	; 110	'n'
      000A09 00                    2111 	.db #0x00	; 0
      000A0A 79                    2112 	.db #0x79	; 121	'y'
      000A0B 00                    2113 	.db #0x00	; 0
      000A0C 35                    2114 	.db #0x35	; 53	'5'
      000A0D 00                    2115 	.db #0x00	; 0
      000A0E 35                    2116 	.db #0x35	; 53	'5'
      000A0F 00                    2117 	.db #0x00	; 0
      000A10 32                    2118 	.db #0x32	; 50	'2'
      000A11 00                    2119 	.db #0x00	; 0
      000A12 2D                    2120 	.db #0x2d	; 45
      000A13 00                    2121 	.db #0x00	; 0
      000A14 43                    2122 	.db #0x43	; 67	'C'
      000A15 00                    2123 	.db #0x00	; 0
      000A16 6F                    2124 	.db #0x6f	; 111	'o'
      000A17 00                    2125 	.db #0x00	; 0
      000A18 72                    2126 	.db #0x72	; 114	'r'
      000A19 00                    2127 	.db #0x00	; 0
      000A1A 65                    2128 	.db #0x65	; 101	'e'
      000A1B 00                    2129 	.db #0x00	; 0
                                   2130 	.area CSEG    (CODE)
                                   2131 	.area CONST   (CODE)
      000A1C                       2132 _Manuf_Des:
      000A1C 16                    2133 	.db #0x16	; 22
      000A1D 03                    2134 	.db #0x03	; 3
      000A1E 4A                    2135 	.db #0x4a	; 74	'J'
      000A1F 00                    2136 	.db #0x00	; 0
      000A20 6F                    2137 	.db #0x6f	; 111	'o'
      000A21 00                    2138 	.db #0x00	; 0
      000A22 68                    2139 	.db #0x68	; 104	'h'
      000A23 00                    2140 	.db #0x00	; 0
      000A24 6E                    2141 	.db #0x6e	; 110	'n'
      000A25 00                    2142 	.db #0x00	; 0
      000A26 6E                    2143 	.db #0x6e	; 110	'n'
      000A27 00                    2144 	.db #0x00	; 0
      000A28 79                    2145 	.db #0x79	; 121	'y'
      000A29 00                    2146 	.db #0x00	; 0
      000A2A 35                    2147 	.db #0x35	; 53	'5'
      000A2B 00                    2148 	.db #0x00	; 0
      000A2C 35                    2149 	.db #0x35	; 53	'5'
      000A2D 00                    2150 	.db #0x00	; 0
      000A2E 32                    2151 	.db #0x32	; 50	'2'
      000A2F 00                    2152 	.db #0x00	; 0
      000A30 2E                    2153 	.db #0x2e	; 46
      000A31 00                    2154 	.db #0x00	; 0
                                   2155 	.area CSEG    (CODE)
                                   2156 	.area XINIT   (CODE)
                                   2157 	.area CABS    (ABS,CODE)
