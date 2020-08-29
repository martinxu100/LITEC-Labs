;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module Lab_6_New
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _read_keypad
	.globl _strlen
	.globl _putchar
	.globl _vsprintf
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _BAT
	.globl _DS7
	.globl _DS6
	.globl _DS5
	.globl _DS4
	.globl _DS3
	.globl _DS2
	.globl _DS1
	.globl _DS0
	.globl _BUS_SCL
	.globl _BUS_TOE
	.globl _BUS_FTE
	.globl _BUS_AA
	.globl _BUS_INT
	.globl _BUS_STOP
	.globl _BUS_START
	.globl _BUS_EN
	.globl _BUS_BUSY
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _TXBSY
	.globl _SLVSEL
	.globl _MSTEN
	.globl _SPIEN
	.globl _AD0EN
	.globl _ADCEN
	.globl _AD0TM
	.globl _ADCTM
	.globl _AD0INT
	.globl _ADCINT
	.globl _AD0BUSY
	.globl _ADBUSY
	.globl _AD0CM1
	.globl _ADSTM1
	.globl _AD0CM0
	.globl _ADSTM0
	.globl _AD0WINT
	.globl _ADWINT
	.globl _AD0LJST
	.globl _ADLJST
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _BUSY
	.globl _ENSMB
	.globl _STA
	.globl _STO
	.globl _SI
	.globl _AA
	.globl _SMBFTE
	.globl _SMBTOE
	.globl _PT2
	.globl _PS
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0MODE
	.globl _SM00
	.globl _SM0
	.globl _SM10
	.globl _SM1
	.globl _MCE0
	.globl _SM20
	.globl _SM2
	.globl _REN0
	.globl _REN
	.globl _TB80
	.globl _TB8
	.globl _RB80
	.globl _RB8
	.globl _TI0
	.globl _TI
	.globl _RI0
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _DAC1
	.globl _DAC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _RCAP4
	.globl _TMR4
	.globl _TMR3RL
	.globl _TMR3
	.globl _RCAP2
	.globl _TMR2
	.globl _TMR1
	.globl _TMR0
	.globl _WDTCN
	.globl _PCA0CPH4
	.globl _PCA0CPH3
	.globl _PCA0CPH2
	.globl _PCA0CPH1
	.globl _PCA0CPH0
	.globl _PCA0H
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _TH4
	.globl _TL4
	.globl _SADDR1
	.globl _SBUF1
	.globl _SCON1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPL4
	.globl _PCA0CPL3
	.globl _PCA0CPL2
	.globl _PCA0CPL1
	.globl _PCA0CPL0
	.globl _PCA0L
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _RCAP4H
	.globl _RCAP4L
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _DAC1CN
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0CN
	.globl _DAC0H
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T4CON
	.globl _T2CON
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _P1MDIN
	.globl _ADC0CF
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P74OUT
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl __XPAGE
	.globl _EMI0CN
	.globl _SADEN1
	.globl _P3IF
	.globl _AMX1SL
	.globl _ADC1CF
	.globl _ADC1CN
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _PRT3CF
	.globl _P2MDOUT
	.globl _PRT2CF
	.globl _P1MDOUT
	.globl _PRT1CF
	.globl _P0MDOUT
	.globl _PRT0CF
	.globl _EMI0CF
	.globl _EMI0TC
	.globl _P2
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _SPI0CKR
	.globl _ADC1
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF0
	.globl _SBUF
	.globl _SCON0
	.globl _SCON
	.globl _P7
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _angle
	.globl _temp_pw
	.globl _dk
	.globl _pk
	.globl _error
	.globl _desired_heading
	.globl _new_heading
	.globl _heading
	.globl _printcounts
	.globl _h_count
	.globl _counts
	.globl _PW
	.globl _PW_MIN
	.globl _PW_MAX
	.globl _PW_CENTER
	.globl _new_range
	.globl _ranger_count
	.globl _distance
	.globl _dr_input_data
	.globl _i2c_read_data_PARM_4
	.globl _i2c_read_data_PARM_3
	.globl _i2c_read_data_PARM_2
	.globl _i2c_write_data_PARM_4
	.globl _i2c_write_data_PARM_3
	.globl _i2c_write_data_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _Data2
	.globl _lcd_print
	.globl _lcd_clear
	.globl _kpd_input
	.globl _delay_time
	.globl _i2c_start
	.globl _i2c_write
	.globl _i2c_write_and_stop
	.globl _i2c_read
	.globl _i2c_read_and_stop
	.globl _i2c_write_data
	.globl _i2c_read_data
	.globl _Accel_Init
	.globl _Accel_Init_C
	.globl _setAngle
	.globl _ReadRanger
	.globl _ReadCompass
	.globl _errHeading1
	.globl _errHeading2
	.globl _errHeading3
	.globl _getGain
	.globl _getHeading
	.globl _printData
	.globl _Port_Init
	.globl _XBR0_Init
	.globl _PCA_Init
	.globl _Interrupt_Init
	.globl _PCA_ISR
	.globl _SMB_Init
	.globl _ADC_Init
	.globl _read_AD_input
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$P4$0$0 == 0x0084
_P4	=	0x0084
G$P5$0$0 == 0x0085
_P5	=	0x0085
G$P6$0$0 == 0x0086
_P6	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$P7$0$0 == 0x0096
_P7	=	0x0096
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$ADC1$0$0 == 0x009c
_ADC1	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$CPT0CN$0$0 == 0x009e
_CPT0CN	=	0x009e
G$CPT1CN$0$0 == 0x009f
_CPT1CN	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$PRT0CF$0$0 == 0x00a4
_PRT0CF	=	0x00a4
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$PRT1CF$0$0 == 0x00a5
_PRT1CF	=	0x00a5
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$PRT2CF$0$0 == 0x00a6
_PRT2CF	=	0x00a6
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$PRT3CF$0$0 == 0x00a7
_PRT3CF	=	0x00a7
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$ADC1CN$0$0 == 0x00aa
_ADC1CN	=	0x00aa
G$ADC1CF$0$0 == 0x00ab
_ADC1CF	=	0x00ab
G$AMX1SL$0$0 == 0x00ac
_AMX1SL	=	0x00ac
G$P3IF$0$0 == 0x00ad
_P3IF	=	0x00ad
G$SADEN1$0$0 == 0x00ae
_SADEN1	=	0x00ae
G$EMI0CN$0$0 == 0x00af
_EMI0CN	=	0x00af
G$_XPAGE$0$0 == 0x00af
__XPAGE	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$P74OUT$0$0 == 0x00b5
_P74OUT	=	0x00b5
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$P1MDIN$0$0 == 0x00bd
_P1MDIN	=	0x00bd
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T4CON$0$0 == 0x00c9
_T4CON	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1L$0$0 == 0x00d5
_DAC1L	=	0x00d5
G$DAC1H$0$0 == 0x00d6
_DAC1H	=	0x00d6
G$DAC1CN$0$0 == 0x00d7
_DAC1CN	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$RCAP4L$0$0 == 0x00e4
_RCAP4L	=	0x00e4
G$RCAP4H$0$0 == 0x00e5
_RCAP4H	=	0x00e5
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0L$0$0 == 0x00e9
_PCA0L	=	0x00e9
G$PCA0CPL0$0$0 == 0x00ea
_PCA0CPL0	=	0x00ea
G$PCA0CPL1$0$0 == 0x00eb
_PCA0CPL1	=	0x00eb
G$PCA0CPL2$0$0 == 0x00ec
_PCA0CPL2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPL4$0$0 == 0x00ee
_PCA0CPL4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SCON1$0$0 == 0x00f1
_SCON1	=	0x00f1
G$SBUF1$0$0 == 0x00f2
_SBUF1	=	0x00f2
G$SADDR1$0$0 == 0x00f3
_SADDR1	=	0x00f3
G$TL4$0$0 == 0x00f4
_TL4	=	0x00f4
G$TH4$0$0 == 0x00f5
_TH4	=	0x00f5
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0H$0$0 == 0x00f9
_PCA0H	=	0x00f9
G$PCA0CPH0$0$0 == 0x00fa
_PCA0CPH0	=	0x00fa
G$PCA0CPH1$0$0 == 0x00fb
_PCA0CPH1	=	0x00fb
G$PCA0CPH2$0$0 == 0x00fc
_PCA0CPH2	=	0x00fc
G$PCA0CPH3$0$0 == 0x00fd
_PCA0CPH3	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$TMR0$0$0 == 0x8c8a
_TMR0	=	0x8c8a
G$TMR1$0$0 == 0x8d8b
_TMR1	=	0x8d8b
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR4$0$0 == 0xf5f4
_TMR4	=	0xf5f4
G$RCAP4$0$0 == 0xe5e4
_RCAP4	=	0xe5e4
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd6d5
_DAC1	=	0xd6d5
G$PCA0$0$0 == 0xf9e9
_PCA0	=	0xf9e9
G$PCA0CP0$0$0 == 0xfaea
_PCA0CP0	=	0xfaea
G$PCA0CP1$0$0 == 0xfbeb
_PCA0CP1	=	0xfbeb
G$PCA0CP2$0$0 == 0xfcec
_PCA0CP2	=	0xfcec
G$PCA0CP3$0$0 == 0xfded
_PCA0CP3	=	0xfded
G$PCA0CP4$0$0 == 0xfeee
_PCA0CP4	=	0xfeee
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$ADLJST$0$0 == 0x00e8
_ADLJST	=	0x00e8
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$ADWINT$0$0 == 0x00e9
_ADWINT	=	0x00e9
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$ADSTM0$0$0 == 0x00ea
_ADSTM0	=	0x00ea
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$ADSTM1$0$0 == 0x00eb
_ADSTM1	=	0x00eb
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$ADBUSY$0$0 == 0x00ec
_ADBUSY	=	0x00ec
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$ADCINT$0$0 == 0x00ed
_ADCINT	=	0x00ed
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$ADCTM$0$0 == 0x00ee
_ADCTM	=	0x00ee
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$ADCEN$0$0 == 0x00ef
_ADCEN	=	0x00ef
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$MSTEN$0$0 == 0x00f9
_MSTEN	=	0x00f9
G$SLVSEL$0$0 == 0x00fa
_SLVSEL	=	0x00fa
G$TXBSY$0$0 == 0x00fb
_TXBSY	=	0x00fb
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$BUS_BUSY$0$0 == 0x00c7
_BUS_BUSY	=	0x00c7
G$BUS_EN$0$0 == 0x00c6
_BUS_EN	=	0x00c6
G$BUS_START$0$0 == 0x00c5
_BUS_START	=	0x00c5
G$BUS_STOP$0$0 == 0x00c4
_BUS_STOP	=	0x00c4
G$BUS_INT$0$0 == 0x00c3
_BUS_INT	=	0x00c3
G$BUS_AA$0$0 == 0x00c2
_BUS_AA	=	0x00c2
G$BUS_FTE$0$0 == 0x00c1
_BUS_FTE	=	0x00c1
G$BUS_TOE$0$0 == 0x00c0
_BUS_TOE	=	0x00c0
G$BUS_SCL$0$0 == 0x0083
_BUS_SCL	=	0x0083
G$DS0$0$0 == 0x00b0
_DS0	=	0x00b0
G$DS1$0$0 == 0x00b1
_DS1	=	0x00b1
G$DS2$0$0 == 0x00b2
_DS2	=	0x00b2
G$DS3$0$0 == 0x00b3
_DS3	=	0x00b3
G$DS4$0$0 == 0x00b4
_DS4	=	0x00b4
G$DS5$0$0 == 0x00b5
_DS5	=	0x00b5
G$DS6$0$0 == 0x00b6
_DS6	=	0x00b6
G$DS7$0$0 == 0x00b7
_DS7	=	0x00b7
G$BAT$0$0 == 0x0093
_BAT	=	0x0093
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$Data2$0$0==.
_Data2::
	.ds 3
LLab_6_New.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
LLab_6_New.lcd_clear$NumBytes$1$85==.
_lcd_clear_NumBytes_1_85:
	.ds 1
LLab_6_New.lcd_clear$Cmd$1$85==.
_lcd_clear_Cmd_1_85:
	.ds 2
LLab_6_New.read_keypad$Data$1$86==.
_read_keypad_Data_1_86:
	.ds 2
LLab_6_New.i2c_write_data$start_reg$1$105==.
_i2c_write_data_PARM_2:
	.ds 1
LLab_6_New.i2c_write_data$buffer$1$105==.
_i2c_write_data_PARM_3:
	.ds 3
LLab_6_New.i2c_write_data$num_bytes$1$105==.
_i2c_write_data_PARM_4:
	.ds 1
LLab_6_New.i2c_read_data$start_reg$1$107==.
_i2c_read_data_PARM_2:
	.ds 1
LLab_6_New.i2c_read_data$buffer$1$107==.
_i2c_read_data_PARM_3:
	.ds 3
LLab_6_New.i2c_read_data$num_bytes$1$107==.
_i2c_read_data_PARM_4:
	.ds 1
G$dr_input_data$0$0==.
_dr_input_data::
	.ds 1
G$distance$0$0==.
_distance::
	.ds 2
G$ranger_count$0$0==.
_ranger_count::
	.ds 1
G$new_range$0$0==.
_new_range::
	.ds 1
G$PW_CENTER$0$0==.
_PW_CENTER::
	.ds 2
G$PW_MAX$0$0==.
_PW_MAX::
	.ds 2
G$PW_MIN$0$0==.
_PW_MIN::
	.ds 2
G$PW$0$0==.
_PW::
	.ds 2
G$counts$0$0==.
_counts::
	.ds 2
G$h_count$0$0==.
_h_count::
	.ds 1
G$printcounts$0$0==.
_printcounts::
	.ds 1
G$heading$0$0==.
_heading::
	.ds 2
G$new_heading$0$0==.
_new_heading::
	.ds 2
G$desired_heading$0$0==.
_desired_heading::
	.ds 2
G$error$0$0==.
_error::
	.ds 2
G$pk$0$0==.
_pk::
	.ds 2
G$dk$0$0==.
_dk::
	.ds 2
G$temp_pw$0$0==.
_temp_pw::
	.ds 2
G$angle$0$0==.
_angle::
	.ds 2
LLab_6_New.ReadRanger$dr_data_array$2$168==.
_ReadRanger_dr_data_array_2_168:
	.ds 2
LLab_6_New.ReadCompass$Data$2$171==.
_ReadCompass_Data_2_171:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
LLab_6_New.lcd_print$text$1$81==.
_lcd_print_text_1_81:
	.ds 80
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
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
	reti
	.ds	7
	ljmp	_PCA_ISR
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
	C$Lab_6_New.c$33$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:33: unsigned char dr_input_data[0] = {0x51};	//setting to get range back in cm
	mov	_dr_input_data,#0x51
	C$Lab_6_New.c$39$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:39: unsigned int PW_CENTER = 2765; 				//Steering initialization
	mov	_PW_CENTER,#0xcd
	mov	(_PW_CENTER + 1),#0x0a
	C$Lab_6_New.c$40$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:40: unsigned int PW_MAX = 3502;					//
	mov	_PW_MAX,#0xae
	mov	(_PW_MAX + 1),#0x0d
	C$Lab_6_New.c$41$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:41: unsigned int PW_MIN = 2028;					//
	mov	_PW_MIN,#0xec
	mov	(_PW_MIN + 1),#0x07
	C$Lab_6_New.c$43$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:43: unsigned int counts = 0;					//count variables
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab_6_New.c$48$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:48: unsigned int desired_heading = 0;			//heading desired by user input
	mov	_desired_heading,a
	mov	(_desired_heading + 1),a
	C$Lab_6_New.c$50$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:50: signed int pk = 0;							//steering multiplier
	mov	_pk,a
	mov	(_pk + 1),a
	C$Lab_6_New.c$51$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:51: signed int dk = 0;
	mov	_dk,a
	mov	(_dk + 1),a
	C$Lab_6_New.c$54$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:54: signed int angle = 0;
	mov	_angle,a
	mov	(_angle + 1),a
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
;Allocation info for local variables in function 'SYSCLK_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$SYSCLK_Init$0$0 ==.
	C$c8051_SDCC.h$62$0$0 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
;	-----------------------------------------
;	 function SYSCLK_Init
;	-----------------------------------------
_SYSCLK_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$c8051_SDCC.h$66$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
	mov	_OSCXCN,#0x67
	C$c8051_SDCC.h$69$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
	mov	r6,#0x00
	mov	r7,#0x01
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$c8051_SDCC.h$71$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$c8051_SDCC.h$73$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
	mov	_OSCICN,#0x88
	C$c8051_SDCC.h$76$1$2 ==.
	XG$SYSCLK_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_Init'
;------------------------------------------------------------
	G$UART0_Init$0$0 ==.
	C$c8051_SDCC.h$84$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
;	-----------------------------------------
;	 function UART0_Init
;	-----------------------------------------
_UART0_Init:
	C$c8051_SDCC.h$86$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
	mov	_SCON0,#0x50
	C$c8051_SDCC.h$87$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
	mov	_TMOD,#0x20
	C$c8051_SDCC.h$88$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
	mov	_TH1,#0xdc
	C$c8051_SDCC.h$89$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
	setb	_TR1
	C$c8051_SDCC.h$90$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
	orl	_CKCON,#0x10
	C$c8051_SDCC.h$91$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
	orl	_PCON,#0x80
	C$c8051_SDCC.h$93$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
	setb	_TI0
	C$c8051_SDCC.h$94$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
	orl	_P0MDOUT,#0x01
	C$c8051_SDCC.h$95$1$4 ==.
	XG$UART0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sys_Init'
;------------------------------------------------------------
	G$Sys_Init$0$0 ==.
	C$c8051_SDCC.h$103$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
;	-----------------------------------------
;	 function Sys_Init
;	-----------------------------------------
_Sys_Init:
	C$c8051_SDCC.h$105$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
	mov	_WDTCN,#0xde
	C$c8051_SDCC.h$106$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
	mov	_WDTCN,#0xad
	C$c8051_SDCC.h$108$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
	lcall	_SYSCLK_Init
	C$c8051_SDCC.h$109$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
	lcall	_UART0_Init
	C$c8051_SDCC.h$111$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
	orl	_XBR0,#0x04
	C$c8051_SDCC.h$112$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
	orl	_XBR2,#0x40
	C$c8051_SDCC.h$113$1$6 ==.
	XG$Sys_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$c8051_SDCC.h$129$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$c8051_SDCC.h$132$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
00101$:
	C$c8051_SDCC.h$133$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
	jbc	_TI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$134$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
	mov	_SBUF0,r7
	C$c8051_SDCC.h$135$1$8 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$c8051_SDCC.h$154$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$c8051_SDCC.h$157$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
00101$:
	C$c8051_SDCC.h$158$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
	jbc	_RI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$159$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
	mov	r7,_SBUF0
	C$c8051_SDCC.h$160$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
	mov	dpl,r7
	push	ar7
	lcall	_putchar
	pop	ar7
	C$c8051_SDCC.h$161$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
	mov	dpl,r7
	C$c8051_SDCC.h$162$1$10 ==.
	XG$getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_nw'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$getchar_nw$0$0 ==.
	C$c8051_SDCC.h$168$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
;	-----------------------------------------
;	 function getchar_nw
;	-----------------------------------------
_getchar_nw:
	C$c8051_SDCC.h$171$1$12 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
	jb	_RI0,00102$
	mov	dpl,#0xff
	sjmp	00104$
00102$:
	C$c8051_SDCC.h$174$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
	clr	_RI0
	C$c8051_SDCC.h$175$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
	mov	dpl,_SBUF0
	C$c8051_SDCC.h$176$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
	lcall	_putchar
	C$c8051_SDCC.h$177$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
	mov	dpl,_SBUF0
00104$:
	C$c8051_SDCC.h$179$1$12 ==.
	XG$getchar_nw$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_print'
;------------------------------------------------------------
;fmt                       Allocated to stack - _bp -5
;len                       Allocated to registers r6 
;i                         Allocated to registers 
;ap                        Allocated to registers 
;text                      Allocated with name '_lcd_print_text_1_81'
;------------------------------------------------------------
	G$lcd_print$0$0 ==.
	C$i2c.h$84$1$12 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:84: void lcd_print(const char *fmt, ...)
;	-----------------------------------------
;	 function lcd_print
;	-----------------------------------------
_lcd_print:
	push	_bp
	mov	_bp,sp
	C$i2c.h$90$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:90: if ( strlen(fmt) <= 0 ) return;         //If there is no data to print, return
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_strlen
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00102$
	sjmp	00109$
00102$:
	C$i2c.h$92$2$82 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:92: va_start(ap, fmt);
	mov	a,_bp
	add	a,#0xfb
	mov	r7,a
	mov	_vsprintf_PARM_3,r7
	C$i2c.h$93$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:93: vsprintf(text, fmt, ap);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	_vsprintf_PARM_2,@r0
	inc	r0
	mov	(_vsprintf_PARM_2 + 1),@r0
	inc	r0
	mov	(_vsprintf_PARM_2 + 2),@r0
	mov	dptr,#_lcd_print_text_1_81
	mov	b,#0x00
	lcall	_vsprintf
	C$i2c.h$96$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:96: len = strlen(text);
	mov	dptr,#_lcd_print_text_1_81
	mov	b,#0x00
	lcall	_strlen
	mov	r6,dpl
	C$i2c.h$97$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00105$
	C$i2c.h$99$2$84 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:99: if(text[i] == (unsigned char)'\n') text[i] = 13;
	mov	a,r7
	add	a,#_lcd_print_text_1_81
	mov	dpl,a
	clr	a
	addc	a,#(_lcd_print_text_1_81 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x0a,00108$
	mov	a,r7
	add	a,#_lcd_print_text_1_81
	mov	dpl,a
	clr	a
	addc	a,#(_lcd_print_text_1_81 >> 8)
	mov	dph,a
	mov	a,#0x0d
	movx	@dptr,a
00108$:
	C$i2c.h$97$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:97: for(i=0; i<len; i++)
	inc	r7
	sjmp	00107$
00105$:
	C$i2c.h$102$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:102: i2c_write_data(0xC6, 0x00, text, len);
	mov	_i2c_write_data_PARM_3,#_lcd_print_text_1_81
	mov	(_i2c_write_data_PARM_3 + 1),#(_lcd_print_text_1_81 >> 8)
	mov	(_i2c_write_data_PARM_3 + 2),#0x00
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,r6
	mov	dpl,#0xc6
	lcall	_i2c_write_data
00109$:
	pop	_bp
	C$i2c.h$103$1$81 ==.
	XG$lcd_print$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
;NumBytes                  Allocated with name '_lcd_clear_NumBytes_1_85'
;Cmd                       Allocated with name '_lcd_clear_Cmd_1_85'
;------------------------------------------------------------
	G$lcd_clear$0$0 ==.
	C$i2c.h$106$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:106: void lcd_clear()
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
	C$i2c.h$108$1$81 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:108: unsigned char NumBytes=0, Cmd[2];
	mov	_lcd_clear_NumBytes_1_85,#0x00
	C$i2c.h$110$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:110: while(NumBytes < 64) i2c_read_data(0xC6, 0x00, &NumBytes, 1);
00101$:
	mov	a,#0x100 - 0x40
	add	a,_lcd_clear_NumBytes_1_85
	jc	00103$
	mov	_i2c_read_data_PARM_3,#_lcd_clear_NumBytes_1_85
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x00
	mov	_i2c_read_data_PARM_4,#0x01
	mov	dpl,#0xc6
	lcall	_i2c_read_data
	sjmp	00101$
00103$:
	C$i2c.h$112$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:112: Cmd[0] = 12;
	mov	_lcd_clear_Cmd_1_85,#0x0c
	C$i2c.h$113$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:113: i2c_write_data(0xC6, 0x00, Cmd, 1);
	mov	_i2c_write_data_PARM_3,#_lcd_clear_Cmd_1_85
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0xc6
	lcall	_i2c_write_data
	C$i2c.h$114$1$85 ==.
	XG$lcd_clear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_keypad'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;Data                      Allocated with name '_read_keypad_Data_1_86'
;------------------------------------------------------------
	G$read_keypad$0$0 ==.
	C$i2c.h$117$1$85 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:117: char read_keypad()
;	-----------------------------------------
;	 function read_keypad
;	-----------------------------------------
_read_keypad:
	C$i2c.h$121$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:121: i2c_read_data(0xC6, 0x01, Data, 2); //Read I2C data on address 192, register 1, 2 bytes of data.
	mov	_i2c_read_data_PARM_3,#_read_keypad_Data_1_86
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x01
	mov	_i2c_read_data_PARM_4,#0x02
	mov	dpl,#0xc6
	lcall	_i2c_read_data
	C$i2c.h$122$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:122: if(Data[0] == 0xFF) return 0;   //No response on bus, no display
	mov	a,#0xff
	cjne	a,_read_keypad_Data_1_86,00102$
	mov	dpl,#0x00
	sjmp	00116$
00102$:
	C$i2c.h$124$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
	mov	r7,#0x00
	mov	ar6,r7
00114$:
	C$i2c.h$126$2$87 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:126: if(Data[0] & (0x01 << i))   //find the ASCII value of the keypad read, if it is the current loop value
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00145$
00144$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00145$:
	djnz	b,00144$
	mov	r2,_read_keypad_Data_1_86
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00115$
	C$i2c.h$127$2$87 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:127: return i+49;
	mov	a,#0x31
	add	a,r7
	mov	dpl,a
	sjmp	00116$
00115$:
	C$i2c.h$124$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:124: for(i=0; i<8; i++)              //loop 8 times
	inc	r6
	mov	ar7,r6
	cjne	r6,#0x08,00147$
00147$:
	jc	00114$
	C$i2c.h$130$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:130: if(Data[1] & 0x01) return '9';  //if the value is equal to 9 return 9.
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.0,00107$
	mov	dpl,#0x39
	sjmp	00116$
00107$:
	C$i2c.h$132$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:132: if(Data[1] & 0x02) return '*';  //if the value is equal to the star.
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.1,00109$
	mov	dpl,#0x2a
	sjmp	00116$
00109$:
	C$i2c.h$134$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:134: if(Data[1] & 0x04) return '0';  //if the value is equal to the 0 key
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.2,00111$
	mov	dpl,#0x30
	sjmp	00116$
00111$:
	C$i2c.h$136$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:136: if(Data[1] & 0x08) return '#';  //if the value is equal to the pound key
	mov	a,(_read_keypad_Data_1_86 + 0x0001)
	jnb	acc.3,00113$
	mov	dpl,#0x23
	sjmp	00116$
00113$:
	C$i2c.h$138$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:138: return 0xFF;                    //else return a numerical -1 (0xFF)
	mov	dpl,#0xff
00116$:
	C$i2c.h$139$1$86 ==.
	XG$read_keypad$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'kpd_input'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;sum                       Allocated to registers r5 r6 
;key                       Allocated to registers r3 
;i                         Allocated to registers 
;------------------------------------------------------------
	G$kpd_input$0$0 ==.
	C$i2c.h$151$1$86 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:151: unsigned int kpd_input(char mode)
;	-----------------------------------------
;	 function kpd_input
;	-----------------------------------------
_kpd_input:
	mov	r7,dpl
	C$i2c.h$156$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:156: sum = 0;
	C$i2c.h$159$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:159: if(mode==0)lcd_print("\nType digits; end w/#");
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r7
	jnz	00102$
	push	ar6
	push	ar5
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
00102$:
	C$i2c.h$161$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:161: lcd_print("     %c%c%c%c%c",0x08,0x08,0x08,0x08,0x08);
	push	ar6
	push	ar5
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	C$i2c.h$163$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:163: delay_time(500000);             //Add 20ms delay before reading i2c in loop
	mov	dptr,#0xa120
	mov	b,#0x07
	clr	a
	lcall	_delay_time
	pop	ar5
	pop	ar6
	C$i2c.h$167$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
	mov	r7,#0x00
	C$i2c.h$169$3$92 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:169: while(((key=read_keypad()) == 0xFF) || (key == '*'))delay_time(10000);
00104$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_read_keypad
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar3,r4
	cjne	r4,#0xff,00146$
	sjmp	00105$
00146$:
	cjne	r3,#0x2a,00106$
00105$:
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_time
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00104$
00106$:
	C$i2c.h$170$2$90 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:170: if(key == '#')
	cjne	r3,#0x23,00114$
	C$i2c.h$172$3$91 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:172: while(read_keypad() == '#')delay_time(10000);
00107$:
	push	ar6
	push	ar5
	lcall	_read_keypad
	mov	r4,dpl
	pop	ar5
	pop	ar6
	cjne	r4,#0x23,00109$
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	push	ar6
	push	ar5
	lcall	_delay_time
	pop	ar5
	pop	ar6
	sjmp	00107$
00109$:
	C$i2c.h$173$3$91 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:173: return sum;
	mov	dpl,r5
	mov	dph,r6
	ljmp	00119$
00114$:
	C$i2c.h$177$3$92 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:177: lcd_print("%c", key);
	mov	ar2,r3
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar4
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	C$i2c.h$178$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:178: sum = sum*10 + key - '0';
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dptr,#0x000a
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	a,r0
	add	a,#0xd0
	mov	r5,a
	mov	a,r1
	addc	a,#0xff
	mov	r6,a
	C$i2c.h$179$3$92 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:179: while(read_keypad() == key)delay_time(10000); //wait for key to be released
00110$:
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_read_keypad
	mov	r4,dpl
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	cjne	a,ar3,00118$
	mov	dptr,#0x2710
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_delay_time
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00110$
00118$:
	C$i2c.h$167$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:167: for(i=0; i<5; i++)
	inc	r7
	cjne	r7,#0x05,00155$
00155$:
	jnc	00156$
	ljmp	00104$
00156$:
	C$i2c.h$182$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:182: return sum;
	mov	dpl,r5
	mov	dph,r6
00119$:
	C$i2c.h$183$1$89 ==.
	XG$kpd_input$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_time'
;------------------------------------------------------------
;time_end                  Allocated to registers r4 r5 r6 r7 
;index                     Allocated to registers 
;------------------------------------------------------------
	G$delay_time$0$0 ==.
	C$i2c.h$192$1$89 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:192: void delay_time (unsigned long time_end)
;	-----------------------------------------
;	 function delay_time
;	-----------------------------------------
_delay_time:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$i2c.h$196$1$94 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:196: for (index = 0; index < time_end; index++); //for loop delay
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00105$
	inc	r0
	cjne	r0,#0x00,00115$
	inc	r1
	cjne	r1,#0x00,00115$
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00115$:
	sjmp	00103$
00105$:
	C$i2c.h$197$1$94 ==.
	XG$delay_time$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
	G$i2c_start$0$0 ==.
	C$i2c.h$200$1$94 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:200: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
	C$i2c.h$202$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:202: while(BUSY);                //Wait until SMBus0 is free
00101$:
	jb	_BUSY,00101$
	C$i2c.h$203$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:203: STA = 1;                    //Set Start Bit
	setb	_STA
	C$i2c.h$204$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:204: while(!SI);                 //Wait until start sent
00104$:
	jnb	_SI,00104$
	C$i2c.h$205$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:205: STA = 0;                    //Clear start bit
	clr	_STA
	C$i2c.h$206$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:206: SI = 0;                     //Clear SI
	clr	_SI
	C$i2c.h$207$1$96 ==.
	XG$i2c_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;output_data               Allocated to registers 
;------------------------------------------------------------
	G$i2c_write$0$0 ==.
	C$i2c.h$210$1$96 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:210: void i2c_write(unsigned char output_data)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	_SMB0DAT,dpl
	C$i2c.h$213$1$98 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:213: while(!SI);                 //Wait until send is complete
00101$:
	C$i2c.h$214$1$98 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:214: SI = 0;                     //Clear SI
	jbc	_SI,00112$
	sjmp	00101$
00112$:
	C$i2c.h$215$1$98 ==.
	XG$i2c_write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_and_stop'
;------------------------------------------------------------
;output_data               Allocated to registers 
;------------------------------------------------------------
	G$i2c_write_and_stop$0$0 ==.
	C$i2c.h$218$1$98 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:218: void i2c_write_and_stop(unsigned char output_data)
;	-----------------------------------------
;	 function i2c_write_and_stop
;	-----------------------------------------
_i2c_write_and_stop:
	mov	_SMB0DAT,dpl
	C$i2c.h$221$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:221: STO = 1;                    //Set stop bit
	setb	_STO
	C$i2c.h$222$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:222: while(!SI);                 //Wait until send is complete
00101$:
	C$i2c.h$223$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:223: SI = 0;                     //Clear SI
	jbc	_SI,00112$
	sjmp	00101$
00112$:
	C$i2c.h$224$1$100 ==.
	XG$i2c_write_and_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;input_data                Allocated to registers 
;------------------------------------------------------------
	G$i2c_read$0$0 ==.
	C$i2c.h$227$1$100 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:227: unsigned char i2c_read(void)
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
	C$i2c.h$231$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:231: while(!SI);                 //Wait until we have data to read
00101$:
	jnb	_SI,00101$
	C$i2c.h$232$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:232: input_data = SMB0DAT;       //Read the data
	mov	dpl,_SMB0DAT
	C$i2c.h$233$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:233: SI = 0;                     //Clear SI
	clr	_SI
	C$i2c.h$234$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:234: return input_data;          //Return the read data
	C$i2c.h$235$1$102 ==.
	XG$i2c_read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_and_stop'
;------------------------------------------------------------
;input_data                Allocated to registers r7 
;------------------------------------------------------------
	G$i2c_read_and_stop$0$0 ==.
	C$i2c.h$238$1$102 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:238: unsigned char i2c_read_and_stop(void)
;	-----------------------------------------
;	 function i2c_read_and_stop
;	-----------------------------------------
_i2c_read_and_stop:
	C$i2c.h$242$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:242: while(!SI);                 //Wait until we have data to read
00101$:
	jnb	_SI,00101$
	C$i2c.h$243$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:243: input_data = SMB0DAT;       //Read the data
	mov	r7,_SMB0DAT
	C$i2c.h$244$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:244: SI = 0;                     //Clear SI
	clr	_SI
	C$i2c.h$245$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:245: STO = 1;                    //Set stop bit
	setb	_STO
	C$i2c.h$246$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:246: while(!SI);                 //Wait for stop
00104$:
	C$i2c.h$247$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:247: SI = 0;
	jbc	_SI,00122$
	sjmp	00104$
00122$:
	C$i2c.h$248$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:248: return input_data;          //Return the read data
	mov	dpl,r7
	C$i2c.h$249$1$104 ==.
	XG$i2c_read_and_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_data'
;------------------------------------------------------------
;start_reg                 Allocated with name '_i2c_write_data_PARM_2'
;buffer                    Allocated with name '_i2c_write_data_PARM_3'
;num_bytes                 Allocated with name '_i2c_write_data_PARM_4'
;addr                      Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
	G$i2c_write_data$0$0 ==.
	C$i2c.h$252$1$104 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:252: void i2c_write_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
;	-----------------------------------------
;	 function i2c_write_data
;	-----------------------------------------
_i2c_write_data:
	mov	r7,dpl
	C$i2c.h$256$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:256: EA = 0;                     //Don't allow interrupts during I2C work
	clr	_EA
	C$i2c.h$257$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:257: i2c_start();                //Initiate I2C transfer
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.h$258$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:258: i2c_write(addr & ~0x01);    //Write the desired address to the bus
	mov	a,#0xfe
	anl	a,r7
	mov	dpl,a
	lcall	_i2c_write
	C$i2c.h$259$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:259: i2c_write(start_reg);       //Write the start register to the bus
	mov	dpl,_i2c_write_data_PARM_2
	lcall	_i2c_write
	C$i2c.h$260$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
	mov	r7,#0x00
00103$:
	mov	r5,_i2c_write_data_PARM_4
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xff,00114$
	dec	r6
00114$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	C$i2c.h$261$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:261: i2c_write(buffer[i]);
	mov	a,r7
	add	a,_i2c_write_data_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_write_data_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_write_data_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_i2c_write
	pop	ar7
	C$i2c.h$260$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:260: for(i=0; i<num_bytes-1; i++) //Write the data to the register(s)
	inc	r7
	sjmp	00103$
00101$:
	C$i2c.h$262$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:262: i2c_write_and_stop(buffer[num_bytes-1]); //Stop transfer
	mov	r6,_i2c_write_data_PARM_4
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	a,r6
	add	a,_i2c_write_data_PARM_3
	mov	r6,a
	mov	a,r7
	addc	a,(_i2c_write_data_PARM_3 + 1)
	mov	r7,a
	mov	r5,(_i2c_write_data_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	lcall	_i2c_write_and_stop
	C$i2c.h$263$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:263: EA = 1;                     //Re-Enable interrupts
	setb	_EA
	C$i2c.h$264$1$106 ==.
	XG$i2c_write_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_data'
;------------------------------------------------------------
;start_reg                 Allocated with name '_i2c_read_data_PARM_2'
;buffer                    Allocated with name '_i2c_read_data_PARM_3'
;num_bytes                 Allocated with name '_i2c_read_data_PARM_4'
;addr                      Allocated to registers r7 
;j                         Allocated to registers 
;------------------------------------------------------------
	G$i2c_read_data$0$0 ==.
	C$i2c.h$267$1$106 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:267: void i2c_read_data(unsigned char addr, unsigned char start_reg, unsigned char *buffer, unsigned char num_bytes)
;	-----------------------------------------
;	 function i2c_read_data
;	-----------------------------------------
_i2c_read_data:
	mov	r7,dpl
	C$i2c.h$271$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:271: EA = 0;                     //Don't allow interrupts during I2C work
	clr	_EA
	C$i2c.h$272$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:272: i2c_start();                //Start I2C transfer
	push	ar7
	lcall	_i2c_start
	pop	ar7
	C$i2c.h$273$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:273: i2c_write(addr & ~0x01);    //Write address of device that will be written to, send 0
	mov	a,#0xfe
	anl	a,r7
	mov	dpl,a
	push	ar7
	lcall	_i2c_write
	C$i2c.h$274$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:274: i2c_write_and_stop(start_reg); //Write & stop the 1st register to be read
	mov	dpl,_i2c_read_data_PARM_2
	lcall	_i2c_write_and_stop
	C$i2c.h$275$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:275: i2c_start();                //Start I2C transfer
	lcall	_i2c_start
	pop	ar7
	C$i2c.h$276$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:276: i2c_write(addr | 0x01);     //Write address again, this time indicating a read operation
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_i2c_write
	C$i2c.h$277$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
	mov	r7,#0x00
00103$:
	mov	r5,_i2c_read_data_PARM_4
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xff,00114$
	dec	r6
00114$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	C$i2c.h$279$2$109 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:279: AA = 1;                 //Set acknowledge bit
	setb	_AA
	C$i2c.h$280$2$109 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:280: buffer[j] = i2c_read(); //Read data, save it in buffer
	mov	a,r7
	add	a,_i2c_read_data_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_i2c_read_data_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_i2c_read_data_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	C$i2c.h$277$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:277: for(j = 0; j < num_bytes - 1; j++)
	inc	r7
	sjmp	00103$
00101$:
	C$i2c.h$282$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:282: AA = 0;
	clr	_AA
	C$i2c.h$283$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:283: buffer[num_bytes - 1] = i2c_read_and_stop(); //Read the last byte and stop, save it in the buffer
	mov	r6,_i2c_read_data_PARM_4
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	a,r6
	add	a,_i2c_read_data_PARM_3
	mov	r6,a
	mov	a,r7
	addc	a,(_i2c_read_data_PARM_3 + 1)
	mov	r7,a
	mov	r5,(_i2c_read_data_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read_and_stop
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__gptrput
	C$i2c.h$284$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:284: EA = 1;                     //Re-Enable interrupts
	setb	_EA
	C$i2c.h$285$1$108 ==.
	XG$i2c_read_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Accel_Init'
;------------------------------------------------------------
	G$Accel_Init$0$0 ==.
	C$i2c.h$294$1$108 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:294: void Accel_Init(void)
;	-----------------------------------------
;	 function Accel_Init
;	-----------------------------------------
_Accel_Init:
	C$i2c.h$298$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:298: Data2[0]=0x23;  //normal power mode, 50Hz ODR, y & x axes enabled
	mov	_Data2,#0x23
	C$i2c.h$300$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:300: Data2[1]=0x00;  //default - no filtering
	mov	(_Data2 + 0x0001),#0x00
	C$i2c.h$301$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:301: Data2[1]=0x10;  //filtered data selected, HPF = 1.0->0.125Hz
	mov	(_Data2 + 0x0001),#0x10
	C$i2c.h$302$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:302: Data2[2]=0x00;  //default - no interrupts enabled
	mov	(_Data2 + 0x0002),#0x00
	C$i2c.h$304$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:304: i2c_write_data(addr_accel, 0x20, Data2, 1);
	mov	_i2c_write_data_PARM_3,#_Data2
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x20
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0x30
	lcall	_i2c_write_data
	C$i2c.h$310$1$111 ==.
	XG$Accel_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Accel_Init_C'
;------------------------------------------------------------
	G$Accel_Init_C$0$0 ==.
	C$i2c.h$313$1$111 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:313: void Accel_Init_C(void)
;	-----------------------------------------
;	 function Accel_Init_C
;	-----------------------------------------
_Accel_Init_C:
	C$i2c.h$318$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:318: Data2[0]=0x04;  //set register address auto increment bit
	mov	_Data2,#0x04
	C$i2c.h$319$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:319: i2c_write_data(addr_accelC, 0x23, Data2, 1);
	mov	_i2c_write_data_PARM_3,#_Data2
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x23
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0x3a
	lcall	_i2c_write_data
	C$i2c.h$321$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:321: Data2[0]=0x6B;  //R20 normal power mode, 800Hz ODR, y & x axes enabled
	mov	_Data2,#0x6b
	C$i2c.h$323$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:323: Data2[1]=0x00;  //R21 Default - no HP filtering
	mov	(_Data2 + 0x0001),#0x00
	C$i2c.h$325$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:325: Data2[2]=0x00;  //R22 Default - no interrupts enabled
	mov	(_Data2 + 0x0002),#0x00
	C$i2c.h$326$1$113 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/i2c.h:326: i2c_write_data(addr_accelC, 0x20, Data2, 1);
	mov	_i2c_write_data_PARM_3,#_Data2
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x20
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0x3a
	lcall	_i2c_write_data
	C$i2c.h$328$1$113 ==.
	XG$Accel_Init_C$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$Lab_6_New.c$70$1$113 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:70: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$Lab_6_New.c$73$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:73: Sys_Init();
	lcall	_Sys_Init
	C$Lab_6_New.c$74$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:74: putchar(' ');
	mov	dpl,#0x20
	lcall	_putchar
	C$Lab_6_New.c$75$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:75: Port_Init();
	lcall	_Port_Init
	C$Lab_6_New.c$76$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:76: XBR0_Init();
	lcall	_XBR0_Init
	C$Lab_6_New.c$77$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:77: PCA_Init();
	lcall	_PCA_Init
	C$Lab_6_New.c$78$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:78: Interrupt_Init();
	lcall	_Interrupt_Init
	C$Lab_6_New.c$79$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:79: SMB_Init();
	lcall	_SMB_Init
	C$Lab_6_New.c$80$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:80: ADC_Init();
	lcall	_ADC_Init
	C$Lab_6_New.c$81$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:81: CR = 1;
	setb	_CR
	C$Lab_6_New.c$83$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:83: while(1)
00121$:
	C$Lab_6_New.c$85$2$156 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:85: if (DS0)		//switch 1 is off
	jnb	_DS0,00118$
	C$Lab_6_New.c$88$3$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:88: getGain();
	lcall	_getGain
	C$Lab_6_New.c$89$3$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:89: getHeading();
	lcall	_getHeading
	C$Lab_6_New.c$92$3$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:92: setAngle();
	lcall	_setAngle
	C$Lab_6_New.c$94$3$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:94: if (DS7 == 1)		//if switch 8 is on
	jnb	_DS7,00104$
	C$Lab_6_New.c$96$4$158 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:96: angle = 1200;
	mov	_angle,#0xb0
	mov	(_angle + 1),#0x04
	sjmp	00121$
00104$:
	C$Lab_6_New.c$98$3$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:98: else if (DS7 == 0)	//if switch 8 is off
	jb	_DS7,00121$
	C$Lab_6_New.c$100$4$159 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:100: angle = -1200;
	mov	_angle,#0x50
	mov	(_angle + 1),#0xfb
	sjmp	00121$
00118$:
	C$Lab_6_New.c$104$2$156 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:104: else if (!DS0)	//switch 1 is on
	jb	_DS0,00121$
	C$Lab_6_New.c$106$3$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:106: ReadRanger();
	lcall	_ReadRanger
	C$Lab_6_New.c$107$3$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:107: ReadCompass();
	lcall	_ReadCompass
	C$Lab_6_New.c$109$3$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:109: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab_6_New.c$110$3$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:110: while (counts <= 1000)
00106$:
	clr	c
	mov	a,#0xe8
	subb	a,_counts
	mov	a,#0x03
	subb	a,(_counts + 1)
	jc	00109$
	C$Lab_6_New.c$112$4$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:112: ReadRanger();
	lcall	_ReadRanger
	C$Lab_6_New.c$113$4$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:113: ReadCompass();
	lcall	_ReadCompass
	C$Lab_6_New.c$114$4$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:114: errHeading1();
	lcall	_errHeading1
	C$Lab_6_New.c$115$4$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:115: printData();
	lcall	_printData
	C$Lab_6_New.c$118$3$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:118: while (counts <= 2000)
	sjmp	00106$
00109$:
	clr	c
	mov	a,#0xd0
	subb	a,_counts
	mov	a,#0x07
	subb	a,(_counts + 1)
	jc	00112$
	C$Lab_6_New.c$120$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:120: ReadRanger();
	lcall	_ReadRanger
	C$Lab_6_New.c$121$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:121: ReadCompass();
	lcall	_ReadCompass
	C$Lab_6_New.c$122$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:122: errHeading1();
	lcall	_errHeading1
	C$Lab_6_New.c$123$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:123: printData();
	lcall	_printData
	C$Lab_6_New.c$126$3$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:126: while (counts <= 3000)
	sjmp	00109$
00112$:
	clr	c
	mov	a,#0xb8
	subb	a,_counts
	mov	a,#0x0b
	subb	a,(_counts + 1)
	jc	00121$
	C$Lab_6_New.c$128$4$163 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:128: ReadRanger();
	lcall	_ReadRanger
	C$Lab_6_New.c$129$4$163 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:129: ReadCompass();
	lcall	_ReadCompass
	C$Lab_6_New.c$130$4$163 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:130: errHeading3();
	lcall	_errHeading3
	C$Lab_6_New.c$131$4$163 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:131: printData();
	lcall	_printData
	sjmp	00112$
	C$Lab_6_New.c$135$1$155 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setAngle'
;------------------------------------------------------------
	G$setAngle$0$0 ==.
	C$Lab_6_New.c$141$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:141: void setAngle(void)		//calibrate side fan angle, CEX1
;	-----------------------------------------
;	 function setAngle
;	-----------------------------------------
_setAngle:
	C$Lab_6_New.c$143$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:143: }
	C$Lab_6_New.c$143$1$155 ==.
	XG$setAngle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadRanger'
;------------------------------------------------------------
;addr                      Allocated to registers 
;dr_data_array             Allocated with name '_ReadRanger_dr_data_array_2_168'
;------------------------------------------------------------
	G$ReadRanger$0$0 ==.
	C$Lab_6_New.c$149$1$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:149: void ReadRanger(void)
;	-----------------------------------------
;	 function ReadRanger
;	-----------------------------------------
_ReadRanger:
	C$Lab_6_New.c$151$1$167 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:151: if (new_range)
	mov	a,_new_range
	jz	00102$
	C$Lab_6_New.c$155$2$168 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:155: i2c_read_data(addr, 2, dr_data_array, 2);								//read register 2 and 3, echo 1
	mov	_i2c_read_data_PARM_3,#_ReadRanger_dr_data_array_2_168
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x02
	mov	_i2c_read_data_PARM_4,#0x02
	mov	dpl,#0xe0
	lcall	_i2c_read_data
	C$Lab_6_New.c$156$2$168 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:156: distance = (((unsigned int)dr_data_array[0] << 8) | dr_data_array[1]);	//concatenate
	mov	r7,_ReadRanger_dr_data_array_2_168
	mov	r6,#0x00
	mov	r4,(_ReadRanger_dr_data_array_2_168 + 0x0001)
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	_distance,a
	mov	a,r5
	orl	a,r7
	mov	(_distance + 1),a
00102$:
	C$Lab_6_New.c$159$1$167 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:159: i2c_write_data(0xE0, 0, dr_input_data, 1);		//start ping to get range back in cm
	mov	_i2c_write_data_PARM_3,#_dr_input_data
	mov	(_i2c_write_data_PARM_3 + 1),#0x00
	mov	(_i2c_write_data_PARM_3 + 2),#0x40
	mov	_i2c_write_data_PARM_2,#0x00
	mov	_i2c_write_data_PARM_4,#0x01
	mov	dpl,#0xe0
	lcall	_i2c_write_data
	C$Lab_6_New.c$160$1$167 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:160: new_range = 0;
	mov	_new_range,#0x00
	C$Lab_6_New.c$161$1$167 ==.
	XG$ReadRanger$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadCompass'
;------------------------------------------------------------
;addr                      Allocated to registers 
;Data                      Allocated with name '_ReadCompass_Data_2_171'
;------------------------------------------------------------
	G$ReadCompass$0$0 ==.
	C$Lab_6_New.c$166$1$167 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:166: void ReadCompass(void)
;	-----------------------------------------
;	 function ReadCompass
;	-----------------------------------------
_ReadCompass:
	C$Lab_6_New.c$168$1$170 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:168: if (new_heading)	
	mov	a,_new_heading
	orl	a,(_new_heading + 1)
	jz	00103$
	C$Lab_6_New.c$172$2$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:172: i2c_read_data(addr, 2, Data, 2);					//read two byte, starting at reg 2
	mov	_i2c_read_data_PARM_3,#_ReadCompass_Data_2_171
	mov	(_i2c_read_data_PARM_3 + 1),#0x00
	mov	(_i2c_read_data_PARM_3 + 2),#0x40
	mov	_i2c_read_data_PARM_2,#0x02
	mov	_i2c_read_data_PARM_4,#0x02
	mov	dpl,#0xc0
	lcall	_i2c_read_data
	C$Lab_6_New.c$173$2$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:173: heading =(((unsigned int)Data[0] << 8) | Data[1]);	//combine the two values
	mov	r7,_ReadCompass_Data_2_171
	mov	r6,#0x00
	mov	r4,(_ReadCompass_Data_2_171 + 0x0001)
	mov	r5,#0x00
	mov	a,r4
	orl	a,r6
	mov	_heading,a
	mov	a,r5
	orl	a,r7
	mov	(_heading + 1),a
00103$:
	C$Lab_6_New.c$175$1$170 ==.
	XG$ReadCompass$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'errHeading1'
;------------------------------------------------------------
	G$errHeading1$0$0 ==.
	C$Lab_6_New.c$177$1$170 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:177: void errHeading1(void)		//all 3 fans, CEX0, CEX2, CEX3
;	-----------------------------------------
;	 function errHeading1
;	-----------------------------------------
_errHeading1:
	C$Lab_6_New.c$179$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:179: error = desired_heading - heading;		
	mov	r6,_heading
	mov	r7,(_heading + 1)
	mov	a,_desired_heading
	clr	c
	subb	a,r6
	mov	_error,a
	mov	a,(_desired_heading + 1)
	subb	a,r7
	mov	(_error + 1),a
	C$Lab_6_New.c$180$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:180: if(error > 1800) 								//fixes issue when desired and actual heading are very far away from each other
	clr	c
	mov	a,#0x08
	subb	a,_error
	mov	a,#(0x07 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	C$Lab_6_New.c$182$2$174 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:182: error -= 3600;
	mov	a,_error
	add	a,#0xf0
	mov	_error,a
	mov	a,(_error + 1)
	addc	a,#0xf1
	mov	(_error + 1),a
	sjmp	00105$
00104$:
	C$Lab_6_New.c$184$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:184: else if(error < -1800) 
	clr	c
	mov	a,_error
	subb	a,#0xf8
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x78
	jnc	00105$
	C$Lab_6_New.c$186$2$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:186: error += 3600;
	mov	a,#0x10
	add	a,_error
	mov	_error,a
	mov	a,#0x0e
	addc	a,(_error + 1)
	mov	(_error + 1),a
00105$:
	C$Lab_6_New.c$191$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:191: PW = temp_pw;									//saves the equation value as the current pulsewidth
	mov	_PW,_temp_pw
	mov	(_PW + 1),(_temp_pw + 1)
	C$Lab_6_New.c$192$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:192: PCA0CPL0 = 0xFFFF - PW;
	mov	r7,_PW
	mov	a,#0xff
	clr	c
	subb	a,r7
	mov	_PCA0CPL0,a
	C$Lab_6_New.c$193$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:193: PCA0CPH0 = (0xFFFF - PW) >> 8;
	mov	a,#0xff
	clr	c
	subb	a,_PW
	mov	a,#0xff
	subb	a,(_PW + 1)
	mov	r7,a
	mov	_PCA0CPH0,r7
	C$Lab_6_New.c$194$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:194: new_heading = 0;
	clr	a
	mov	_new_heading,a
	mov	(_new_heading + 1),a
	C$Lab_6_New.c$195$1$173 ==.
	XG$errHeading1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'errHeading2'
;------------------------------------------------------------
	G$errHeading2$0$0 ==.
	C$Lab_6_New.c$197$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:197: void errHeading2(void)		//side fans, CEX2. CEX3
;	-----------------------------------------
;	 function errHeading2
;	-----------------------------------------
_errHeading2:
	C$Lab_6_New.c$199$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:199: error = desired_heading - heading;		
	mov	r6,_heading
	mov	r7,(_heading + 1)
	mov	a,_desired_heading
	clr	c
	subb	a,r6
	mov	_error,a
	mov	a,(_desired_heading + 1)
	subb	a,r7
	mov	(_error + 1),a
	C$Lab_6_New.c$200$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:200: if(error > 1800) 								//fixes issue when desired and actual heading are very far away from each other
	clr	c
	mov	a,#0x08
	subb	a,_error
	mov	a,#(0x07 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	C$Lab_6_New.c$202$2$178 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:202: error -= 3600;
	mov	a,_error
	add	a,#0xf0
	mov	_error,a
	mov	a,(_error + 1)
	addc	a,#0xf1
	mov	(_error + 1),a
	sjmp	00105$
00104$:
	C$Lab_6_New.c$204$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:204: else if(error < -1800) 
	clr	c
	mov	a,_error
	subb	a,#0xf8
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x78
	jnc	00105$
	C$Lab_6_New.c$206$2$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:206: error += 3600;
	mov	a,#0x10
	add	a,_error
	mov	_error,a
	mov	a,#0x0e
	addc	a,(_error + 1)
	mov	(_error + 1),a
00105$:
	C$Lab_6_New.c$211$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:211: PW = temp_pw;									//saves the equation value as the current pulsewidth
	mov	_PW,_temp_pw
	mov	(_PW + 1),(_temp_pw + 1)
	C$Lab_6_New.c$212$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:212: PCA0CPL0 = 0xFFFF - PW;
	mov	r7,_PW
	mov	a,#0xff
	clr	c
	subb	a,r7
	mov	_PCA0CPL0,a
	C$Lab_6_New.c$213$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:213: PCA0CPH0 = (0xFFFF - PW) >> 8;
	mov	a,#0xff
	clr	c
	subb	a,_PW
	mov	a,#0xff
	subb	a,(_PW + 1)
	mov	r7,a
	mov	_PCA0CPH0,r7
	C$Lab_6_New.c$214$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:214: new_heading = 0;
	clr	a
	mov	_new_heading,a
	mov	(_new_heading + 1),a
	C$Lab_6_New.c$215$1$177 ==.
	XG$errHeading2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'errHeading3'
;------------------------------------------------------------
	G$errHeading3$0$0 ==.
	C$Lab_6_New.c$217$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:217: void errHeading3(void)		//rudder fan, CEX0
;	-----------------------------------------
;	 function errHeading3
;	-----------------------------------------
_errHeading3:
	C$Lab_6_New.c$219$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:219: error = desired_heading - heading;		
	mov	r6,_heading
	mov	r7,(_heading + 1)
	mov	a,_desired_heading
	clr	c
	subb	a,r6
	mov	_error,a
	mov	a,(_desired_heading + 1)
	subb	a,r7
	mov	(_error + 1),a
	C$Lab_6_New.c$220$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:220: if(error > 1800) 								//fixes issue when desired and actual heading are very far away from each other
	clr	c
	mov	a,#0x08
	subb	a,_error
	mov	a,#(0x07 ^ 0x80)
	mov	b,(_error + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	C$Lab_6_New.c$222$2$182 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:222: error -= 3600;
	mov	a,_error
	add	a,#0xf0
	mov	_error,a
	mov	a,(_error + 1)
	addc	a,#0xf1
	mov	(_error + 1),a
	sjmp	00105$
00104$:
	C$Lab_6_New.c$224$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:224: else if(error < -1800) 
	clr	c
	mov	a,_error
	subb	a,#0xf8
	mov	a,(_error + 1)
	xrl	a,#0x80
	subb	a,#0x78
	jnc	00105$
	C$Lab_6_New.c$226$2$183 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:226: error += 3600;
	mov	a,#0x10
	add	a,_error
	mov	_error,a
	mov	a,#0x0e
	addc	a,(_error + 1)
	mov	(_error + 1),a
00105$:
	C$Lab_6_New.c$231$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:231: PW = temp_pw;									//saves the equation value as the current pulsewidth
	mov	_PW,_temp_pw
	mov	(_PW + 1),(_temp_pw + 1)
	C$Lab_6_New.c$232$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:232: PCA0CPL0 = 0xFFFF - PW;
	mov	r7,_PW
	mov	a,#0xff
	clr	c
	subb	a,r7
	mov	_PCA0CPL0,a
	C$Lab_6_New.c$233$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:233: PCA0CPH0 = (0xFFFF - PW) >> 8;
	mov	a,#0xff
	clr	c
	subb	a,_PW
	mov	a,#0xff
	subb	a,(_PW + 1)
	mov	r7,a
	mov	_PCA0CPH0,r7
	C$Lab_6_New.c$234$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:234: new_heading = 0;
	clr	a
	mov	_new_heading,a
	mov	(_new_heading + 1),a
	C$Lab_6_New.c$235$1$181 ==.
	XG$errHeading3$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getGain'
;------------------------------------------------------------
	G$getGain$0$0 ==.
	C$Lab_6_New.c$240$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:240: void getGain(void) 
;	-----------------------------------------
;	 function getGain
;	-----------------------------------------
_getGain:
	C$Lab_6_New.c$242$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:242: lcd_clear();								//clears lcd screen
	lcall	_lcd_clear
	C$Lab_6_New.c$243$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:243: lcd_print("Input Proportional Gain: \r");		//gets input of desired drive gain from keypad and saves to variable
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	dec	sp
	dec	sp
	dec	sp
	C$Lab_6_New.c$244$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:244: pk = kpd_input(1);
	mov	dpl,#0x01
	lcall	_kpd_input
	mov	_pk,dpl
	mov	(_pk + 1),dph
	C$Lab_6_New.c$245$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:245: printf("Proportional Gain: %d \r\n", pk);
	push	_pk
	push	(_pk + 1)
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$Lab_6_New.c$246$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:246: printcounts = 0;
	mov	_printcounts,#0x00
	C$Lab_6_New.c$247$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:247: while(printcounts < 100);
00101$:
	mov	a,#0x100 - 0x64
	add	a,_printcounts
	jnc	00101$
	C$Lab_6_New.c$248$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:248: lcd_clear(); 						
	lcall	_lcd_clear
	C$Lab_6_New.c$250$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:250: lcd_print("Input Derivative Gain: \r");		//gets input of steering from keypad and saves to variable
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	dec	sp
	dec	sp
	dec	sp
	C$Lab_6_New.c$251$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:251: dk = kpd_input(1);
	mov	dpl,#0x01
	lcall	_kpd_input
	mov	_dk,dpl
	mov	(_dk + 1),dph
	C$Lab_6_New.c$252$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:252: printf("Derivative Gain: %d \r\n", dk);
	push	_dk
	push	(_dk + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$Lab_6_New.c$253$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:253: printcounts = 0;
	mov	_printcounts,#0x00
	C$Lab_6_New.c$254$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:254: while(printcounts < 100);
00104$:
	mov	a,#0x100 - 0x64
	add	a,_printcounts
	jnc	00104$
	C$Lab_6_New.c$255$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:255: lcd_clear();
	lcall	_lcd_clear
	C$Lab_6_New.c$256$1$185 ==.
	XG$getGain$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getHeading'
;------------------------------------------------------------
	G$getHeading$0$0 ==.
	C$Lab_6_New.c$258$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:258: void getHeading(void)
;	-----------------------------------------
;	 function getHeading
;	-----------------------------------------
_getHeading:
	C$Lab_6_New.c$260$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:260: lcd_clear();									//gets desired heading
	lcall	_lcd_clear
	C$Lab_6_New.c$261$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:261: lcd_print("Input Heading: \r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_lcd_print
	dec	sp
	dec	sp
	dec	sp
	C$Lab_6_New.c$262$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:262: desired_heading = kpd_input(1);
	mov	dpl,#0x01
	lcall	_kpd_input
	mov	_desired_heading,dpl
	mov	(_desired_heading + 1),dph
	C$Lab_6_New.c$263$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:263: printf("Desired Heading: %d \r\n", desired_heading);
	push	_desired_heading
	push	(_desired_heading + 1)
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$Lab_6_New.c$264$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:264: printcounts = 0;
	mov	_printcounts,#0x00
	C$Lab_6_New.c$265$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:265: while(printcounts < 100);
00101$:
	mov	a,#0x100 - 0x64
	add	a,_printcounts
	jnc	00101$
	C$Lab_6_New.c$266$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:266: lcd_clear();
	lcall	_lcd_clear
	C$Lab_6_New.c$267$1$187 ==.
	XG$getHeading$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printData'
;------------------------------------------------------------
	G$printData$0$0 ==.
	C$Lab_6_New.c$273$1$187 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:273: void printData(void)								//prints necessary values
;	-----------------------------------------
;	 function printData
;	-----------------------------------------
_printData:
	C$Lab_6_New.c$275$1$189 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:275: printf("Desired Heading   Actual Heading   Ranger Reading   Heading Angle Adjustment   Thrust Pulsewidth   Battery Voltage \r\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$Lab_6_New.c$276$1$189 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:276: printf("%8.3d,   %8.3d,   %8.3d,   %8.3d,   %8.3d,   %8.3d \r\n\n", desired_heading, heading, distance, error, PW, BAT);
	mov	c,_BAT
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	push	_PW
	push	(_PW + 1)
	push	_error
	push	(_error + 1)
	push	_distance
	push	(_distance + 1)
	push	_heading
	push	(_heading + 1)
	push	_desired_heading
	push	(_desired_heading + 1)
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
	C$Lab_6_New.c$277$1$189 ==.
	XG$printData$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$Lab_6_New.c$282$1$189 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:282: void Port_Init()
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$Lab_6_New.c$284$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:284: P0MDOUT &= 0x02;
	anl	_P0MDOUT,#0x02
	C$Lab_6_New.c$285$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:285: P1MDOUT &= ~0x08;
	anl	_P1MDOUT,#0xf7
	C$Lab_6_New.c$286$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:286: P1MDIN |= 0x08;
	orl	_P1MDIN,#0x08
	C$Lab_6_New.c$287$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:287: P1 = 0x08;
	mov	_P1,#0x08
	C$Lab_6_New.c$288$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:288: P3MDOUT &= 0x00;
	mov	a,_P3MDOUT
	mov	_P3MDOUT,#0x00
	C$Lab_6_New.c$289$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:289: P3 = 0xFF;
	mov	_P3,#0xff
	C$Lab_6_New.c$290$1$190 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'XBR0_Init'
;------------------------------------------------------------
	G$XBR0_Init$0$0 ==.
	C$Lab_6_New.c$294$1$190 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:294: void XBR0_Init()
;	-----------------------------------------
;	 function XBR0_Init
;	-----------------------------------------
_XBR0_Init:
	C$Lab_6_New.c$296$1$191 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:296: XBR0 = 0x25;
	mov	_XBR0,#0x25
	C$Lab_6_New.c$297$1$191 ==.
	XG$XBR0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_Init'
;------------------------------------------------------------
	G$PCA_Init$0$0 ==.
	C$Lab_6_New.c$301$1$191 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:301: void PCA_Init(void)
;	-----------------------------------------
;	 function PCA_Init
;	-----------------------------------------
_PCA_Init:
	C$Lab_6_New.c$303$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:303: PCA0MD = 0x81;	
	mov	_PCA0MD,#0x81
	C$Lab_6_New.c$304$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:304: PCA0CPM0 = 0xC2;	//SYSCLK/12
	mov	_PCA0CPM0,#0xc2
	C$Lab_6_New.c$305$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:305: PCA0CPM1 = 0xC2;	//CCM2 in 16 bit compare mode
	mov	_PCA0CPM1,#0xc2
	C$Lab_6_New.c$306$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:306: PCA0CPM2 = 0xC2;
	mov	_PCA0CPM2,#0xc2
	C$Lab_6_New.c$307$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:307: PCA0CPM3 = 0xC2;
	mov	_PCA0CPM3,#0xc2
	C$Lab_6_New.c$308$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:308: PCA0CN = 0x40; 		//enable PCA counter
	mov	_PCA0CN,#0x40
	C$Lab_6_New.c$309$1$193 ==.
	XG$PCA_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupt_Init'
;------------------------------------------------------------
	G$Interrupt_Init$0$0 ==.
	C$Lab_6_New.c$313$1$193 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:313: void Interrupt_Init()
;	-----------------------------------------
;	 function Interrupt_Init
;	-----------------------------------------
_Interrupt_Init:
	C$Lab_6_New.c$315$1$194 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:315: EA = 1;			//enable global interrupts
	setb	_EA
	C$Lab_6_New.c$316$1$194 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:316: EIE1 = 0x08;	//enable PCA interrupt
	mov	_EIE1,#0x08
	C$Lab_6_New.c$317$1$194 ==.
	XG$Interrupt_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_ISR'
;------------------------------------------------------------
	G$PCA_ISR$0$0 ==.
	C$Lab_6_New.c$321$1$194 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:321: void PCA_ISR (void) __interrupt 9
;	-----------------------------------------
;	 function PCA_ISR
;	-----------------------------------------
_PCA_ISR:
	push	acc
	push	psw
	C$Lab_6_New.c$323$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:323: counts++;
	inc	_counts
	clr	a
	cjne	a,_counts,00113$
	inc	(_counts + 1)
00113$:
	C$Lab_6_New.c$324$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:324: ranger_count++;
	inc	_ranger_count
	C$Lab_6_New.c$325$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:325: h_count++;
	inc	_h_count
	C$Lab_6_New.c$326$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:326: printcounts++;
	inc	_printcounts
	C$Lab_6_New.c$327$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:327: PCA0 = 28672;			//20ms start value
	mov	((_PCA0 >> 0) & 0xFF),#0x00
	mov	((_PCA0 >> 8) & 0xFF),#0x70
	C$Lab_6_New.c$328$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:328: CF = 0;
	clr	_CF
	C$Lab_6_New.c$329$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:329: PCA0CN &= 0x40;
	anl	_PCA0CN,#0x40
	C$Lab_6_New.c$332$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:332: if (ranger_count == 4)	//80ms wait
	mov	a,#0x04
	cjne	a,_ranger_count,00102$
	C$Lab_6_New.c$334$2$197 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:334: new_range = 1;
	mov	_new_range,#0x01
	C$Lab_6_New.c$335$2$197 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:335: ranger_count = 0;
	mov	_ranger_count,#0x00
00102$:
	C$Lab_6_New.c$338$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:338: if (h_count == 3) 		//60ms wait
	mov	a,#0x03
	cjne	a,_h_count,00105$
	C$Lab_6_New.c$340$2$198 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:340: new_heading = 1;
	mov	_new_heading,#0x01
	mov	(_new_heading + 1),#0x00
	C$Lab_6_New.c$341$2$198 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:341: h_count = 0;
	mov	_h_count,#0x00
00105$:
	pop	psw
	pop	acc
	C$Lab_6_New.c$343$1$196 ==.
	XG$PCA_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'SMB_Init'
;------------------------------------------------------------
	G$SMB_Init$0$0 ==.
	C$Lab_6_New.c$346$1$196 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:346: void SMB_Init(void)
;	-----------------------------------------
;	 function SMB_Init
;	-----------------------------------------
_SMB_Init:
	C$Lab_6_New.c$348$1$200 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:348: SMB0CR=0x93; 	/* set SCL to 100KHz (actual freq ~ 94,594Hz)*/
	mov	_SMB0CR,#0x93
	C$Lab_6_New.c$349$1$200 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:349: ENSMB=1; 		/* bit 6 of SMB0CN, enable the SMBus */
	setb	_ENSMB
	C$Lab_6_New.c$350$1$200 ==.
	XG$SMB_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$Lab_6_New.c$353$1$200 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:353: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$Lab_6_New.c$356$1$202 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:356: REF0CN = 0x03;  //set VREF to internal pin not external
	mov	_REF0CN,#0x03
	C$Lab_6_New.c$357$1$202 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:357: ADC1CN = 0x80;  //set ADC1 to active
	mov	_ADC1CN,#0x80
	C$Lab_6_New.c$358$1$202 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:358: ADC1CF |= 0x01; //set gain to 1
	orl	_ADC1CF,#0x01
	C$Lab_6_New.c$359$1$202 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_AD_input'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_AD_input$0$0 ==.
	C$Lab_6_New.c$361$1$202 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:361: unsigned char read_AD_input(unsigned char n)
;	-----------------------------------------
;	 function read_AD_input
;	-----------------------------------------
_read_AD_input:
	mov	_AMX1SL,dpl
	C$Lab_6_New.c$364$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:364: ADC1CN &= ~0x20; 				 //clears conversion flag
	anl	_ADC1CN,#0xdf
	C$Lab_6_New.c$365$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:365: ADC1CN |= 0x10; 				 //initiate A/D conversion
	orl	_ADC1CN,#0x10
	C$Lab_6_New.c$366$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:366: while ((ADC1CN & 0x20) == 0x00); //waits until the control register says conversion is complete
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$Lab_6_New.c$367$1$204 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 3-2\Lab 6 New.c:367: return ADC1; 				   	 //outputs conversion's value
	mov	dpl,_ADC1
	C$Lab_6_New.c$368$1$204 ==.
	XG$read_AD_input$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
FLab_6_New$__str_0$0$0 == .
___str_0:
	.db 0x0a
	.ascii "Type digits; end w/#"
	.db 0x00
FLab_6_New$__str_1$0$0 == .
___str_1:
	.ascii "     %c%c%c%c%c"
	.db 0x00
FLab_6_New$__str_2$0$0 == .
___str_2:
	.ascii "%c"
	.db 0x00
FLab_6_New$__str_3$0$0 == .
___str_3:
	.ascii "Input Proportional Gain: "
	.db 0x0d
	.db 0x00
FLab_6_New$__str_4$0$0 == .
___str_4:
	.ascii "Proportional Gain: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab_6_New$__str_5$0$0 == .
___str_5:
	.ascii "Input Derivative Gain: "
	.db 0x0d
	.db 0x00
FLab_6_New$__str_6$0$0 == .
___str_6:
	.ascii "Derivative Gain: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab_6_New$__str_7$0$0 == .
___str_7:
	.ascii "Input Heading: "
	.db 0x0d
	.db 0x00
FLab_6_New$__str_8$0$0 == .
___str_8:
	.ascii "Desired Heading: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab_6_New$__str_9$0$0 == .
___str_9:
	.ascii "Desired Heading   Actual Heading   Ranger Reading   Heading "
	.ascii "Angle Adjustment   Thrust Pulsewidth   Battery Voltage "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab_6_New$__str_10$0$0 == .
___str_10:
	.ascii "%8.3d,   %8.3d,   %8.3d,   %8.3d,   %8.3d,   %8.3d "
	.db 0x0d
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
