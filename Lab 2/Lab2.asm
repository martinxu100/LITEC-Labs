;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module Lab2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _rand
	.globl _putchar
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _POT
	.globl _LED0
	.globl _LED1
	.globl _BILED2
	.globl _BILED1
	.globl _LED2
	.globl _PB0
	.globl _PB1
	.globl _SS1
	.globl _PB2
	.globl _PB3
	.globl _LED3
	.globl _SS0
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
	.globl _aligned_alloc_PARM_2
	.globl _debounce_time
	.globl _Mode3Rounds
	.globl _player2blink
	.globl _player1blink
	.globl _player1turn
	.globl _startLED
	.globl _instant_lose
	.globl _Mode2Rounds
	.globl _player2press
	.globl _player1press
	.globl _blink_counts
	.globl _blink_time
	.globl _ad_result
	.globl _counts
	.globl _Mode_1
	.globl _Mode_2
	.globl _Mode_3
	.globl _randLED
	.globl _Mode_3_Run
	.globl _turnOff
	.globl _debounce
	.globl _Port_Init
	.globl _Interrupt_Init
	.globl _Timer_Init
	.globl _Timer0_ISR
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
G$SS0$0$0 == 0x00a0
_SS0	=	0x00a0
G$LED3$0$0 == 0x00a1
_LED3	=	0x00a1
G$PB3$0$0 == 0x00a2
_PB3	=	0x00a2
G$PB2$0$0 == 0x00a3
_PB2	=	0x00a3
G$SS1$0$0 == 0x00a5
_SS1	=	0x00a5
G$PB1$0$0 == 0x00b0
_PB1	=	0x00b0
G$PB0$0$0 == 0x00b1
_PB0	=	0x00b1
G$LED2$0$0 == 0x00b2
_LED2	=	0x00b2
G$BILED1$0$0 == 0x00b3
_BILED1	=	0x00b3
G$BILED2$0$0 == 0x00b4
_BILED2	=	0x00b4
G$LED1$0$0 == 0x00b5
_LED1	=	0x00b5
G$LED0$0$0 == 0x00b6
_LED0	=	0x00b6
G$POT$0$0 == 0x0091
_POT	=	0x0091
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$counts$0$0==.
_counts::
	.ds 2
G$ad_result$0$0==.
_ad_result::
	.ds 1
G$blink_time$0$0==.
_blink_time::
	.ds 2
G$blink_counts$0$0==.
_blink_counts::
	.ds 2
G$player1press$0$0==.
_player1press::
	.ds 2
G$player2press$0$0==.
_player2press::
	.ds 2
G$Mode2Rounds$0$0==.
_Mode2Rounds::
	.ds 2
G$instant_lose$0$0==.
_instant_lose::
	.ds 2
G$startLED$0$0==.
_startLED::
	.ds 2
G$player1turn$0$0==.
_player1turn::
	.ds 2
G$player1blink$0$0==.
_player1blink::
	.ds 2
G$player2blink$0$0==.
_player2blink::
	.ds 2
G$Mode3Rounds$0$0==.
_Mode3Rounds::
	.ds 2
G$debounce_time$0$0==.
_debounce_time::
	.ds 2
LLab2.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
	ljmp	_Timer0_ISR
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$Lab2.c$62$1$12 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:62: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$Lab2.c$64$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:64: Sys_Init();
	lcall	_Sys_Init
	C$Lab2.c$65$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:65: putchar(' ');
	mov	dpl,#0x20
	lcall	_putchar
	C$Lab2.c$66$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:66: Port_Init();
	lcall	_Port_Init
	C$Lab2.c$67$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:67: Interrupt_Init();
	lcall	_Interrupt_Init
	C$Lab2.c$68$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:68: Timer_Init();
	lcall	_Timer_Init
	C$Lab2.c$69$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:69: ADC_Init();
	lcall	_ADC_Init
	C$Lab2.c$70$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:70: TR0 = 1;
	setb	_TR0
	C$Lab2.c$72$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:72: while (1)
00122$:
	C$Lab2.c$74$2$62 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:74: if (SS0 == 1 && SS1 ==1)
	jnb	_SS0,00104$
	jnb	_SS1,00104$
	C$Lab2.c$76$3$63 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:76: if (PB0 == 0)
	jb	_PB0,00104$
	C$Lab2.c$78$4$64 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:78: turnOff();
	lcall	_turnOff
00104$:
	C$Lab2.c$81$2$62 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:81: if (SS0 == 0 && SS1 == 1)
	jb	_SS0,00109$
	jnb	_SS1,00109$
	C$Lab2.c$83$3$65 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:83: if (PB0 == 0)
	jb	_PB0,00109$
	C$Lab2.c$85$4$66 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:85: Mode_1();
	lcall	_Mode_1
00109$:
	C$Lab2.c$89$2$62 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:89: if (SS0 == 1 && SS1 == 0)
	jnb	_SS0,00114$
	jb	_SS1,00114$
	C$Lab2.c$91$3$67 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:91: if (PB0 == 0)
	jb	_PB0,00114$
	C$Lab2.c$93$4$68 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:93: Mode_2();
	lcall	_Mode_2
00114$:
	C$Lab2.c$97$2$62 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:97: if (SS0 == 0 && SS1 == 0)
	jb	_SS0,00122$
	jb	_SS1,00122$
	C$Lab2.c$99$3$69 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:99: if (PB0 == 0)
	jb	_PB0,00122$
	C$Lab2.c$101$4$70 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:101: Mode_3();
	lcall	_Mode_3
	sjmp	00122$
	C$Lab2.c$105$1$61 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_1'
;------------------------------------------------------------
	G$Mode_1$0$0 ==.
	C$Lab2.c$108$1$61 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:108: void Mode_1(void)
;	-----------------------------------------
;	 function Mode_1
;	-----------------------------------------
_Mode_1:
	C$Lab2.c$110$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:110: turnOff();
	lcall	_turnOff
	C$Lab2.c$113$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:113: ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
	mov	dpl,#0x01
	lcall	_read_AD_input
	C$Lab2.c$114$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:114: blink_time = ((ad_result * 3) + 250);             //convert A/D value to between 250 and 1000 ms
	mov	a,dpl
	mov	_ad_result,a
	mov	b,#0x03
	mul	ab
	add	a,#0xfa
	mov	_blink_time,a
	clr	a
	addc	a,b
	mov	(_blink_time + 1),a
	C$Lab2.c$115$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:115: blink_counts = blink_time * .3375;                //convert ms to overflows
	mov	dpl,_blink_time
	mov	dph,(_blink_time + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xcccd
	mov	b,#0xac
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_blink_counts,dpl
	mov	(_blink_counts + 1),dph
	C$Lab2.c$117$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:117: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$118$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:118: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$119$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:119: while (counts < blink_counts);                    //wait until set time
00101$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00101$
	C$Lab2.c$120$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:120: LED0 = 1;                                        //turn off top LED
	setb	_LED0
	C$Lab2.c$122$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:122: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$123$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:123: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$124$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:124: while (counts < blink_counts);                    //wait until set time
00104$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00104$
	C$Lab2.c$125$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:125: LED1 = 1;                                        //turn off right LED
	setb	_LED1
	C$Lab2.c$127$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:127: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$128$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:128: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$129$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:129: while (counts < blink_counts);                    //wait until set time
00107$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00107$
	C$Lab2.c$130$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:130: LED2 = 1;                                        //turn off bottom LED
	setb	_LED2
	C$Lab2.c$132$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:132: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$133$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:133: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$134$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:134: while (counts < blink_counts);                    //wait until set time
00110$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00110$
	C$Lab2.c$135$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:135: LED3 = 1;                                        //turn off left LED
	setb	_LED3
	C$Lab2.c$137$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:137: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$138$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:138: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$139$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:139: while (counts < blink_counts);                    //wait until set time
00113$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00113$
	C$Lab2.c$140$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:140: LED0 = 1;                                        //turn off top LED
	setb	_LED0
	C$Lab2.c$142$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:142: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$143$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:143: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$144$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:144: while (counts < blink_counts);                    //wait until set time
00116$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00116$
	C$Lab2.c$145$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:145: LED3 = 1;                                        //turn off left LED
	setb	_LED3
	C$Lab2.c$147$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:147: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$148$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:148: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$149$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:149: while (counts < blink_counts);                    //wait until set time
00119$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00119$
	C$Lab2.c$150$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:150: LED2 = 1;                                        //turn off bottom LED
	setb	_LED2
	C$Lab2.c$152$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:152: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$153$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:153: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$154$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:154: while (counts < blink_counts);                    //wait until set time
00122$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00122$
	C$Lab2.c$155$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:155: LED1 = 1;                                        //turn off right LED
	setb	_LED1
	C$Lab2.c$158$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:158: ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
	mov	dpl,#0x01
	lcall	_read_AD_input
	C$Lab2.c$159$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:159: blink_time = ((ad_result * 3) + 250);             //convert A/D value to seconds
	mov	a,dpl
	mov	_ad_result,a
	mov	b,#0x03
	mul	ab
	add	a,#0xfa
	mov	_blink_time,a
	clr	a
	addc	a,b
	mov	(_blink_time + 1),a
	C$Lab2.c$160$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:160: blink_counts = blink_time * .3375;                //convert blink seconds to counts
	mov	dpl,_blink_time
	mov	dph,(_blink_time + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xcccd
	mov	b,#0xac
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_blink_counts,dpl
	mov	(_blink_counts + 1),dph
	C$Lab2.c$162$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:162: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$163$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:163: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$164$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:164: while (counts < blink_counts);                    //wait until set time
00125$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00125$
	C$Lab2.c$165$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:165: LED0 = 1;                                        //turn off top LED
	setb	_LED0
	C$Lab2.c$167$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:167: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$168$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:168: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$169$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:169: while (counts < blink_counts);                    //wait until set time
00128$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00128$
	C$Lab2.c$170$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:170: LED2 = 1;                                        //turn off bottom LED
	setb	_LED2
	C$Lab2.c$172$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:172: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$173$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:173: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$174$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:174: while (counts < blink_counts);                    //wait until set time
00131$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00131$
	C$Lab2.c$175$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:175: LED3 = 1;                                        //turn off left LED
	setb	_LED3
	C$Lab2.c$177$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:177: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$178$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:178: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$179$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:179: while (counts < blink_counts);                    //wait until set time
00134$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00134$
	C$Lab2.c$180$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:180: LED1 = 1;                                        //turn off right LED
	setb	_LED1
	C$Lab2.c$182$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:182: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$183$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:183: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$184$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:184: while (counts < blink_counts);                    //wait until set time
00137$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00137$
	C$Lab2.c$185$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:185: LED3 = 1;                                        //turn off left LED
	setb	_LED3
	C$Lab2.c$187$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:187: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$188$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:188: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$189$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:189: while (counts < blink_counts);                    //wait until set time
00140$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00140$
	C$Lab2.c$190$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:190: LED2 = 1;                                        //turn off bottom LED
	setb	_LED2
	C$Lab2.c$192$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:192: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$193$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:193: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$194$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:194: while (counts < blink_counts);                    //wait until set time
00143$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00143$
	C$Lab2.c$195$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:195: LED0 = 1;                                        //turn off top LED
	setb	_LED0
	C$Lab2.c$198$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:198: ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
	mov	dpl,#0x01
	lcall	_read_AD_input
	C$Lab2.c$199$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:199: blink_time = ((ad_result * 3) + 250);             //convert A/D value to seconds
	mov	a,dpl
	mov	_ad_result,a
	mov	b,#0x03
	mul	ab
	add	a,#0xfa
	mov	_blink_time,a
	clr	a
	addc	a,b
	mov	(_blink_time + 1),a
	C$Lab2.c$200$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:200: blink_counts = blink_time * .3375;                //convert blink seconds to counts
	mov	dpl,_blink_time
	mov	dph,(_blink_time + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xcccd
	mov	b,#0xac
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_blink_counts,dpl
	mov	(_blink_counts + 1),dph
	C$Lab2.c$202$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:202: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$203$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:203: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$204$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:204: while (counts < blink_counts);                    //wait until set time
00146$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00146$
	C$Lab2.c$205$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:205: LED3 = 1;                                        //turn off left LED
	setb	_LED3
	C$Lab2.c$207$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:207: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$208$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:208: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$209$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:209: while (counts < blink_counts);                    //wait until set time
00149$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00149$
	C$Lab2.c$210$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:210: LED1 = 1;                                        //turn off right LED
	setb	_LED1
	C$Lab2.c$212$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:212: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$213$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:213: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$214$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:214: while (counts < blink_counts);                    //wait until set time
00152$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00152$
	C$Lab2.c$215$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:215: LED3 = 1;                                        //turn off left LED
	setb	_LED3
	C$Lab2.c$217$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:217: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$218$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:218: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$219$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:219: while (counts < blink_counts);                    //wait until set time
00155$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00155$
	C$Lab2.c$220$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:220: LED1 = 1;                                        //turn off right LED
	setb	_LED1
	C$Lab2.c$221$1$72 ==.
	XG$Mode_1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_2'
;------------------------------------------------------------
	G$Mode_2$0$0 ==.
	C$Lab2.c$224$1$72 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:224: void Mode_2(void)
;	-----------------------------------------
;	 function Mode_2
;	-----------------------------------------
_Mode_2:
	C$Lab2.c$226$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:226: turnOff();
	lcall	_turnOff
	C$Lab2.c$227$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:227: Mode2Rounds = 0;        //reset number rounds played
	clr	a
	mov	_Mode2Rounds,a
	mov	(_Mode2Rounds + 1),a
	C$Lab2.c$228$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:228: player1press = 0;        //reset player scores
	mov	_player1press,a
	mov	(_player1press + 1),a
	C$Lab2.c$229$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:229: player2press = 0;
	mov	_player2press,a
	mov	(_player2press + 1),a
	C$Lab2.c$230$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:230: instant_lose = 0;
	mov	_instant_lose,a
	mov	(_instant_lose + 1),a
	C$Lab2.c$232$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:232: while (Mode2Rounds < 3)
00121$:
	clr	c
	mov	a,_Mode2Rounds
	subb	a,#0x03
	mov	a,(_Mode2Rounds + 1)
	subb	a,#0x00
	jc	00192$
	ljmp	00123$
00192$:
	C$Lab2.c$234$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:234: ad_result = read_AD_input(1);            //read the A/D value on P1.1, results in between 0 and 255
	mov	dpl,#0x01
	lcall	_read_AD_input
	C$Lab2.c$235$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:235: blink_time = ((ad_result * 16) + 1000); //convert A/D value to between 1000 and 5000 ms
	mov	a,dpl
	mov	_ad_result,a
	mov	b,#0x10
	mul	ab
	add	a,#0xe8
	mov	_blink_time,a
	mov	a,#0x03
	addc	a,b
	mov	(_blink_time + 1),a
	C$Lab2.c$236$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:236: blink_counts = blink_time * .3375;        //convert ms to overflows
	mov	dpl,_blink_time
	mov	dph,(_blink_time + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xcccd
	mov	b,#0xac
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_blink_counts,dpl
	mov	(_blink_counts + 1),dph
	C$Lab2.c$238$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:238: counts = 0;                                //reset counter/timer
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$239$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:239: LED3 = 0;                                //turn on left LED
	clr	_LED3
	C$Lab2.c$240$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:240: while (counts < blink_counts)            //length of one player turn
00108$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jnc	00110$
	C$Lab2.c$242$3$76 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:242: if (PB3 == 0)                       //if left PB pushed while left LED is on
	jb	_PB3,00105$
	C$Lab2.c$244$4$77 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:244: debounce();
	lcall	_debounce
	C$Lab2.c$245$4$77 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:245: while (PB3 == 0);
00101$:
	jnb	_PB3,00101$
	C$Lab2.c$246$4$77 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:246: debounce();
	lcall	_debounce
	C$Lab2.c$247$4$77 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:247: player1press++;                    //increment player 1 score
	inc	_player1press
	clr	a
	cjne	a,_player1press,00196$
	inc	(_player1press + 1)
00196$:
00105$:
	C$Lab2.c$250$3$76 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:250: if (PB1 == 0)                        //if player 2 presses during player 1 turn
	jb	_PB1,00108$
	C$Lab2.c$252$4$78 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:252: instant_lose = 2;
	mov	_instant_lose,#0x02
	mov	(_instant_lose + 1),#0x00
	C$Lab2.c$253$4$78 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:253: goto instantlose2;
	ljmp	00130$
00110$:
	C$Lab2.c$256$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:256: LED3 = 1;
	setb	_LED3
	C$Lab2.c$258$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:258: counts = 0;                                //reset counter
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$259$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:259: LED1 = 0;
	clr	_LED1
	C$Lab2.c$260$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:260: while (counts < blink_counts)
00118$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jnc	00120$
	C$Lab2.c$262$3$79 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:262: if (PB1 == 0)
	jb	_PB1,00115$
	C$Lab2.c$264$4$80 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:264: debounce();
	lcall	_debounce
	C$Lab2.c$265$4$80 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:265: while (PB1 == 0);
00111$:
	jnb	_PB1,00111$
	C$Lab2.c$266$4$80 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:266: debounce();
	lcall	_debounce
	C$Lab2.c$267$4$80 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:267: player2press++;                    //increment player 2 score
	inc	_player2press
	clr	a
	cjne	a,_player2press,00201$
	inc	(_player2press + 1)
00201$:
00115$:
	C$Lab2.c$270$3$79 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:270: if (PB3 == 0)
	jb	_PB3,00118$
	C$Lab2.c$272$4$81 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:272: instant_lose = 1;
	mov	_instant_lose,#0x01
	mov	(_instant_lose + 1),#0x00
	C$Lab2.c$273$4$81 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:273: goto instantlose1;
	ljmp	00133$
00120$:
	C$Lab2.c$276$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:276: LED1 = 1;
	setb	_LED1
	C$Lab2.c$278$2$75 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:278: Mode2Rounds++;
	inc	_Mode2Rounds
	clr	a
	cjne	a,_Mode2Rounds,00203$
	inc	(_Mode2Rounds + 1)
00203$:
	ljmp	00121$
00123$:
	C$Lab2.c$281$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:281: printf("Player 1 presses: %d \r\n", player1press);
	push	_player1press
	push	(_player1press + 1)
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$Lab2.c$282$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:282: printf("Player 2 presses: %d \r\n", player2press);
	push	_player2press
	push	(_player2press + 1)
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$Lab2.c$284$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:284: if (player1press > player2press)
	clr	c
	mov	a,_player2press
	subb	a,_player1press
	mov	a,(_player2press + 1)
	subb	a,(_player1press + 1)
	jnc	00128$
	C$Lab2.c$286$2$82 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:286: BILED1 = 0;        //turn BILED green
	clr	_BILED1
	C$Lab2.c$287$2$82 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:287: BILED2 = 1;
	setb	_BILED2
	C$Lab2.c$288$2$82 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:288: printf("Player 1 wins! \r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00130$
00128$:
	C$Lab2.c$290$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:290: else if (player2press > player1press)
	clr	c
	mov	a,_player1press
	subb	a,_player2press
	mov	a,(_player1press + 1)
	subb	a,(_player2press + 1)
	jnc	00125$
	C$Lab2.c$292$2$83 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:292: BILED1 = 1;        //turn BILED red
	setb	_BILED1
	C$Lab2.c$293$2$83 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:293: BILED2 = 0;
	clr	_BILED2
	C$Lab2.c$294$2$83 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:294: printf("Player 2 wins! \r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00130$
00125$:
	C$Lab2.c$298$2$84 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:298: printf("Tie! \r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$Lab2.c$301$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:301: instantlose2:
00130$:
	C$Lab2.c$302$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:302: if (instant_lose == 2)
	mov	a,#0x02
	cjne	a,_instant_lose,00206$
	clr	a
	cjne	a,(_instant_lose + 1),00206$
	sjmp	00207$
00206$:
	sjmp	00136$
00207$:
	C$Lab2.c$304$2$85 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:304: printf("Player 1 wins because Player 2 went during the wrong turn. \r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$Lab2.c$305$2$85 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:305: BILED1 = 0;        //turn BILED green
	clr	_BILED1
	C$Lab2.c$306$2$85 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:306: BILED2 = 1;
	setb	_BILED2
	C$Lab2.c$308$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:308: return;
	C$Lab2.c$310$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:310: instantlose1:
	sjmp	00136$
00133$:
	C$Lab2.c$311$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:311: if (instant_lose == 1)
	mov	a,#0x01
	cjne	a,_instant_lose,00208$
	dec	a
	cjne	a,(_instant_lose + 1),00208$
	sjmp	00209$
00208$:
	sjmp	00136$
00209$:
	C$Lab2.c$313$2$86 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:313: printf("Player 2 wins because Player 1 went during the wrong turn. \r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$Lab2.c$314$2$86 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:314: BILED1 = 1;        //turn BILED red
	setb	_BILED1
	C$Lab2.c$315$2$86 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:315: BILED2 = 0;
	clr	_BILED2
00136$:
	C$Lab2.c$317$1$74 ==.
	XG$Mode_2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_3'
;------------------------------------------------------------
	G$Mode_3$0$0 ==.
	C$Lab2.c$322$1$74 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:322: void Mode_3(void)
;	-----------------------------------------
;	 function Mode_3
;	-----------------------------------------
_Mode_3:
	C$Lab2.c$324$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:324: turnOff();
	lcall	_turnOff
	C$Lab2.c$325$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:325: Mode3Rounds = 0;
	clr	a
	mov	_Mode3Rounds,a
	mov	(_Mode3Rounds + 1),a
	C$Lab2.c$326$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:326: ad_result = read_AD_input(1);            //read the A/D value on P1.1, results in between 0 and 255
	mov	dpl,#0x01
	lcall	_read_AD_input
	C$Lab2.c$327$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:327: blink_time = ((ad_result * 3) + 250);     //convert A/D value to between 250 and 1000 ms
	mov	a,dpl
	mov	_ad_result,a
	mov	b,#0x03
	mul	ab
	add	a,#0xfa
	mov	_blink_time,a
	clr	a
	addc	a,b
	mov	(_blink_time + 1),a
	C$Lab2.c$328$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:328: blink_counts = blink_time * .3375;        //convert ms to overflows
	mov	dpl,_blink_time
	mov	dph,(_blink_time + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xcccd
	mov	b,#0xac
	mov	a,#0x3e
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_blink_counts,dpl
	mov	(_blink_counts + 1),dph
	C$Lab2.c$329$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:329: player1turn = 1;
	mov	_player1turn,#0x01
	C$Lab2.c$330$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:330: player1blink = 0;
	clr	a
	mov	(_player1turn + 1),a
	mov	_player1blink,a
	mov	(_player1blink + 1),a
	C$Lab2.c$331$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:331: player2blink = 0;
	mov	_player2blink,a
	mov	(_player2blink + 1),a
	C$Lab2.c$332$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:332: Mode3Rounds = 0;
	mov	_Mode3Rounds,a
	mov	(_Mode3Rounds + 1),a
	C$Lab2.c$334$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:334: Mode_3_Run();
	lcall	_Mode_3_Run
	C$Lab2.c$336$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:336: printf("Player 1 misses: %d \r\n", player1blink);
	push	_player1blink
	push	(_player1blink + 1)
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$Lab2.c$337$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:337: printf("Player 2 misses: %d \r\n", player2blink);
	push	_player2blink
	push	(_player2blink + 1)
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
	C$Lab2.c$339$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:339: if (player1blink < player2blink)
	clr	c
	mov	a,_player1blink
	subb	a,_player2blink
	mov	a,(_player1blink + 1)
	subb	a,(_player2blink + 1)
	jnc	00105$
	C$Lab2.c$341$2$89 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:341: BILED1 = 0;
	clr	_BILED1
	C$Lab2.c$342$2$89 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:342: BILED2 = 1;
	setb	_BILED2
	C$Lab2.c$343$2$89 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:343: printf("Player 1 wins! \r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00107$
00105$:
	C$Lab2.c$345$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:345: else if (player1blink > player2blink)
	clr	c
	mov	a,_player2blink
	subb	a,_player1blink
	mov	a,(_player2blink + 1)
	subb	a,(_player1blink + 1)
	jnc	00102$
	C$Lab2.c$347$2$90 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:347: BILED1 = 1;
	setb	_BILED1
	C$Lab2.c$348$2$90 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:348: BILED2 = 0;
	clr	_BILED2
	C$Lab2.c$349$2$90 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:349: printf("Player 2 wins! \r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00107$
00102$:
	C$Lab2.c$353$2$91 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:353: printf("Tie! \r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00107$:
	C$Lab2.c$355$1$88 ==.
	XG$Mode_3$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'randLED'
;------------------------------------------------------------
	G$randLED$0$0 ==.
	C$Lab2.c$358$1$88 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:358: void randLED(void)
;	-----------------------------------------
;	 function randLED
;	-----------------------------------------
_randLED:
	C$Lab2.c$360$1$93 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:360: startLED = (rand() % 4);
	lcall	_rand
	mov	__modsint_PARM_2,#0x04
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_startLED,dpl
	mov	(_startLED + 1),dph
	C$Lab2.c$361$1$93 ==.
	XG$randLED$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Mode_3_Run'
;------------------------------------------------------------
	G$Mode_3_Run$0$0 ==.
	C$Lab2.c$364$1$93 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:364: void Mode_3_Run(void)
;	-----------------------------------------
;	 function Mode_3_Run
;	-----------------------------------------
_Mode_3_Run:
	C$Lab2.c$366$1$95 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:366: playerturn:
00101$:
	C$Lab2.c$367$1$95 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:367: if (player1turn == 1)                    //clockwise **********
	mov	a,#0x01
	cjne	a,_player1turn,01073$
	dec	a
	cjne	a,(_player1turn + 1),01073$
	sjmp	01074$
01073$:
	ljmp	00420$
01074$:
	C$Lab2.c$369$2$96 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:369: randLED();
	lcall	_randLED
	C$Lab2.c$371$2$96 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:371: while (startLED == 0 && Mode3Rounds < 5)
00139$:
	mov	a,_startLED
	orl	a,(_startLED + 1)
	jz	01075$
	ljmp	00179$
01075$:
	clr	c
	mov	a,_Mode3Rounds
	subb	a,#0x05
	mov	a,(_Mode3Rounds + 1)
	subb	a,#0x00
	jc	01076$
	ljmp	00179$
01076$:
	C$Lab2.c$373$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:373: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$374$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:374: turnOff();
	lcall	_turnOff
	C$Lab2.c$375$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:375: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$376$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:376: while (counts < blink_counts);                    //wait until set time
00102$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00102$
	C$Lab2.c$377$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:377: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00106$
	jnb	_PB1,00106$
	jnb	_PB2,00106$
	jnb	_PB3,00106$
	C$Lab2.c$379$4$98 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:379: debounce();
	lcall	_debounce
	C$Lab2.c$380$4$98 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:380: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$381$4$98 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:381: goto playerturn;
	sjmp	00101$
00106$:
	C$Lab2.c$385$4$99 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:385: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01082$
	inc	(_player1blink + 1)
01082$:
	C$Lab2.c$388$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:388: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$389$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:389: turnOff();
	lcall	_turnOff
	C$Lab2.c$390$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:390: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$391$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:391: while (counts < blink_counts);                    //wait until set time
00111$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00111$
	C$Lab2.c$392$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:392: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00115$
	jb	_PB1,00115$
	jnb	_PB2,00115$
	jnb	_PB3,00115$
	C$Lab2.c$394$4$100 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:394: debounce();
	lcall	_debounce
	C$Lab2.c$395$4$100 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:395: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$396$4$100 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:396: goto playerturn;
	ljmp	00101$
00115$:
	C$Lab2.c$400$4$101 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:400: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01088$
	inc	(_player1blink + 1)
01088$:
	C$Lab2.c$403$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:403: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$404$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:404: turnOff();
	lcall	_turnOff
	C$Lab2.c$405$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:405: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$406$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:406: while (counts < blink_counts);                    //wait until set time
00120$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00120$
	C$Lab2.c$407$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:407: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00124$
	jnb	_PB1,00124$
	jb	_PB2,00124$
	jnb	_PB3,00124$
	C$Lab2.c$409$4$102 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:409: debounce();
	lcall	_debounce
	C$Lab2.c$410$4$102 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:410: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$411$4$102 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:411: goto playerturn;
	ljmp	00101$
00124$:
	C$Lab2.c$415$4$103 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:415: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01094$
	inc	(_player1blink + 1)
01094$:
	C$Lab2.c$418$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:418: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$419$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:419: turnOff();
	lcall	_turnOff
	C$Lab2.c$420$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:420: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$421$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:421: while (counts < blink_counts);                    //wait until set time
00129$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00129$
	C$Lab2.c$422$3$97 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:422: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00133$
	jnb	_PB1,00133$
	jnb	_PB2,00133$
	jb	_PB3,00133$
	C$Lab2.c$424$4$104 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:424: debounce();
	lcall	_debounce
	C$Lab2.c$425$4$104 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:425: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$426$4$104 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:426: goto playerturn;
	ljmp	00101$
00133$:
	C$Lab2.c$430$4$105 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:430: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01100$
	inc	(_player1blink + 1)
01100$:
	ljmp	00139$
	C$Lab2.c$434$2$96 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:434: while (startLED == 1 && Mode3Rounds < 5)
00179$:
	mov	a,#0x01
	cjne	a,_startLED,01101$
	dec	a
	cjne	a,(_startLED + 1),01101$
	sjmp	01102$
01101$:
	ljmp	00219$
01102$:
	clr	c
	mov	a,_Mode3Rounds
	subb	a,#0x05
	mov	a,(_Mode3Rounds + 1)
	subb	a,#0x00
	jc	01103$
	ljmp	00219$
01103$:
	C$Lab2.c$436$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:436: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$437$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:437: turnOff();
	lcall	_turnOff
	C$Lab2.c$438$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:438: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$439$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:439: while (counts < blink_counts);                    //wait until set time
00142$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00142$
	C$Lab2.c$440$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:440: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00146$
	jb	_PB1,00146$
	jnb	_PB2,00146$
	jnb	_PB3,00146$
	C$Lab2.c$442$4$107 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:442: debounce();
	lcall	_debounce
	C$Lab2.c$443$4$107 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:443: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$444$4$107 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:444: goto playerturn;
	ljmp	00101$
00146$:
	C$Lab2.c$448$4$108 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:448: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01109$
	inc	(_player1blink + 1)
01109$:
	C$Lab2.c$451$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:451: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$452$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:452: turnOff();
	lcall	_turnOff
	C$Lab2.c$453$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:453: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$454$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:454: while (counts < blink_counts);                    //wait until set time
00151$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00151$
	C$Lab2.c$455$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:455: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00155$
	jnb	_PB1,00155$
	jb	_PB2,00155$
	jnb	_PB3,00155$
	C$Lab2.c$457$4$109 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:457: debounce();
	lcall	_debounce
	C$Lab2.c$458$4$109 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:458: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$459$4$109 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:459: goto playerturn;
	ljmp	00101$
00155$:
	C$Lab2.c$463$4$110 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:463: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01115$
	inc	(_player1blink + 1)
01115$:
	C$Lab2.c$466$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:466: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$467$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:467: turnOff();
	lcall	_turnOff
	C$Lab2.c$468$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:468: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$469$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:469: while (counts < blink_counts);                    //wait until set time
00160$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00160$
	C$Lab2.c$470$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:470: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00164$
	jnb	_PB1,00164$
	jnb	_PB2,00164$
	jb	_PB3,00164$
	C$Lab2.c$472$4$111 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:472: debounce();
	lcall	_debounce
	C$Lab2.c$473$4$111 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:473: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$474$4$111 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:474: goto playerturn;
	ljmp	00101$
00164$:
	C$Lab2.c$478$4$112 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:478: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01121$
	inc	(_player1blink + 1)
01121$:
	C$Lab2.c$481$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:481: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$482$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:482: turnOff();
	lcall	_turnOff
	C$Lab2.c$483$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:483: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$484$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:484: while (counts < blink_counts);                    //wait until set time
00169$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00169$
	C$Lab2.c$485$3$106 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:485: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00173$
	jnb	_PB1,00173$
	jnb	_PB2,00173$
	jnb	_PB3,00173$
	C$Lab2.c$487$4$113 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:487: debounce();
	lcall	_debounce
	C$Lab2.c$488$4$113 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:488: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$489$4$113 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:489: goto playerturn;
	ljmp	00101$
00173$:
	C$Lab2.c$493$4$114 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:493: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01127$
	inc	(_player1blink + 1)
01127$:
	ljmp	00179$
	C$Lab2.c$497$2$96 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:497: while (startLED == 2 && Mode3Rounds < 5)
00219$:
	mov	a,#0x02
	cjne	a,_startLED,01128$
	clr	a
	cjne	a,(_startLED + 1),01128$
	sjmp	01129$
01128$:
	ljmp	00259$
01129$:
	clr	c
	mov	a,_Mode3Rounds
	subb	a,#0x05
	mov	a,(_Mode3Rounds + 1)
	subb	a,#0x00
	jc	01130$
	ljmp	00259$
01130$:
	C$Lab2.c$499$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:499: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$500$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:500: turnOff();
	lcall	_turnOff
	C$Lab2.c$501$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:501: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$502$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:502: while (counts < blink_counts);                    //wait until set time
00182$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00182$
	C$Lab2.c$503$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:503: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00186$
	jnb	_PB1,00186$
	jb	_PB2,00186$
	jnb	_PB3,00186$
	C$Lab2.c$505$4$116 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:505: debounce();
	lcall	_debounce
	C$Lab2.c$506$4$116 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:506: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$507$4$116 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:507: goto playerturn;
	ljmp	00101$
00186$:
	C$Lab2.c$511$4$117 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:511: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01136$
	inc	(_player1blink + 1)
01136$:
	C$Lab2.c$514$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:514: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$515$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:515: turnOff();
	lcall	_turnOff
	C$Lab2.c$516$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:516: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$517$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:517: while (counts < blink_counts);                    //wait until set time
00191$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00191$
	C$Lab2.c$518$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:518: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00195$
	jnb	_PB1,00195$
	jnb	_PB2,00195$
	jb	_PB3,00195$
	C$Lab2.c$520$4$118 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:520: debounce();
	lcall	_debounce
	C$Lab2.c$521$4$118 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:521: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$522$4$118 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:522: goto playerturn;
	ljmp	00101$
00195$:
	C$Lab2.c$526$4$119 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:526: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01142$
	inc	(_player1blink + 1)
01142$:
	C$Lab2.c$529$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:529: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$530$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:530: turnOff();
	lcall	_turnOff
	C$Lab2.c$531$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:531: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$532$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:532: while (counts < blink_counts);                    //wait until set time
00200$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00200$
	C$Lab2.c$533$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:533: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00204$
	jnb	_PB1,00204$
	jnb	_PB2,00204$
	jnb	_PB3,00204$
	C$Lab2.c$535$4$120 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:535: debounce();
	lcall	_debounce
	C$Lab2.c$536$4$120 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:536: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$537$4$120 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:537: goto playerturn;
	ljmp	00101$
00204$:
	C$Lab2.c$541$4$121 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:541: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01148$
	inc	(_player1blink + 1)
01148$:
	C$Lab2.c$544$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:544: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$545$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:545: turnOff();
	lcall	_turnOff
	C$Lab2.c$546$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:546: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$547$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:547: while (counts < blink_counts);                    //wait until set time
00209$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00209$
	C$Lab2.c$548$3$115 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:548: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00213$
	jb	_PB1,00213$
	jnb	_PB2,00213$
	jnb	_PB3,00213$
	C$Lab2.c$550$4$122 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:550: debounce();
	lcall	_debounce
	C$Lab2.c$551$4$122 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:551: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$552$4$122 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:552: goto playerturn;
	ljmp	00101$
00213$:
	C$Lab2.c$556$4$123 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:556: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01154$
	inc	(_player1blink + 1)
01154$:
	ljmp	00219$
	C$Lab2.c$560$2$96 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:560: while (startLED == 3 && Mode3Rounds < 5)
00259$:
	mov	a,#0x03
	cjne	a,_startLED,01155$
	clr	a
	cjne	a,(_startLED + 1),01155$
	sjmp	01156$
01155$:
	ljmp	00420$
01156$:
	clr	c
	mov	a,_Mode3Rounds
	subb	a,#0x05
	mov	a,(_Mode3Rounds + 1)
	subb	a,#0x00
	jc	01157$
	ljmp	00420$
01157$:
	C$Lab2.c$562$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:562: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$563$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:563: turnOff();
	lcall	_turnOff
	C$Lab2.c$564$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:564: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$565$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:565: while (counts < blink_counts);                    //wait until set time
00222$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00222$
	C$Lab2.c$566$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:566: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00226$
	jnb	_PB1,00226$
	jnb	_PB2,00226$
	jb	_PB3,00226$
	C$Lab2.c$568$4$125 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:568: debounce();
	lcall	_debounce
	C$Lab2.c$569$4$125 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:569: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$570$4$125 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:570: goto playerturn;
	ljmp	00101$
00226$:
	C$Lab2.c$574$4$126 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:574: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01163$
	inc	(_player1blink + 1)
01163$:
	C$Lab2.c$577$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:577: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$578$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:578: turnOff();
	lcall	_turnOff
	C$Lab2.c$579$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:579: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$580$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:580: while (counts < blink_counts);                    //wait until set time
00231$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00231$
	C$Lab2.c$581$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:581: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00235$
	jnb	_PB1,00235$
	jnb	_PB2,00235$
	jnb	_PB3,00235$
	C$Lab2.c$583$4$127 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:583: debounce();
	lcall	_debounce
	C$Lab2.c$584$4$127 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:584: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$585$4$127 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:585: goto playerturn;
	ljmp	00101$
00235$:
	C$Lab2.c$589$4$128 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:589: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01169$
	inc	(_player1blink + 1)
01169$:
	C$Lab2.c$592$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:592: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$593$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:593: turnOff();
	lcall	_turnOff
	C$Lab2.c$594$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:594: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$595$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:595: while (counts < blink_counts);                    //wait until set time
00240$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00240$
	C$Lab2.c$596$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:596: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00244$
	jb	_PB1,00244$
	jnb	_PB2,00244$
	jnb	_PB3,00244$
	C$Lab2.c$598$4$129 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:598: debounce();
	lcall	_debounce
	C$Lab2.c$599$4$129 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:599: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$600$4$129 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:600: goto playerturn;
	ljmp	00101$
00244$:
	C$Lab2.c$604$4$130 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:604: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01175$
	inc	(_player1blink + 1)
01175$:
	C$Lab2.c$607$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:607: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$608$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:608: turnOff();
	lcall	_turnOff
	C$Lab2.c$609$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:609: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$610$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:610: while (counts < blink_counts);                    //wait until set time
00249$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00249$
	C$Lab2.c$611$3$124 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:611: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00253$
	jnb	_PB1,00253$
	jb	_PB2,00253$
	jnb	_PB3,00253$
	C$Lab2.c$613$4$131 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:613: debounce();
	lcall	_debounce
	C$Lab2.c$614$4$131 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:614: player1turn = 0;
	clr	a
	mov	_player1turn,a
	mov	(_player1turn + 1),a
	C$Lab2.c$615$4$131 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:615: goto playerturn;
	ljmp	00101$
00253$:
	C$Lab2.c$619$4$132 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:619: player1blink++;
	inc	_player1blink
	clr	a
	cjne	a,_player1blink,01181$
	inc	(_player1blink + 1)
01181$:
	ljmp	00259$
	C$Lab2.c$624$1$95 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:624: while (player1turn == 0)                //counterclockwise **********
00420$:
	mov	a,_player1turn
	orl	a,(_player1turn + 1)
	jz	01182$
	ljmp	00423$
01182$:
	C$Lab2.c$626$2$133 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:626: randLED();
	lcall	_randLED
	C$Lab2.c$628$2$133 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:628: while (startLED == 0)
00300$:
	mov	a,_startLED
	orl	a,(_startLED + 1)
	jz	01183$
	ljmp	00339$
01183$:
	C$Lab2.c$630$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:630: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$631$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:631: turnOff();
	lcall	_turnOff
	C$Lab2.c$632$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:632: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$633$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:633: while (counts < blink_counts);                    //wait until set time
00264$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00264$
	C$Lab2.c$634$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:634: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00268$
	jnb	_PB1,00268$
	jnb	_PB2,00268$
	jnb	_PB3,00268$
	C$Lab2.c$636$4$135 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:636: debounce();
	lcall	_debounce
	C$Lab2.c$637$4$135 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:637: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$638$4$135 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:638: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01189$
	inc	(_Mode3Rounds + 1)
01189$:
	C$Lab2.c$639$4$135 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:639: goto playerturn;
	ljmp	00101$
00268$:
	C$Lab2.c$643$4$136 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:643: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01190$
	inc	(_player2blink + 1)
01190$:
	C$Lab2.c$646$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:646: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$647$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:647: turnOff();
	lcall	_turnOff
	C$Lab2.c$648$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:648: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$649$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:649: while (counts < blink_counts);                    //wait until set time
00273$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00273$
	C$Lab2.c$650$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:650: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00277$
	jnb	_PB1,00277$
	jnb	_PB2,00277$
	jb	_PB3,00277$
	C$Lab2.c$652$4$137 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:652: debounce();
	lcall	_debounce
	C$Lab2.c$653$4$137 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:653: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$654$4$137 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:654: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01196$
	inc	(_Mode3Rounds + 1)
01196$:
	C$Lab2.c$655$4$137 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:655: goto playerturn;
	ljmp	00101$
00277$:
	C$Lab2.c$659$4$138 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:659: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01197$
	inc	(_player2blink + 1)
01197$:
	C$Lab2.c$662$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:662: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$663$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:663: turnOff();
	lcall	_turnOff
	C$Lab2.c$664$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:664: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$665$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:665: while (counts < blink_counts);                    //wait until set time
00282$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00282$
	C$Lab2.c$666$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:666: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00286$
	jnb	_PB1,00286$
	jb	_PB2,00286$
	jnb	_PB3,00286$
	C$Lab2.c$668$4$139 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:668: debounce();
	lcall	_debounce
	C$Lab2.c$669$4$139 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:669: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$670$4$139 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:670: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01203$
	inc	(_Mode3Rounds + 1)
01203$:
	C$Lab2.c$671$4$139 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:671: goto playerturn;
	ljmp	00101$
00286$:
	C$Lab2.c$675$4$140 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:675: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01204$
	inc	(_player2blink + 1)
01204$:
	C$Lab2.c$678$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:678: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$679$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:679: turnOff();
	lcall	_turnOff
	C$Lab2.c$680$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:680: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$681$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:681: while (counts < blink_counts);                    //wait until set time
00291$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00291$
	C$Lab2.c$682$3$134 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:682: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00295$
	jb	_PB1,00295$
	jnb	_PB2,00295$
	jnb	_PB3,00295$
	C$Lab2.c$684$4$141 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:684: debounce();
	lcall	_debounce
	C$Lab2.c$685$4$141 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:685: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$686$4$141 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:686: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01210$
	inc	(_Mode3Rounds + 1)
01210$:
	C$Lab2.c$687$4$141 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:687: goto playerturn;
	ljmp	00101$
00295$:
	C$Lab2.c$691$4$142 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:691: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01211$
	inc	(_player2blink + 1)
01211$:
	ljmp	00300$
	C$Lab2.c$695$2$133 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:695: while (startLED == 1)
00339$:
	mov	a,#0x01
	cjne	a,_startLED,01212$
	dec	a
	cjne	a,(_startLED + 1),01212$
	sjmp	01213$
01212$:
	ljmp	00378$
01213$:
	C$Lab2.c$697$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:697: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$698$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:698: turnOff();
	lcall	_turnOff
	C$Lab2.c$699$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:699: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$700$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:700: while (counts < blink_counts);                    //wait until set time
00303$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00303$
	C$Lab2.c$701$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:701: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00307$
	jb	_PB1,00307$
	jnb	_PB2,00307$
	jnb	_PB3,00307$
	C$Lab2.c$703$4$144 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:703: debounce();
	lcall	_debounce
	C$Lab2.c$704$4$144 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:704: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$705$4$144 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:705: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01219$
	inc	(_Mode3Rounds + 1)
01219$:
	C$Lab2.c$706$4$144 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:706: goto playerturn;
	ljmp	00101$
00307$:
	C$Lab2.c$710$4$145 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:710: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01220$
	inc	(_player2blink + 1)
01220$:
	C$Lab2.c$713$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:713: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$714$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:714: turnOff();
	lcall	_turnOff
	C$Lab2.c$715$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:715: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$716$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:716: while (counts < blink_counts);                    //wait until set time
00312$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00312$
	C$Lab2.c$717$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:717: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00316$
	jnb	_PB1,00316$
	jnb	_PB2,00316$
	jnb	_PB3,00316$
	C$Lab2.c$719$4$146 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:719: debounce();
	lcall	_debounce
	C$Lab2.c$720$4$146 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:720: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$721$4$146 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:721: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01226$
	inc	(_Mode3Rounds + 1)
01226$:
	C$Lab2.c$722$4$146 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:722: goto playerturn;
	ljmp	00101$
00316$:
	C$Lab2.c$726$4$147 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:726: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01227$
	inc	(_player2blink + 1)
01227$:
	C$Lab2.c$729$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:729: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$730$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:730: turnOff();
	lcall	_turnOff
	C$Lab2.c$731$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:731: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$732$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:732: while (counts < blink_counts);                    //wait until set time
00321$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00321$
	C$Lab2.c$733$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:733: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00325$
	jnb	_PB1,00325$
	jnb	_PB2,00325$
	jb	_PB3,00325$
	C$Lab2.c$735$4$148 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:735: debounce();
	lcall	_debounce
	C$Lab2.c$736$4$148 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:736: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$737$4$148 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:737: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01233$
	inc	(_Mode3Rounds + 1)
01233$:
	C$Lab2.c$738$4$148 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:738: goto playerturn;
	ljmp	00101$
00325$:
	C$Lab2.c$742$4$149 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:742: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01234$
	inc	(_player2blink + 1)
01234$:
	C$Lab2.c$745$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:745: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$746$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:746: turnOff();
	lcall	_turnOff
	C$Lab2.c$747$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:747: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$748$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:748: while (counts < blink_counts);                    //wait until set time
00330$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00330$
	C$Lab2.c$749$3$143 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:749: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00334$
	jnb	_PB1,00334$
	jb	_PB2,00334$
	jnb	_PB3,00334$
	C$Lab2.c$751$4$150 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:751: debounce();
	lcall	_debounce
	C$Lab2.c$752$4$150 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:752: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$753$4$150 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:753: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01240$
	inc	(_Mode3Rounds + 1)
01240$:
	C$Lab2.c$754$4$150 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:754: goto playerturn;
	ljmp	00101$
00334$:
	C$Lab2.c$758$4$151 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:758: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01241$
	inc	(_player2blink + 1)
01241$:
	ljmp	00339$
	C$Lab2.c$762$2$133 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:762: while (startLED == 2)
00378$:
	mov	a,#0x02
	cjne	a,_startLED,01242$
	clr	a
	cjne	a,(_startLED + 1),01242$
	sjmp	01243$
01242$:
	ljmp	00417$
01243$:
	C$Lab2.c$764$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:764: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$765$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:765: turnOff();
	lcall	_turnOff
	C$Lab2.c$766$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:766: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$767$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:767: while (counts < blink_counts);                    //wait until set time
00342$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00342$
	C$Lab2.c$768$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:768: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00346$
	jnb	_PB1,00346$
	jb	_PB2,00346$
	jnb	_PB3,00346$
	C$Lab2.c$770$4$153 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:770: debounce();
	lcall	_debounce
	C$Lab2.c$771$4$153 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:771: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$772$4$153 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:772: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01249$
	inc	(_Mode3Rounds + 1)
01249$:
	C$Lab2.c$773$4$153 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:773: goto playerturn;
	ljmp	00101$
00346$:
	C$Lab2.c$777$4$154 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:777: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01250$
	inc	(_player2blink + 1)
01250$:
	C$Lab2.c$780$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:780: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$781$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:781: turnOff();
	lcall	_turnOff
	C$Lab2.c$782$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:782: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$783$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:783: while (counts < blink_counts);                    //wait until set time
00351$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00351$
	C$Lab2.c$784$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:784: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00355$
	jb	_PB1,00355$
	jnb	_PB2,00355$
	jnb	_PB3,00355$
	C$Lab2.c$786$4$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:786: debounce();
	lcall	_debounce
	C$Lab2.c$787$4$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:787: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$788$4$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:788: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01256$
	inc	(_Mode3Rounds + 1)
01256$:
	C$Lab2.c$789$4$155 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:789: goto playerturn;
	ljmp	00101$
00355$:
	C$Lab2.c$793$4$156 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:793: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01257$
	inc	(_player2blink + 1)
01257$:
	C$Lab2.c$796$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:796: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$797$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:797: turnOff();
	lcall	_turnOff
	C$Lab2.c$798$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:798: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$799$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:799: while (counts < blink_counts);                    //wait until set time
00360$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00360$
	C$Lab2.c$800$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:800: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00364$
	jnb	_PB1,00364$
	jnb	_PB2,00364$
	jnb	_PB3,00364$
	C$Lab2.c$802$4$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:802: debounce();
	lcall	_debounce
	C$Lab2.c$803$4$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:803: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$804$4$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:804: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01263$
	inc	(_Mode3Rounds + 1)
01263$:
	C$Lab2.c$805$4$157 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:805: goto playerturn;
	ljmp	00101$
00364$:
	C$Lab2.c$809$4$158 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:809: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01264$
	inc	(_player2blink + 1)
01264$:
	C$Lab2.c$812$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:812: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$813$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:813: turnOff();
	lcall	_turnOff
	C$Lab2.c$814$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:814: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$815$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:815: while (counts < blink_counts);                    //wait until set time
00369$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00369$
	C$Lab2.c$816$3$152 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:816: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00373$
	jnb	_PB1,00373$
	jnb	_PB2,00373$
	jb	_PB3,00373$
	C$Lab2.c$818$4$159 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:818: debounce();
	lcall	_debounce
	C$Lab2.c$819$4$159 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:819: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$820$4$159 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:820: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01270$
	inc	(_Mode3Rounds + 1)
01270$:
	C$Lab2.c$821$4$159 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:821: goto playerturn;
	ljmp	00101$
00373$:
	C$Lab2.c$825$4$160 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:825: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01271$
	inc	(_player2blink + 1)
01271$:
	ljmp	00378$
	C$Lab2.c$829$2$133 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:829: while (startLED == 3)
00417$:
	mov	a,#0x03
	cjne	a,_startLED,01272$
	clr	a
	cjne	a,(_startLED + 1),01272$
	sjmp	01273$
01272$:
	ljmp	00420$
01273$:
	C$Lab2.c$831$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:831: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$832$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:832: turnOff();
	lcall	_turnOff
	C$Lab2.c$833$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:833: LED3 = 0;                                        //turn on left LED
	clr	_LED3
	C$Lab2.c$834$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:834: while (counts < blink_counts);                    //wait until set time
00381$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00381$
	C$Lab2.c$835$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:835: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
	jnb	_PB0,00385$
	jnb	_PB1,00385$
	jnb	_PB2,00385$
	jb	_PB3,00385$
	C$Lab2.c$837$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:837: debounce();
	lcall	_debounce
	C$Lab2.c$838$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:838: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$839$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:839: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01279$
	inc	(_Mode3Rounds + 1)
01279$:
	C$Lab2.c$840$4$162 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:840: goto playerturn;
	ljmp	00101$
00385$:
	C$Lab2.c$844$4$163 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:844: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01280$
	inc	(_player2blink + 1)
01280$:
	C$Lab2.c$847$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:847: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$848$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:848: turnOff();
	lcall	_turnOff
	C$Lab2.c$849$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:849: LED2 = 0;                                        //turn on bottom LED
	clr	_LED2
	C$Lab2.c$850$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:850: while (counts < blink_counts);                    //wait until set time
00390$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00390$
	C$Lab2.c$851$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:851: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
	jnb	_PB0,00394$
	jnb	_PB1,00394$
	jb	_PB2,00394$
	jnb	_PB3,00394$
	C$Lab2.c$853$4$164 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:853: debounce();
	lcall	_debounce
	C$Lab2.c$854$4$164 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:854: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$855$4$164 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:855: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01286$
	inc	(_Mode3Rounds + 1)
01286$:
	C$Lab2.c$856$4$164 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:856: goto playerturn;
	ljmp	00101$
00394$:
	C$Lab2.c$860$4$165 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:860: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01287$
	inc	(_player2blink + 1)
01287$:
	C$Lab2.c$863$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:863: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$864$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:864: turnOff();
	lcall	_turnOff
	C$Lab2.c$865$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:865: LED1 = 0;                                        //turn on right LED
	clr	_LED1
	C$Lab2.c$866$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:866: while (counts < blink_counts);                    //wait until set time
00399$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00399$
	C$Lab2.c$867$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:867: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
	jnb	_PB0,00403$
	jb	_PB1,00403$
	jnb	_PB2,00403$
	jnb	_PB3,00403$
	C$Lab2.c$869$4$166 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:869: debounce();
	lcall	_debounce
	C$Lab2.c$870$4$166 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:870: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$871$4$166 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:871: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01293$
	inc	(_Mode3Rounds + 1)
01293$:
	C$Lab2.c$872$4$166 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:872: goto playerturn;
	ljmp	00101$
00403$:
	C$Lab2.c$876$4$167 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:876: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01294$
	inc	(_player2blink + 1)
01294$:
	C$Lab2.c$879$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:879: counts = 0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$Lab2.c$880$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:880: turnOff();
	lcall	_turnOff
	C$Lab2.c$881$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:881: LED0 = 0;                                        //turn on top LED
	clr	_LED0
	C$Lab2.c$882$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:882: while (counts < blink_counts);                    //wait until set time
00408$:
	clr	c
	mov	a,_counts
	subb	a,_blink_counts
	mov	a,(_counts + 1)
	subb	a,(_blink_counts + 1)
	jc	00408$
	C$Lab2.c$883$3$161 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:883: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
	jb	_PB0,00412$
	jnb	_PB1,00412$
	jnb	_PB2,00412$
	jnb	_PB3,00412$
	C$Lab2.c$885$4$168 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:885: debounce();
	lcall	_debounce
	C$Lab2.c$886$4$168 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:886: player1turn = 1;
	mov	_player1turn,#0x01
	mov	(_player1turn + 1),#0x00
	C$Lab2.c$887$4$168 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:887: Mode3Rounds++;
	inc	_Mode3Rounds
	clr	a
	cjne	a,_Mode3Rounds,01300$
	inc	(_Mode3Rounds + 1)
01300$:
	C$Lab2.c$888$4$168 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:888: goto playerturn;
	ljmp	00101$
00412$:
	C$Lab2.c$892$4$169 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:892: player2blink++;
	inc	_player2blink
	clr	a
	cjne	a,_player2blink,01301$
	inc	(_player2blink + 1)
01301$:
	ljmp	00417$
00423$:
	C$Lab2.c$896$1$95 ==.
	XG$Mode_3_Run$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turnOff'
;------------------------------------------------------------
	G$turnOff$0$0 ==.
	C$Lab2.c$900$1$95 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:900: void turnOff(void)
;	-----------------------------------------
;	 function turnOff
;	-----------------------------------------
_turnOff:
	C$Lab2.c$902$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:902: LED0 = 1;
	setb	_LED0
	C$Lab2.c$903$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:903: LED1 = 1;
	setb	_LED1
	C$Lab2.c$904$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:904: LED2 = 1;
	setb	_LED2
	C$Lab2.c$905$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:905: LED3 = 1;
	setb	_LED3
	C$Lab2.c$906$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:906: BILED1 = 1;
	setb	_BILED1
	C$Lab2.c$907$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:907: BILED2 = 1;
	setb	_BILED2
	C$Lab2.c$908$1$171 ==.
	XG$turnOff$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'debounce'
;------------------------------------------------------------
	G$debounce$0$0 ==.
	C$Lab2.c$910$1$171 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:910: void debounce(void)
;	-----------------------------------------
;	 function debounce
;	-----------------------------------------
_debounce:
	C$Lab2.c$912$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:912: debounce_time = counts + 6.75;    //set 20 ms debounce time
	mov	dpl,_counts
	mov	dph,(_counts + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xd8
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_debounce_time,dpl
	mov	(_debounce_time + 1),dph
	C$Lab2.c$913$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:913: while (counts < debounce_time);    //debounce
00101$:
	clr	c
	mov	a,_counts
	subb	a,_debounce_time
	mov	a,(_counts + 1)
	subb	a,(_debounce_time + 1)
	jc	00101$
	C$Lab2.c$914$1$173 ==.
	XG$debounce$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$Lab2.c$917$1$173 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:917: void Port_Init(void)
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$Lab2.c$919$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:919: P1MDIN &= ~0x02;    // Set P1.1 for analog input
	anl	_P1MDIN,#0xfd
	C$Lab2.c$920$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:920: P1MDOUT &= ~0x02;    // Set P1.1 to open drain
	anl	_P1MDOUT,#0xfd
	C$Lab2.c$921$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:921: P1 |= 0x02;            // Send logic 1 to input pin P1.1
	orl	_P1,#0x02
	C$Lab2.c$923$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:923: P2MDOUT &= 0xD2;
	anl	_P2MDOUT,#0xd2
	C$Lab2.c$924$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:924: P2MDOUT |= 0x02;
	orl	_P2MDOUT,#0x02
	C$Lab2.c$925$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:925: P2 |= ~0xD2;
	orl	_P2,#0x2d
	C$Lab2.c$927$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:927: P3MDOUT &= 0xFC;
	anl	_P3MDOUT,#0xfc
	C$Lab2.c$928$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:928: P3MDOUT |= 0x7C;
	orl	_P3MDOUT,#0x7c
	C$Lab2.c$929$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:929: P3 |= ~0xFC;
	orl	_P3,#0x03
	C$Lab2.c$930$1$175 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupt_Init'
;------------------------------------------------------------
	G$Interrupt_Init$0$0 ==.
	C$Lab2.c$932$1$175 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:932: void Interrupt_Init(void)
;	-----------------------------------------
;	 function Interrupt_Init
;	-----------------------------------------
_Interrupt_Init:
	C$Lab2.c$934$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:934: IE |= 0x82;     //enable Timer0 Interrupt request
	orl	_IE,#0x82
	C$Lab2.c$935$1$177 ==.
	XG$Interrupt_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$Lab2.c$937$1$177 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:937: void Timer_Init(void)
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$Lab2.c$939$1$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:939: CKCON |= 0x08; //Timer0 uses SYSCLK as source
	orl	_CKCON,#0x08
	C$Lab2.c$940$1$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:940: TMOD &= 0xF0;  //clear the 4 least significant bits
	anl	_TMOD,#0xf0
	C$Lab2.c$941$1$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:941: TMOD |= 0x01;  //Timer0 in mode 1, 16 bit
	orl	_TMOD,#0x01
	C$Lab2.c$942$1$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:942: TR0 = 0;        //stop Timer0
	clr	_TR0
	C$Lab2.c$943$1$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:943: TMR0 = 0;        //clear high & low byte of T0
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$Lab2.c$944$1$179 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
	G$Timer0_ISR$0$0 ==.
	C$Lab2.c$946$1$179 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:946: void Timer0_ISR(void) __interrupt 1
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	psw
	C$Lab2.c$948$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:948: counts++;
	inc	_counts
	clr	a
	cjne	a,_counts,00103$
	inc	(_counts + 1)
00103$:
	pop	psw
	pop	acc
	C$Lab2.c$949$1$181 ==.
	XG$Timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$Lab2.c$951$1$181 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:951: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$Lab2.c$953$1$183 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:953: REF0CN = 0x03;  //set VREF to internal pin not external
	mov	_REF0CN,#0x03
	C$Lab2.c$954$1$183 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:954: ADC1CN = 0x80;  //set ADC1 to active
	mov	_ADC1CN,#0x80
	C$Lab2.c$955$1$183 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:955: ADC1CF |= 0x01; //set gain to 1
	orl	_ADC1CF,#0x01
	C$Lab2.c$956$1$183 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_AD_input'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_AD_input$0$0 ==.
	C$Lab2.c$958$1$183 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:958: unsigned char read_AD_input(unsigned char n)
;	-----------------------------------------
;	 function read_AD_input
;	-----------------------------------------
_read_AD_input:
	mov	_AMX1SL,dpl
	C$Lab2.c$961$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:961: ADC1CN &= ~0x20;                  //clears conversion flag
	anl	_ADC1CN,#0xdf
	C$Lab2.c$962$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:962: ADC1CN |= 0x10;                  //initiate A/D conversion
	orl	_ADC1CN,#0x10
	C$Lab2.c$963$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:963: while ((ADC1CN & 0x20) == 0x00); //waits until the control register says conversion is complete
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$Lab2.c$964$1$185 ==.
;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:964: return ADC1;                         //outputs conversion's value
	mov	dpl,_ADC1
	C$Lab2.c$965$1$185 ==.
	XG$read_AD_input$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
FLab2$__str_0$0$0 == .
___str_0:
	.ascii "Player 1 presses: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_1$0$0 == .
___str_1:
	.ascii "Player 2 presses: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_2$0$0 == .
___str_2:
	.ascii "Player 1 wins! "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_3$0$0 == .
___str_3:
	.ascii "Player 2 wins! "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_4$0$0 == .
___str_4:
	.ascii "Tie! "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_5$0$0 == .
___str_5:
	.ascii "Player 1 wins because Player 2 went during the wrong turn. "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_6$0$0 == .
___str_6:
	.ascii "Player 2 wins because Player 1 went during the wrong turn. "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_7$0$0 == .
___str_7:
	.ascii "Player 1 misses: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
FLab2$__str_8$0$0 == .
___str_8:
	.ascii "Player 2 misses: %d "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
