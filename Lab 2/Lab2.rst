                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Lab2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _rand
                                     13 	.globl _putchar
                                     14 	.globl _printf
                                     15 	.globl _getchar_nw
                                     16 	.globl _Sys_Init
                                     17 	.globl _UART0_Init
                                     18 	.globl _SYSCLK_Init
                                     19 	.globl _POT
                                     20 	.globl _LED0
                                     21 	.globl _LED1
                                     22 	.globl _BILED2
                                     23 	.globl _BILED1
                                     24 	.globl _LED2
                                     25 	.globl _PB0
                                     26 	.globl _PB1
                                     27 	.globl _SS1
                                     28 	.globl _PB2
                                     29 	.globl _PB3
                                     30 	.globl _LED3
                                     31 	.globl _SS0
                                     32 	.globl _SPIF
                                     33 	.globl _WCOL
                                     34 	.globl _MODF
                                     35 	.globl _RXOVRN
                                     36 	.globl _TXBSY
                                     37 	.globl _SLVSEL
                                     38 	.globl _MSTEN
                                     39 	.globl _SPIEN
                                     40 	.globl _AD0EN
                                     41 	.globl _ADCEN
                                     42 	.globl _AD0TM
                                     43 	.globl _ADCTM
                                     44 	.globl _AD0INT
                                     45 	.globl _ADCINT
                                     46 	.globl _AD0BUSY
                                     47 	.globl _ADBUSY
                                     48 	.globl _AD0CM1
                                     49 	.globl _ADSTM1
                                     50 	.globl _AD0CM0
                                     51 	.globl _ADSTM0
                                     52 	.globl _AD0WINT
                                     53 	.globl _ADWINT
                                     54 	.globl _AD0LJST
                                     55 	.globl _ADLJST
                                     56 	.globl _CF
                                     57 	.globl _CR
                                     58 	.globl _CCF4
                                     59 	.globl _CCF3
                                     60 	.globl _CCF2
                                     61 	.globl _CCF1
                                     62 	.globl _CCF0
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _TF2
                                     72 	.globl _EXF2
                                     73 	.globl _RCLK
                                     74 	.globl _TCLK
                                     75 	.globl _EXEN2
                                     76 	.globl _TR2
                                     77 	.globl _CT2
                                     78 	.globl _CPRL2
                                     79 	.globl _BUSY
                                     80 	.globl _ENSMB
                                     81 	.globl _STA
                                     82 	.globl _STO
                                     83 	.globl _SI
                                     84 	.globl _AA
                                     85 	.globl _SMBFTE
                                     86 	.globl _SMBTOE
                                     87 	.globl _PT2
                                     88 	.globl _PS
                                     89 	.globl _PS0
                                     90 	.globl _PT1
                                     91 	.globl _PX1
                                     92 	.globl _PT0
                                     93 	.globl _PX0
                                     94 	.globl _P3_7
                                     95 	.globl _P3_6
                                     96 	.globl _P3_5
                                     97 	.globl _P3_4
                                     98 	.globl _P3_3
                                     99 	.globl _P3_2
                                    100 	.globl _P3_1
                                    101 	.globl _P3_0
                                    102 	.globl _EA
                                    103 	.globl _ET2
                                    104 	.globl _ES
                                    105 	.globl _ES0
                                    106 	.globl _ET1
                                    107 	.globl _EX1
                                    108 	.globl _ET0
                                    109 	.globl _EX0
                                    110 	.globl _P2_7
                                    111 	.globl _P2_6
                                    112 	.globl _P2_5
                                    113 	.globl _P2_4
                                    114 	.globl _P2_3
                                    115 	.globl _P2_2
                                    116 	.globl _P2_1
                                    117 	.globl _P2_0
                                    118 	.globl _S0MODE
                                    119 	.globl _SM00
                                    120 	.globl _SM0
                                    121 	.globl _SM10
                                    122 	.globl _SM1
                                    123 	.globl _MCE0
                                    124 	.globl _SM20
                                    125 	.globl _SM2
                                    126 	.globl _REN0
                                    127 	.globl _REN
                                    128 	.globl _TB80
                                    129 	.globl _TB8
                                    130 	.globl _RB80
                                    131 	.globl _RB8
                                    132 	.globl _TI0
                                    133 	.globl _TI
                                    134 	.globl _RI0
                                    135 	.globl _RI
                                    136 	.globl _P1_7
                                    137 	.globl _P1_6
                                    138 	.globl _P1_5
                                    139 	.globl _P1_4
                                    140 	.globl _P1_3
                                    141 	.globl _P1_2
                                    142 	.globl _P1_1
                                    143 	.globl _P1_0
                                    144 	.globl _TF1
                                    145 	.globl _TR1
                                    146 	.globl _TF0
                                    147 	.globl _TR0
                                    148 	.globl _IE1
                                    149 	.globl _IT1
                                    150 	.globl _IE0
                                    151 	.globl _IT0
                                    152 	.globl _P0_7
                                    153 	.globl _P0_6
                                    154 	.globl _P0_5
                                    155 	.globl _P0_4
                                    156 	.globl _P0_3
                                    157 	.globl _P0_2
                                    158 	.globl _P0_1
                                    159 	.globl _P0_0
                                    160 	.globl _PCA0CP4
                                    161 	.globl _PCA0CP3
                                    162 	.globl _PCA0CP2
                                    163 	.globl _PCA0CP1
                                    164 	.globl _PCA0CP0
                                    165 	.globl _PCA0
                                    166 	.globl _DAC1
                                    167 	.globl _DAC0
                                    168 	.globl _ADC0LT
                                    169 	.globl _ADC0GT
                                    170 	.globl _ADC0
                                    171 	.globl _RCAP4
                                    172 	.globl _TMR4
                                    173 	.globl _TMR3RL
                                    174 	.globl _TMR3
                                    175 	.globl _RCAP2
                                    176 	.globl _TMR2
                                    177 	.globl _TMR1
                                    178 	.globl _TMR0
                                    179 	.globl _WDTCN
                                    180 	.globl _PCA0CPH4
                                    181 	.globl _PCA0CPH3
                                    182 	.globl _PCA0CPH2
                                    183 	.globl _PCA0CPH1
                                    184 	.globl _PCA0CPH0
                                    185 	.globl _PCA0H
                                    186 	.globl _SPI0CN
                                    187 	.globl _EIP2
                                    188 	.globl _EIP1
                                    189 	.globl _TH4
                                    190 	.globl _TL4
                                    191 	.globl _SADDR1
                                    192 	.globl _SBUF1
                                    193 	.globl _SCON1
                                    194 	.globl _B
                                    195 	.globl _RSTSRC
                                    196 	.globl _PCA0CPL4
                                    197 	.globl _PCA0CPL3
                                    198 	.globl _PCA0CPL2
                                    199 	.globl _PCA0CPL1
                                    200 	.globl _PCA0CPL0
                                    201 	.globl _PCA0L
                                    202 	.globl _ADC0CN
                                    203 	.globl _EIE2
                                    204 	.globl _EIE1
                                    205 	.globl _RCAP4H
                                    206 	.globl _RCAP4L
                                    207 	.globl _XBR2
                                    208 	.globl _XBR1
                                    209 	.globl _XBR0
                                    210 	.globl _ACC
                                    211 	.globl _PCA0CPM4
                                    212 	.globl _PCA0CPM3
                                    213 	.globl _PCA0CPM2
                                    214 	.globl _PCA0CPM1
                                    215 	.globl _PCA0CPM0
                                    216 	.globl _PCA0MD
                                    217 	.globl _PCA0CN
                                    218 	.globl _DAC1CN
                                    219 	.globl _DAC1H
                                    220 	.globl _DAC1L
                                    221 	.globl _DAC0CN
                                    222 	.globl _DAC0H
                                    223 	.globl _DAC0L
                                    224 	.globl _REF0CN
                                    225 	.globl _PSW
                                    226 	.globl _SMB0CR
                                    227 	.globl _TH2
                                    228 	.globl _TL2
                                    229 	.globl _RCAP2H
                                    230 	.globl _RCAP2L
                                    231 	.globl _T4CON
                                    232 	.globl _T2CON
                                    233 	.globl _ADC0LTH
                                    234 	.globl _ADC0LTL
                                    235 	.globl _ADC0GTH
                                    236 	.globl _ADC0GTL
                                    237 	.globl _SMB0ADR
                                    238 	.globl _SMB0DAT
                                    239 	.globl _SMB0STA
                                    240 	.globl _SMB0CN
                                    241 	.globl _ADC0H
                                    242 	.globl _ADC0L
                                    243 	.globl _P1MDIN
                                    244 	.globl _ADC0CF
                                    245 	.globl _AMX0SL
                                    246 	.globl _AMX0CF
                                    247 	.globl _SADEN0
                                    248 	.globl _IP
                                    249 	.globl _FLACL
                                    250 	.globl _FLSCL
                                    251 	.globl _P74OUT
                                    252 	.globl _OSCICN
                                    253 	.globl _OSCXCN
                                    254 	.globl _P3
                                    255 	.globl __XPAGE
                                    256 	.globl _EMI0CN
                                    257 	.globl _SADEN1
                                    258 	.globl _P3IF
                                    259 	.globl _AMX1SL
                                    260 	.globl _ADC1CF
                                    261 	.globl _ADC1CN
                                    262 	.globl _SADDR0
                                    263 	.globl _IE
                                    264 	.globl _P3MDOUT
                                    265 	.globl _PRT3CF
                                    266 	.globl _P2MDOUT
                                    267 	.globl _PRT2CF
                                    268 	.globl _P1MDOUT
                                    269 	.globl _PRT1CF
                                    270 	.globl _P0MDOUT
                                    271 	.globl _PRT0CF
                                    272 	.globl _EMI0CF
                                    273 	.globl _EMI0TC
                                    274 	.globl _P2
                                    275 	.globl _CPT1CN
                                    276 	.globl _CPT0CN
                                    277 	.globl _SPI0CKR
                                    278 	.globl _ADC1
                                    279 	.globl _SPI0DAT
                                    280 	.globl _SPI0CFG
                                    281 	.globl _SBUF0
                                    282 	.globl _SBUF
                                    283 	.globl _SCON0
                                    284 	.globl _SCON
                                    285 	.globl _P7
                                    286 	.globl _TMR3H
                                    287 	.globl _TMR3L
                                    288 	.globl _TMR3RLH
                                    289 	.globl _TMR3RLL
                                    290 	.globl _TMR3CN
                                    291 	.globl _P1
                                    292 	.globl _PSCTL
                                    293 	.globl _CKCON
                                    294 	.globl _TH1
                                    295 	.globl _TH0
                                    296 	.globl _TL1
                                    297 	.globl _TL0
                                    298 	.globl _TMOD
                                    299 	.globl _TCON
                                    300 	.globl _PCON
                                    301 	.globl _P6
                                    302 	.globl _P5
                                    303 	.globl _P4
                                    304 	.globl _DPH
                                    305 	.globl _DPL
                                    306 	.globl _SP
                                    307 	.globl _P0
                                    308 	.globl _aligned_alloc_PARM_2
                                    309 	.globl _debounce_time
                                    310 	.globl _Mode3Rounds
                                    311 	.globl _player2blink
                                    312 	.globl _player1blink
                                    313 	.globl _player1turn
                                    314 	.globl _startLED
                                    315 	.globl _instant_lose
                                    316 	.globl _Mode2Rounds
                                    317 	.globl _player2press
                                    318 	.globl _player1press
                                    319 	.globl _blink_counts
                                    320 	.globl _blink_time
                                    321 	.globl _ad_result
                                    322 	.globl _counts
                                    323 	.globl _Mode_1
                                    324 	.globl _Mode_2
                                    325 	.globl _Mode_3
                                    326 	.globl _randLED
                                    327 	.globl _Mode_3_Run
                                    328 	.globl _turnOff
                                    329 	.globl _debounce
                                    330 	.globl _Port_Init
                                    331 	.globl _Interrupt_Init
                                    332 	.globl _Timer_Init
                                    333 	.globl _Timer0_ISR
                                    334 	.globl _ADC_Init
                                    335 	.globl _read_AD_input
                                    336 ;--------------------------------------------------------
                                    337 ; special function registers
                                    338 ;--------------------------------------------------------
                                    339 	.area RSEG    (ABS,DATA)
      000000                        340 	.org 0x0000
                           000080   341 G$P0$0$0 == 0x0080
                           000080   342 _P0	=	0x0080
                           000081   343 G$SP$0$0 == 0x0081
                           000081   344 _SP	=	0x0081
                           000082   345 G$DPL$0$0 == 0x0082
                           000082   346 _DPL	=	0x0082
                           000083   347 G$DPH$0$0 == 0x0083
                           000083   348 _DPH	=	0x0083
                           000084   349 G$P4$0$0 == 0x0084
                           000084   350 _P4	=	0x0084
                           000085   351 G$P5$0$0 == 0x0085
                           000085   352 _P5	=	0x0085
                           000086   353 G$P6$0$0 == 0x0086
                           000086   354 _P6	=	0x0086
                           000087   355 G$PCON$0$0 == 0x0087
                           000087   356 _PCON	=	0x0087
                           000088   357 G$TCON$0$0 == 0x0088
                           000088   358 _TCON	=	0x0088
                           000089   359 G$TMOD$0$0 == 0x0089
                           000089   360 _TMOD	=	0x0089
                           00008A   361 G$TL0$0$0 == 0x008a
                           00008A   362 _TL0	=	0x008a
                           00008B   363 G$TL1$0$0 == 0x008b
                           00008B   364 _TL1	=	0x008b
                           00008C   365 G$TH0$0$0 == 0x008c
                           00008C   366 _TH0	=	0x008c
                           00008D   367 G$TH1$0$0 == 0x008d
                           00008D   368 _TH1	=	0x008d
                           00008E   369 G$CKCON$0$0 == 0x008e
                           00008E   370 _CKCON	=	0x008e
                           00008F   371 G$PSCTL$0$0 == 0x008f
                           00008F   372 _PSCTL	=	0x008f
                           000090   373 G$P1$0$0 == 0x0090
                           000090   374 _P1	=	0x0090
                           000091   375 G$TMR3CN$0$0 == 0x0091
                           000091   376 _TMR3CN	=	0x0091
                           000092   377 G$TMR3RLL$0$0 == 0x0092
                           000092   378 _TMR3RLL	=	0x0092
                           000093   379 G$TMR3RLH$0$0 == 0x0093
                           000093   380 _TMR3RLH	=	0x0093
                           000094   381 G$TMR3L$0$0 == 0x0094
                           000094   382 _TMR3L	=	0x0094
                           000095   383 G$TMR3H$0$0 == 0x0095
                           000095   384 _TMR3H	=	0x0095
                           000096   385 G$P7$0$0 == 0x0096
                           000096   386 _P7	=	0x0096
                           000098   387 G$SCON$0$0 == 0x0098
                           000098   388 _SCON	=	0x0098
                           000098   389 G$SCON0$0$0 == 0x0098
                           000098   390 _SCON0	=	0x0098
                           000099   391 G$SBUF$0$0 == 0x0099
                           000099   392 _SBUF	=	0x0099
                           000099   393 G$SBUF0$0$0 == 0x0099
                           000099   394 _SBUF0	=	0x0099
                           00009A   395 G$SPI0CFG$0$0 == 0x009a
                           00009A   396 _SPI0CFG	=	0x009a
                           00009B   397 G$SPI0DAT$0$0 == 0x009b
                           00009B   398 _SPI0DAT	=	0x009b
                           00009C   399 G$ADC1$0$0 == 0x009c
                           00009C   400 _ADC1	=	0x009c
                           00009D   401 G$SPI0CKR$0$0 == 0x009d
                           00009D   402 _SPI0CKR	=	0x009d
                           00009E   403 G$CPT0CN$0$0 == 0x009e
                           00009E   404 _CPT0CN	=	0x009e
                           00009F   405 G$CPT1CN$0$0 == 0x009f
                           00009F   406 _CPT1CN	=	0x009f
                           0000A0   407 G$P2$0$0 == 0x00a0
                           0000A0   408 _P2	=	0x00a0
                           0000A1   409 G$EMI0TC$0$0 == 0x00a1
                           0000A1   410 _EMI0TC	=	0x00a1
                           0000A3   411 G$EMI0CF$0$0 == 0x00a3
                           0000A3   412 _EMI0CF	=	0x00a3
                           0000A4   413 G$PRT0CF$0$0 == 0x00a4
                           0000A4   414 _PRT0CF	=	0x00a4
                           0000A4   415 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   416 _P0MDOUT	=	0x00a4
                           0000A5   417 G$PRT1CF$0$0 == 0x00a5
                           0000A5   418 _PRT1CF	=	0x00a5
                           0000A5   419 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   420 _P1MDOUT	=	0x00a5
                           0000A6   421 G$PRT2CF$0$0 == 0x00a6
                           0000A6   422 _PRT2CF	=	0x00a6
                           0000A6   423 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   424 _P2MDOUT	=	0x00a6
                           0000A7   425 G$PRT3CF$0$0 == 0x00a7
                           0000A7   426 _PRT3CF	=	0x00a7
                           0000A7   427 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   428 _P3MDOUT	=	0x00a7
                           0000A8   429 G$IE$0$0 == 0x00a8
                           0000A8   430 _IE	=	0x00a8
                           0000A9   431 G$SADDR0$0$0 == 0x00a9
                           0000A9   432 _SADDR0	=	0x00a9
                           0000AA   433 G$ADC1CN$0$0 == 0x00aa
                           0000AA   434 _ADC1CN	=	0x00aa
                           0000AB   435 G$ADC1CF$0$0 == 0x00ab
                           0000AB   436 _ADC1CF	=	0x00ab
                           0000AC   437 G$AMX1SL$0$0 == 0x00ac
                           0000AC   438 _AMX1SL	=	0x00ac
                           0000AD   439 G$P3IF$0$0 == 0x00ad
                           0000AD   440 _P3IF	=	0x00ad
                           0000AE   441 G$SADEN1$0$0 == 0x00ae
                           0000AE   442 _SADEN1	=	0x00ae
                           0000AF   443 G$EMI0CN$0$0 == 0x00af
                           0000AF   444 _EMI0CN	=	0x00af
                           0000AF   445 G$_XPAGE$0$0 == 0x00af
                           0000AF   446 __XPAGE	=	0x00af
                           0000B0   447 G$P3$0$0 == 0x00b0
                           0000B0   448 _P3	=	0x00b0
                           0000B1   449 G$OSCXCN$0$0 == 0x00b1
                           0000B1   450 _OSCXCN	=	0x00b1
                           0000B2   451 G$OSCICN$0$0 == 0x00b2
                           0000B2   452 _OSCICN	=	0x00b2
                           0000B5   453 G$P74OUT$0$0 == 0x00b5
                           0000B5   454 _P74OUT	=	0x00b5
                           0000B6   455 G$FLSCL$0$0 == 0x00b6
                           0000B6   456 _FLSCL	=	0x00b6
                           0000B7   457 G$FLACL$0$0 == 0x00b7
                           0000B7   458 _FLACL	=	0x00b7
                           0000B8   459 G$IP$0$0 == 0x00b8
                           0000B8   460 _IP	=	0x00b8
                           0000B9   461 G$SADEN0$0$0 == 0x00b9
                           0000B9   462 _SADEN0	=	0x00b9
                           0000BA   463 G$AMX0CF$0$0 == 0x00ba
                           0000BA   464 _AMX0CF	=	0x00ba
                           0000BB   465 G$AMX0SL$0$0 == 0x00bb
                           0000BB   466 _AMX0SL	=	0x00bb
                           0000BC   467 G$ADC0CF$0$0 == 0x00bc
                           0000BC   468 _ADC0CF	=	0x00bc
                           0000BD   469 G$P1MDIN$0$0 == 0x00bd
                           0000BD   470 _P1MDIN	=	0x00bd
                           0000BE   471 G$ADC0L$0$0 == 0x00be
                           0000BE   472 _ADC0L	=	0x00be
                           0000BF   473 G$ADC0H$0$0 == 0x00bf
                           0000BF   474 _ADC0H	=	0x00bf
                           0000C0   475 G$SMB0CN$0$0 == 0x00c0
                           0000C0   476 _SMB0CN	=	0x00c0
                           0000C1   477 G$SMB0STA$0$0 == 0x00c1
                           0000C1   478 _SMB0STA	=	0x00c1
                           0000C2   479 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   480 _SMB0DAT	=	0x00c2
                           0000C3   481 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   482 _SMB0ADR	=	0x00c3
                           0000C4   483 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   484 _ADC0GTL	=	0x00c4
                           0000C5   485 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   486 _ADC0GTH	=	0x00c5
                           0000C6   487 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   488 _ADC0LTL	=	0x00c6
                           0000C7   489 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   490 _ADC0LTH	=	0x00c7
                           0000C8   491 G$T2CON$0$0 == 0x00c8
                           0000C8   492 _T2CON	=	0x00c8
                           0000C9   493 G$T4CON$0$0 == 0x00c9
                           0000C9   494 _T4CON	=	0x00c9
                           0000CA   495 G$RCAP2L$0$0 == 0x00ca
                           0000CA   496 _RCAP2L	=	0x00ca
                           0000CB   497 G$RCAP2H$0$0 == 0x00cb
                           0000CB   498 _RCAP2H	=	0x00cb
                           0000CC   499 G$TL2$0$0 == 0x00cc
                           0000CC   500 _TL2	=	0x00cc
                           0000CD   501 G$TH2$0$0 == 0x00cd
                           0000CD   502 _TH2	=	0x00cd
                           0000CF   503 G$SMB0CR$0$0 == 0x00cf
                           0000CF   504 _SMB0CR	=	0x00cf
                           0000D0   505 G$PSW$0$0 == 0x00d0
                           0000D0   506 _PSW	=	0x00d0
                           0000D1   507 G$REF0CN$0$0 == 0x00d1
                           0000D1   508 _REF0CN	=	0x00d1
                           0000D2   509 G$DAC0L$0$0 == 0x00d2
                           0000D2   510 _DAC0L	=	0x00d2
                           0000D3   511 G$DAC0H$0$0 == 0x00d3
                           0000D3   512 _DAC0H	=	0x00d3
                           0000D4   513 G$DAC0CN$0$0 == 0x00d4
                           0000D4   514 _DAC0CN	=	0x00d4
                           0000D5   515 G$DAC1L$0$0 == 0x00d5
                           0000D5   516 _DAC1L	=	0x00d5
                           0000D6   517 G$DAC1H$0$0 == 0x00d6
                           0000D6   518 _DAC1H	=	0x00d6
                           0000D7   519 G$DAC1CN$0$0 == 0x00d7
                           0000D7   520 _DAC1CN	=	0x00d7
                           0000D8   521 G$PCA0CN$0$0 == 0x00d8
                           0000D8   522 _PCA0CN	=	0x00d8
                           0000D9   523 G$PCA0MD$0$0 == 0x00d9
                           0000D9   524 _PCA0MD	=	0x00d9
                           0000DA   525 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   526 _PCA0CPM0	=	0x00da
                           0000DB   527 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   528 _PCA0CPM1	=	0x00db
                           0000DC   529 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   530 _PCA0CPM2	=	0x00dc
                           0000DD   531 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   532 _PCA0CPM3	=	0x00dd
                           0000DE   533 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   534 _PCA0CPM4	=	0x00de
                           0000E0   535 G$ACC$0$0 == 0x00e0
                           0000E0   536 _ACC	=	0x00e0
                           0000E1   537 G$XBR0$0$0 == 0x00e1
                           0000E1   538 _XBR0	=	0x00e1
                           0000E2   539 G$XBR1$0$0 == 0x00e2
                           0000E2   540 _XBR1	=	0x00e2
                           0000E3   541 G$XBR2$0$0 == 0x00e3
                           0000E3   542 _XBR2	=	0x00e3
                           0000E4   543 G$RCAP4L$0$0 == 0x00e4
                           0000E4   544 _RCAP4L	=	0x00e4
                           0000E5   545 G$RCAP4H$0$0 == 0x00e5
                           0000E5   546 _RCAP4H	=	0x00e5
                           0000E6   547 G$EIE1$0$0 == 0x00e6
                           0000E6   548 _EIE1	=	0x00e6
                           0000E7   549 G$EIE2$0$0 == 0x00e7
                           0000E7   550 _EIE2	=	0x00e7
                           0000E8   551 G$ADC0CN$0$0 == 0x00e8
                           0000E8   552 _ADC0CN	=	0x00e8
                           0000E9   553 G$PCA0L$0$0 == 0x00e9
                           0000E9   554 _PCA0L	=	0x00e9
                           0000EA   555 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   556 _PCA0CPL0	=	0x00ea
                           0000EB   557 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   558 _PCA0CPL1	=	0x00eb
                           0000EC   559 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   560 _PCA0CPL2	=	0x00ec
                           0000ED   561 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   562 _PCA0CPL3	=	0x00ed
                           0000EE   563 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   564 _PCA0CPL4	=	0x00ee
                           0000EF   565 G$RSTSRC$0$0 == 0x00ef
                           0000EF   566 _RSTSRC	=	0x00ef
                           0000F0   567 G$B$0$0 == 0x00f0
                           0000F0   568 _B	=	0x00f0
                           0000F1   569 G$SCON1$0$0 == 0x00f1
                           0000F1   570 _SCON1	=	0x00f1
                           0000F2   571 G$SBUF1$0$0 == 0x00f2
                           0000F2   572 _SBUF1	=	0x00f2
                           0000F3   573 G$SADDR1$0$0 == 0x00f3
                           0000F3   574 _SADDR1	=	0x00f3
                           0000F4   575 G$TL4$0$0 == 0x00f4
                           0000F4   576 _TL4	=	0x00f4
                           0000F5   577 G$TH4$0$0 == 0x00f5
                           0000F5   578 _TH4	=	0x00f5
                           0000F6   579 G$EIP1$0$0 == 0x00f6
                           0000F6   580 _EIP1	=	0x00f6
                           0000F7   581 G$EIP2$0$0 == 0x00f7
                           0000F7   582 _EIP2	=	0x00f7
                           0000F8   583 G$SPI0CN$0$0 == 0x00f8
                           0000F8   584 _SPI0CN	=	0x00f8
                           0000F9   585 G$PCA0H$0$0 == 0x00f9
                           0000F9   586 _PCA0H	=	0x00f9
                           0000FA   587 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   588 _PCA0CPH0	=	0x00fa
                           0000FB   589 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   590 _PCA0CPH1	=	0x00fb
                           0000FC   591 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   592 _PCA0CPH2	=	0x00fc
                           0000FD   593 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   594 _PCA0CPH3	=	0x00fd
                           0000FE   595 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   596 _PCA0CPH4	=	0x00fe
                           0000FF   597 G$WDTCN$0$0 == 0x00ff
                           0000FF   598 _WDTCN	=	0x00ff
                           008C8A   599 G$TMR0$0$0 == 0x8c8a
                           008C8A   600 _TMR0	=	0x8c8a
                           008D8B   601 G$TMR1$0$0 == 0x8d8b
                           008D8B   602 _TMR1	=	0x8d8b
                           00CDCC   603 G$TMR2$0$0 == 0xcdcc
                           00CDCC   604 _TMR2	=	0xcdcc
                           00CBCA   605 G$RCAP2$0$0 == 0xcbca
                           00CBCA   606 _RCAP2	=	0xcbca
                           009594   607 G$TMR3$0$0 == 0x9594
                           009594   608 _TMR3	=	0x9594
                           009392   609 G$TMR3RL$0$0 == 0x9392
                           009392   610 _TMR3RL	=	0x9392
                           00F5F4   611 G$TMR4$0$0 == 0xf5f4
                           00F5F4   612 _TMR4	=	0xf5f4
                           00E5E4   613 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   614 _RCAP4	=	0xe5e4
                           00BFBE   615 G$ADC0$0$0 == 0xbfbe
                           00BFBE   616 _ADC0	=	0xbfbe
                           00C5C4   617 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   618 _ADC0GT	=	0xc5c4
                           00C7C6   619 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   620 _ADC0LT	=	0xc7c6
                           00D3D2   621 G$DAC0$0$0 == 0xd3d2
                           00D3D2   622 _DAC0	=	0xd3d2
                           00D6D5   623 G$DAC1$0$0 == 0xd6d5
                           00D6D5   624 _DAC1	=	0xd6d5
                           00F9E9   625 G$PCA0$0$0 == 0xf9e9
                           00F9E9   626 _PCA0	=	0xf9e9
                           00FAEA   627 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   628 _PCA0CP0	=	0xfaea
                           00FBEB   629 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   630 _PCA0CP1	=	0xfbeb
                           00FCEC   631 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   632 _PCA0CP2	=	0xfcec
                           00FDED   633 G$PCA0CP3$0$0 == 0xfded
                           00FDED   634 _PCA0CP3	=	0xfded
                           00FEEE   635 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   636 _PCA0CP4	=	0xfeee
                                    637 ;--------------------------------------------------------
                                    638 ; special function bits
                                    639 ;--------------------------------------------------------
                                    640 	.area RSEG    (ABS,DATA)
      000000                        641 	.org 0x0000
                           000080   642 G$P0_0$0$0 == 0x0080
                           000080   643 _P0_0	=	0x0080
                           000081   644 G$P0_1$0$0 == 0x0081
                           000081   645 _P0_1	=	0x0081
                           000082   646 G$P0_2$0$0 == 0x0082
                           000082   647 _P0_2	=	0x0082
                           000083   648 G$P0_3$0$0 == 0x0083
                           000083   649 _P0_3	=	0x0083
                           000084   650 G$P0_4$0$0 == 0x0084
                           000084   651 _P0_4	=	0x0084
                           000085   652 G$P0_5$0$0 == 0x0085
                           000085   653 _P0_5	=	0x0085
                           000086   654 G$P0_6$0$0 == 0x0086
                           000086   655 _P0_6	=	0x0086
                           000087   656 G$P0_7$0$0 == 0x0087
                           000087   657 _P0_7	=	0x0087
                           000088   658 G$IT0$0$0 == 0x0088
                           000088   659 _IT0	=	0x0088
                           000089   660 G$IE0$0$0 == 0x0089
                           000089   661 _IE0	=	0x0089
                           00008A   662 G$IT1$0$0 == 0x008a
                           00008A   663 _IT1	=	0x008a
                           00008B   664 G$IE1$0$0 == 0x008b
                           00008B   665 _IE1	=	0x008b
                           00008C   666 G$TR0$0$0 == 0x008c
                           00008C   667 _TR0	=	0x008c
                           00008D   668 G$TF0$0$0 == 0x008d
                           00008D   669 _TF0	=	0x008d
                           00008E   670 G$TR1$0$0 == 0x008e
                           00008E   671 _TR1	=	0x008e
                           00008F   672 G$TF1$0$0 == 0x008f
                           00008F   673 _TF1	=	0x008f
                           000090   674 G$P1_0$0$0 == 0x0090
                           000090   675 _P1_0	=	0x0090
                           000091   676 G$P1_1$0$0 == 0x0091
                           000091   677 _P1_1	=	0x0091
                           000092   678 G$P1_2$0$0 == 0x0092
                           000092   679 _P1_2	=	0x0092
                           000093   680 G$P1_3$0$0 == 0x0093
                           000093   681 _P1_3	=	0x0093
                           000094   682 G$P1_4$0$0 == 0x0094
                           000094   683 _P1_4	=	0x0094
                           000095   684 G$P1_5$0$0 == 0x0095
                           000095   685 _P1_5	=	0x0095
                           000096   686 G$P1_6$0$0 == 0x0096
                           000096   687 _P1_6	=	0x0096
                           000097   688 G$P1_7$0$0 == 0x0097
                           000097   689 _P1_7	=	0x0097
                           000098   690 G$RI$0$0 == 0x0098
                           000098   691 _RI	=	0x0098
                           000098   692 G$RI0$0$0 == 0x0098
                           000098   693 _RI0	=	0x0098
                           000099   694 G$TI$0$0 == 0x0099
                           000099   695 _TI	=	0x0099
                           000099   696 G$TI0$0$0 == 0x0099
                           000099   697 _TI0	=	0x0099
                           00009A   698 G$RB8$0$0 == 0x009a
                           00009A   699 _RB8	=	0x009a
                           00009A   700 G$RB80$0$0 == 0x009a
                           00009A   701 _RB80	=	0x009a
                           00009B   702 G$TB8$0$0 == 0x009b
                           00009B   703 _TB8	=	0x009b
                           00009B   704 G$TB80$0$0 == 0x009b
                           00009B   705 _TB80	=	0x009b
                           00009C   706 G$REN$0$0 == 0x009c
                           00009C   707 _REN	=	0x009c
                           00009C   708 G$REN0$0$0 == 0x009c
                           00009C   709 _REN0	=	0x009c
                           00009D   710 G$SM2$0$0 == 0x009d
                           00009D   711 _SM2	=	0x009d
                           00009D   712 G$SM20$0$0 == 0x009d
                           00009D   713 _SM20	=	0x009d
                           00009D   714 G$MCE0$0$0 == 0x009d
                           00009D   715 _MCE0	=	0x009d
                           00009E   716 G$SM1$0$0 == 0x009e
                           00009E   717 _SM1	=	0x009e
                           00009E   718 G$SM10$0$0 == 0x009e
                           00009E   719 _SM10	=	0x009e
                           00009F   720 G$SM0$0$0 == 0x009f
                           00009F   721 _SM0	=	0x009f
                           00009F   722 G$SM00$0$0 == 0x009f
                           00009F   723 _SM00	=	0x009f
                           00009F   724 G$S0MODE$0$0 == 0x009f
                           00009F   725 _S0MODE	=	0x009f
                           0000A0   726 G$P2_0$0$0 == 0x00a0
                           0000A0   727 _P2_0	=	0x00a0
                           0000A1   728 G$P2_1$0$0 == 0x00a1
                           0000A1   729 _P2_1	=	0x00a1
                           0000A2   730 G$P2_2$0$0 == 0x00a2
                           0000A2   731 _P2_2	=	0x00a2
                           0000A3   732 G$P2_3$0$0 == 0x00a3
                           0000A3   733 _P2_3	=	0x00a3
                           0000A4   734 G$P2_4$0$0 == 0x00a4
                           0000A4   735 _P2_4	=	0x00a4
                           0000A5   736 G$P2_5$0$0 == 0x00a5
                           0000A5   737 _P2_5	=	0x00a5
                           0000A6   738 G$P2_6$0$0 == 0x00a6
                           0000A6   739 _P2_6	=	0x00a6
                           0000A7   740 G$P2_7$0$0 == 0x00a7
                           0000A7   741 _P2_7	=	0x00a7
                           0000A8   742 G$EX0$0$0 == 0x00a8
                           0000A8   743 _EX0	=	0x00a8
                           0000A9   744 G$ET0$0$0 == 0x00a9
                           0000A9   745 _ET0	=	0x00a9
                           0000AA   746 G$EX1$0$0 == 0x00aa
                           0000AA   747 _EX1	=	0x00aa
                           0000AB   748 G$ET1$0$0 == 0x00ab
                           0000AB   749 _ET1	=	0x00ab
                           0000AC   750 G$ES0$0$0 == 0x00ac
                           0000AC   751 _ES0	=	0x00ac
                           0000AC   752 G$ES$0$0 == 0x00ac
                           0000AC   753 _ES	=	0x00ac
                           0000AD   754 G$ET2$0$0 == 0x00ad
                           0000AD   755 _ET2	=	0x00ad
                           0000AF   756 G$EA$0$0 == 0x00af
                           0000AF   757 _EA	=	0x00af
                           0000B0   758 G$P3_0$0$0 == 0x00b0
                           0000B0   759 _P3_0	=	0x00b0
                           0000B1   760 G$P3_1$0$0 == 0x00b1
                           0000B1   761 _P3_1	=	0x00b1
                           0000B2   762 G$P3_2$0$0 == 0x00b2
                           0000B2   763 _P3_2	=	0x00b2
                           0000B3   764 G$P3_3$0$0 == 0x00b3
                           0000B3   765 _P3_3	=	0x00b3
                           0000B4   766 G$P3_4$0$0 == 0x00b4
                           0000B4   767 _P3_4	=	0x00b4
                           0000B5   768 G$P3_5$0$0 == 0x00b5
                           0000B5   769 _P3_5	=	0x00b5
                           0000B6   770 G$P3_6$0$0 == 0x00b6
                           0000B6   771 _P3_6	=	0x00b6
                           0000B7   772 G$P3_7$0$0 == 0x00b7
                           0000B7   773 _P3_7	=	0x00b7
                           0000B8   774 G$PX0$0$0 == 0x00b8
                           0000B8   775 _PX0	=	0x00b8
                           0000B9   776 G$PT0$0$0 == 0x00b9
                           0000B9   777 _PT0	=	0x00b9
                           0000BA   778 G$PX1$0$0 == 0x00ba
                           0000BA   779 _PX1	=	0x00ba
                           0000BB   780 G$PT1$0$0 == 0x00bb
                           0000BB   781 _PT1	=	0x00bb
                           0000BC   782 G$PS0$0$0 == 0x00bc
                           0000BC   783 _PS0	=	0x00bc
                           0000BC   784 G$PS$0$0 == 0x00bc
                           0000BC   785 _PS	=	0x00bc
                           0000BD   786 G$PT2$0$0 == 0x00bd
                           0000BD   787 _PT2	=	0x00bd
                           0000C0   788 G$SMBTOE$0$0 == 0x00c0
                           0000C0   789 _SMBTOE	=	0x00c0
                           0000C1   790 G$SMBFTE$0$0 == 0x00c1
                           0000C1   791 _SMBFTE	=	0x00c1
                           0000C2   792 G$AA$0$0 == 0x00c2
                           0000C2   793 _AA	=	0x00c2
                           0000C3   794 G$SI$0$0 == 0x00c3
                           0000C3   795 _SI	=	0x00c3
                           0000C4   796 G$STO$0$0 == 0x00c4
                           0000C4   797 _STO	=	0x00c4
                           0000C5   798 G$STA$0$0 == 0x00c5
                           0000C5   799 _STA	=	0x00c5
                           0000C6   800 G$ENSMB$0$0 == 0x00c6
                           0000C6   801 _ENSMB	=	0x00c6
                           0000C7   802 G$BUSY$0$0 == 0x00c7
                           0000C7   803 _BUSY	=	0x00c7
                           0000C8   804 G$CPRL2$0$0 == 0x00c8
                           0000C8   805 _CPRL2	=	0x00c8
                           0000C9   806 G$CT2$0$0 == 0x00c9
                           0000C9   807 _CT2	=	0x00c9
                           0000CA   808 G$TR2$0$0 == 0x00ca
                           0000CA   809 _TR2	=	0x00ca
                           0000CB   810 G$EXEN2$0$0 == 0x00cb
                           0000CB   811 _EXEN2	=	0x00cb
                           0000CC   812 G$TCLK$0$0 == 0x00cc
                           0000CC   813 _TCLK	=	0x00cc
                           0000CD   814 G$RCLK$0$0 == 0x00cd
                           0000CD   815 _RCLK	=	0x00cd
                           0000CE   816 G$EXF2$0$0 == 0x00ce
                           0000CE   817 _EXF2	=	0x00ce
                           0000CF   818 G$TF2$0$0 == 0x00cf
                           0000CF   819 _TF2	=	0x00cf
                           0000D0   820 G$P$0$0 == 0x00d0
                           0000D0   821 _P	=	0x00d0
                           0000D1   822 G$F1$0$0 == 0x00d1
                           0000D1   823 _F1	=	0x00d1
                           0000D2   824 G$OV$0$0 == 0x00d2
                           0000D2   825 _OV	=	0x00d2
                           0000D3   826 G$RS0$0$0 == 0x00d3
                           0000D3   827 _RS0	=	0x00d3
                           0000D4   828 G$RS1$0$0 == 0x00d4
                           0000D4   829 _RS1	=	0x00d4
                           0000D5   830 G$F0$0$0 == 0x00d5
                           0000D5   831 _F0	=	0x00d5
                           0000D6   832 G$AC$0$0 == 0x00d6
                           0000D6   833 _AC	=	0x00d6
                           0000D7   834 G$CY$0$0 == 0x00d7
                           0000D7   835 _CY	=	0x00d7
                           0000D8   836 G$CCF0$0$0 == 0x00d8
                           0000D8   837 _CCF0	=	0x00d8
                           0000D9   838 G$CCF1$0$0 == 0x00d9
                           0000D9   839 _CCF1	=	0x00d9
                           0000DA   840 G$CCF2$0$0 == 0x00da
                           0000DA   841 _CCF2	=	0x00da
                           0000DB   842 G$CCF3$0$0 == 0x00db
                           0000DB   843 _CCF3	=	0x00db
                           0000DC   844 G$CCF4$0$0 == 0x00dc
                           0000DC   845 _CCF4	=	0x00dc
                           0000DE   846 G$CR$0$0 == 0x00de
                           0000DE   847 _CR	=	0x00de
                           0000DF   848 G$CF$0$0 == 0x00df
                           0000DF   849 _CF	=	0x00df
                           0000E8   850 G$ADLJST$0$0 == 0x00e8
                           0000E8   851 _ADLJST	=	0x00e8
                           0000E8   852 G$AD0LJST$0$0 == 0x00e8
                           0000E8   853 _AD0LJST	=	0x00e8
                           0000E9   854 G$ADWINT$0$0 == 0x00e9
                           0000E9   855 _ADWINT	=	0x00e9
                           0000E9   856 G$AD0WINT$0$0 == 0x00e9
                           0000E9   857 _AD0WINT	=	0x00e9
                           0000EA   858 G$ADSTM0$0$0 == 0x00ea
                           0000EA   859 _ADSTM0	=	0x00ea
                           0000EA   860 G$AD0CM0$0$0 == 0x00ea
                           0000EA   861 _AD0CM0	=	0x00ea
                           0000EB   862 G$ADSTM1$0$0 == 0x00eb
                           0000EB   863 _ADSTM1	=	0x00eb
                           0000EB   864 G$AD0CM1$0$0 == 0x00eb
                           0000EB   865 _AD0CM1	=	0x00eb
                           0000EC   866 G$ADBUSY$0$0 == 0x00ec
                           0000EC   867 _ADBUSY	=	0x00ec
                           0000EC   868 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   869 _AD0BUSY	=	0x00ec
                           0000ED   870 G$ADCINT$0$0 == 0x00ed
                           0000ED   871 _ADCINT	=	0x00ed
                           0000ED   872 G$AD0INT$0$0 == 0x00ed
                           0000ED   873 _AD0INT	=	0x00ed
                           0000EE   874 G$ADCTM$0$0 == 0x00ee
                           0000EE   875 _ADCTM	=	0x00ee
                           0000EE   876 G$AD0TM$0$0 == 0x00ee
                           0000EE   877 _AD0TM	=	0x00ee
                           0000EF   878 G$ADCEN$0$0 == 0x00ef
                           0000EF   879 _ADCEN	=	0x00ef
                           0000EF   880 G$AD0EN$0$0 == 0x00ef
                           0000EF   881 _AD0EN	=	0x00ef
                           0000F8   882 G$SPIEN$0$0 == 0x00f8
                           0000F8   883 _SPIEN	=	0x00f8
                           0000F9   884 G$MSTEN$0$0 == 0x00f9
                           0000F9   885 _MSTEN	=	0x00f9
                           0000FA   886 G$SLVSEL$0$0 == 0x00fa
                           0000FA   887 _SLVSEL	=	0x00fa
                           0000FB   888 G$TXBSY$0$0 == 0x00fb
                           0000FB   889 _TXBSY	=	0x00fb
                           0000FC   890 G$RXOVRN$0$0 == 0x00fc
                           0000FC   891 _RXOVRN	=	0x00fc
                           0000FD   892 G$MODF$0$0 == 0x00fd
                           0000FD   893 _MODF	=	0x00fd
                           0000FE   894 G$WCOL$0$0 == 0x00fe
                           0000FE   895 _WCOL	=	0x00fe
                           0000FF   896 G$SPIF$0$0 == 0x00ff
                           0000FF   897 _SPIF	=	0x00ff
                           0000A0   898 G$SS0$0$0 == 0x00a0
                           0000A0   899 _SS0	=	0x00a0
                           0000A1   900 G$LED3$0$0 == 0x00a1
                           0000A1   901 _LED3	=	0x00a1
                           0000A2   902 G$PB3$0$0 == 0x00a2
                           0000A2   903 _PB3	=	0x00a2
                           0000A3   904 G$PB2$0$0 == 0x00a3
                           0000A3   905 _PB2	=	0x00a3
                           0000A5   906 G$SS1$0$0 == 0x00a5
                           0000A5   907 _SS1	=	0x00a5
                           0000B0   908 G$PB1$0$0 == 0x00b0
                           0000B0   909 _PB1	=	0x00b0
                           0000B1   910 G$PB0$0$0 == 0x00b1
                           0000B1   911 _PB0	=	0x00b1
                           0000B2   912 G$LED2$0$0 == 0x00b2
                           0000B2   913 _LED2	=	0x00b2
                           0000B3   914 G$BILED1$0$0 == 0x00b3
                           0000B3   915 _BILED1	=	0x00b3
                           0000B4   916 G$BILED2$0$0 == 0x00b4
                           0000B4   917 _BILED2	=	0x00b4
                           0000B5   918 G$LED1$0$0 == 0x00b5
                           0000B5   919 _LED1	=	0x00b5
                           0000B6   920 G$LED0$0$0 == 0x00b6
                           0000B6   921 _LED0	=	0x00b6
                           000091   922 G$POT$0$0 == 0x0091
                           000091   923 _POT	=	0x0091
                                    924 ;--------------------------------------------------------
                                    925 ; overlayable register banks
                                    926 ;--------------------------------------------------------
                                    927 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        928 	.ds 8
                                    929 ;--------------------------------------------------------
                                    930 ; internal ram data
                                    931 ;--------------------------------------------------------
                                    932 	.area DSEG    (DATA)
                           000000   933 G$counts$0$0==.
      000022                        934 _counts::
      000022                        935 	.ds 2
                           000002   936 G$ad_result$0$0==.
      000024                        937 _ad_result::
      000024                        938 	.ds 1
                           000003   939 G$blink_time$0$0==.
      000025                        940 _blink_time::
      000025                        941 	.ds 2
                           000005   942 G$blink_counts$0$0==.
      000027                        943 _blink_counts::
      000027                        944 	.ds 2
                           000007   945 G$player1press$0$0==.
      000029                        946 _player1press::
      000029                        947 	.ds 2
                           000009   948 G$player2press$0$0==.
      00002B                        949 _player2press::
      00002B                        950 	.ds 2
                           00000B   951 G$Mode2Rounds$0$0==.
      00002D                        952 _Mode2Rounds::
      00002D                        953 	.ds 2
                           00000D   954 G$instant_lose$0$0==.
      00002F                        955 _instant_lose::
      00002F                        956 	.ds 2
                           00000F   957 G$startLED$0$0==.
      000031                        958 _startLED::
      000031                        959 	.ds 2
                           000011   960 G$player1turn$0$0==.
      000033                        961 _player1turn::
      000033                        962 	.ds 2
                           000013   963 G$player1blink$0$0==.
      000035                        964 _player1blink::
      000035                        965 	.ds 2
                           000015   966 G$player2blink$0$0==.
      000037                        967 _player2blink::
      000037                        968 	.ds 2
                           000017   969 G$Mode3Rounds$0$0==.
      000039                        970 _Mode3Rounds::
      000039                        971 	.ds 2
                           000019   972 G$debounce_time$0$0==.
      00003B                        973 _debounce_time::
      00003B                        974 	.ds 2
                           00001B   975 LLab2.aligned_alloc$size$1$39==.
      00003D                        976 _aligned_alloc_PARM_2:
      00003D                        977 	.ds 2
                                    978 ;--------------------------------------------------------
                                    979 ; overlayable items in internal ram 
                                    980 ;--------------------------------------------------------
                                    981 	.area	OSEG    (OVR,DATA)
                                    982 	.area	OSEG    (OVR,DATA)
                                    983 	.area	OSEG    (OVR,DATA)
                                    984 ;--------------------------------------------------------
                                    985 ; Stack segment in internal ram 
                                    986 ;--------------------------------------------------------
                                    987 	.area	SSEG
      000059                        988 __start__stack:
      000059                        989 	.ds	1
                                    990 
                                    991 ;--------------------------------------------------------
                                    992 ; indirectly addressable internal ram data
                                    993 ;--------------------------------------------------------
                                    994 	.area ISEG    (DATA)
                                    995 ;--------------------------------------------------------
                                    996 ; absolute internal ram data
                                    997 ;--------------------------------------------------------
                                    998 	.area IABS    (ABS,DATA)
                                    999 	.area IABS    (ABS,DATA)
                                   1000 ;--------------------------------------------------------
                                   1001 ; bit data
                                   1002 ;--------------------------------------------------------
                                   1003 	.area BSEG    (BIT)
                                   1004 ;--------------------------------------------------------
                                   1005 ; paged external ram data
                                   1006 ;--------------------------------------------------------
                                   1007 	.area PSEG    (PAG,XDATA)
                                   1008 ;--------------------------------------------------------
                                   1009 ; external ram data
                                   1010 ;--------------------------------------------------------
                                   1011 	.area XSEG    (XDATA)
                                   1012 ;--------------------------------------------------------
                                   1013 ; absolute external ram data
                                   1014 ;--------------------------------------------------------
                                   1015 	.area XABS    (ABS,XDATA)
                                   1016 ;--------------------------------------------------------
                                   1017 ; external initialized ram data
                                   1018 ;--------------------------------------------------------
                                   1019 	.area XISEG   (XDATA)
                                   1020 	.area HOME    (CODE)
                                   1021 	.area GSINIT0 (CODE)
                                   1022 	.area GSINIT1 (CODE)
                                   1023 	.area GSINIT2 (CODE)
                                   1024 	.area GSINIT3 (CODE)
                                   1025 	.area GSINIT4 (CODE)
                                   1026 	.area GSINIT5 (CODE)
                                   1027 	.area GSINIT  (CODE)
                                   1028 	.area GSFINAL (CODE)
                                   1029 	.area CSEG    (CODE)
                                   1030 ;--------------------------------------------------------
                                   1031 ; interrupt vector 
                                   1032 ;--------------------------------------------------------
                                   1033 	.area HOME    (CODE)
      000000                       1034 __interrupt_vect:
      000000 02 00 11         [24] 1035 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1036 	reti
      000004                       1037 	.ds	7
      00000B 02 0F 1C         [24] 1038 	ljmp	_Timer0_ISR
                                   1039 ;--------------------------------------------------------
                                   1040 ; global & static initialisations
                                   1041 ;--------------------------------------------------------
                                   1042 	.area HOME    (CODE)
                                   1043 	.area GSINIT  (CODE)
                                   1044 	.area GSFINAL (CODE)
                                   1045 	.area GSINIT  (CODE)
                                   1046 	.globl __sdcc_gsinit_startup
                                   1047 	.globl __sdcc_program_startup
                                   1048 	.globl __start__stack
                                   1049 	.globl __mcs51_genXINIT
                                   1050 	.globl __mcs51_genXRAMCLEAR
                                   1051 	.globl __mcs51_genRAMCLEAR
                                   1052 	.area GSFINAL (CODE)
      000074 02 00 0E         [24] 1053 	ljmp	__sdcc_program_startup
                                   1054 ;--------------------------------------------------------
                                   1055 ; Home
                                   1056 ;--------------------------------------------------------
                                   1057 	.area HOME    (CODE)
                                   1058 	.area HOME    (CODE)
      00000E                       1059 __sdcc_program_startup:
      00000E 02 00 F2         [24] 1060 	ljmp	_main
                                   1061 ;	return from main will return to caller
                                   1062 ;--------------------------------------------------------
                                   1063 ; code
                                   1064 ;--------------------------------------------------------
                                   1065 	.area CSEG    (CODE)
                                   1066 ;------------------------------------------------------------
                                   1067 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1068 ;------------------------------------------------------------
                                   1069 ;i                         Allocated to registers r6 r7 
                                   1070 ;------------------------------------------------------------
                           000000  1071 	G$SYSCLK_Init$0$0 ==.
                           000000  1072 	C$c8051_SDCC.h$62$0$0 ==.
                                   1073 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function SYSCLK_Init
                                   1076 ;	-----------------------------------------
      000077                       1077 _SYSCLK_Init:
                           000007  1078 	ar7 = 0x07
                           000006  1079 	ar6 = 0x06
                           000005  1080 	ar5 = 0x05
                           000004  1081 	ar4 = 0x04
                           000003  1082 	ar3 = 0x03
                           000002  1083 	ar2 = 0x02
                           000001  1084 	ar1 = 0x01
                           000000  1085 	ar0 = 0x00
                           000000  1086 	C$c8051_SDCC.h$66$1$2 ==.
                                   1087 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      000077 75 B1 67         [24] 1088 	mov	_OSCXCN,#0x67
                           000003  1089 	C$c8051_SDCC.h$69$1$2 ==.
                                   1090 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      00007A 7E 00            [12] 1091 	mov	r6,#0x00
      00007C 7F 01            [12] 1092 	mov	r7,#0x01
      00007E                       1093 00107$:
      00007E EE               [12] 1094 	mov	a,r6
      00007F 24 FF            [12] 1095 	add	a,#0xff
      000081 FC               [12] 1096 	mov	r4,a
      000082 EF               [12] 1097 	mov	a,r7
      000083 34 FF            [12] 1098 	addc	a,#0xff
      000085 FD               [12] 1099 	mov	r5,a
      000086 8C 06            [24] 1100 	mov	ar6,r4
      000088 8D 07            [24] 1101 	mov	ar7,r5
      00008A EC               [12] 1102 	mov	a,r4
      00008B 4D               [12] 1103 	orl	a,r5
      00008C 70 F0            [24] 1104 	jnz	00107$
                           000017  1105 	C$c8051_SDCC.h$71$1$2 ==.
                                   1106 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      00008E                       1107 00102$:
      00008E E5 B1            [12] 1108 	mov	a,_OSCXCN
      000090 30 E7 FB         [24] 1109 	jnb	acc.7,00102$
                           00001C  1110 	C$c8051_SDCC.h$73$1$2 ==.
                                   1111 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      000093 75 B2 88         [24] 1112 	mov	_OSCICN,#0x88
                           00001F  1113 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1114 	XG$SYSCLK_Init$0$0 ==.
      000096 22               [24] 1115 	ret
                                   1116 ;------------------------------------------------------------
                                   1117 ;Allocation info for local variables in function 'UART0_Init'
                                   1118 ;------------------------------------------------------------
                           000020  1119 	G$UART0_Init$0$0 ==.
                           000020  1120 	C$c8051_SDCC.h$84$1$2 ==.
                                   1121 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1122 ;	-----------------------------------------
                                   1123 ;	 function UART0_Init
                                   1124 ;	-----------------------------------------
      000097                       1125 _UART0_Init:
                           000020  1126 	C$c8051_SDCC.h$86$1$4 ==.
                                   1127 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      000097 75 98 50         [24] 1128 	mov	_SCON0,#0x50
                           000023  1129 	C$c8051_SDCC.h$87$1$4 ==.
                                   1130 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      00009A 75 89 20         [24] 1131 	mov	_TMOD,#0x20
                           000026  1132 	C$c8051_SDCC.h$88$1$4 ==.
                                   1133 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      00009D 75 8D DC         [24] 1134 	mov	_TH1,#0xdc
                           000029  1135 	C$c8051_SDCC.h$89$1$4 ==.
                                   1136 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000A0 D2 8E            [12] 1137 	setb	_TR1
                           00002B  1138 	C$c8051_SDCC.h$90$1$4 ==.
                                   1139 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000A2 43 8E 10         [24] 1140 	orl	_CKCON,#0x10
                           00002E  1141 	C$c8051_SDCC.h$91$1$4 ==.
                                   1142 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000A5 43 87 80         [24] 1143 	orl	_PCON,#0x80
                           000031  1144 	C$c8051_SDCC.h$93$1$4 ==.
                                   1145 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000A8 D2 99            [12] 1146 	setb	_TI0
                           000033  1147 	C$c8051_SDCC.h$94$1$4 ==.
                                   1148 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000AA 43 A4 01         [24] 1149 	orl	_P0MDOUT,#0x01
                           000036  1150 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1151 	XG$UART0_Init$0$0 ==.
      0000AD 22               [24] 1152 	ret
                                   1153 ;------------------------------------------------------------
                                   1154 ;Allocation info for local variables in function 'Sys_Init'
                                   1155 ;------------------------------------------------------------
                           000037  1156 	G$Sys_Init$0$0 ==.
                           000037  1157 	C$c8051_SDCC.h$103$1$4 ==.
                                   1158 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function Sys_Init
                                   1161 ;	-----------------------------------------
      0000AE                       1162 _Sys_Init:
                           000037  1163 	C$c8051_SDCC.h$105$1$6 ==.
                                   1164 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000AE 75 FF DE         [24] 1165 	mov	_WDTCN,#0xde
                           00003A  1166 	C$c8051_SDCC.h$106$1$6 ==.
                                   1167 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000B1 75 FF AD         [24] 1168 	mov	_WDTCN,#0xad
                           00003D  1169 	C$c8051_SDCC.h$108$1$6 ==.
                                   1170 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000B4 12 00 77         [24] 1171 	lcall	_SYSCLK_Init
                           000040  1172 	C$c8051_SDCC.h$109$1$6 ==.
                                   1173 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000B7 12 00 97         [24] 1174 	lcall	_UART0_Init
                           000043  1175 	C$c8051_SDCC.h$111$1$6 ==.
                                   1176 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000BA 43 E1 04         [24] 1177 	orl	_XBR0,#0x04
                           000046  1178 	C$c8051_SDCC.h$112$1$6 ==.
                                   1179 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000BD 43 E3 40         [24] 1180 	orl	_XBR2,#0x40
                           000049  1181 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1182 	XG$Sys_Init$0$0 ==.
      0000C0 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'putchar'
                                   1186 ;------------------------------------------------------------
                                   1187 ;c                         Allocated to registers r7 
                                   1188 ;------------------------------------------------------------
                           00004A  1189 	G$putchar$0$0 ==.
                           00004A  1190 	C$c8051_SDCC.h$129$1$6 ==.
                                   1191 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function putchar
                                   1194 ;	-----------------------------------------
      0000C1                       1195 _putchar:
      0000C1 AF 82            [24] 1196 	mov	r7,dpl
                           00004C  1197 	C$c8051_SDCC.h$132$1$8 ==.
                                   1198 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000C3                       1199 00101$:
                           00004C  1200 	C$c8051_SDCC.h$133$1$8 ==.
                                   1201 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000C3 10 99 02         [24] 1202 	jbc	_TI0,00112$
      0000C6 80 FB            [24] 1203 	sjmp	00101$
      0000C8                       1204 00112$:
                           000051  1205 	C$c8051_SDCC.h$134$1$8 ==.
                                   1206 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000C8 8F 99            [24] 1207 	mov	_SBUF0,r7
                           000053  1208 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1209 	XG$putchar$0$0 ==.
      0000CA 22               [24] 1210 	ret
                                   1211 ;------------------------------------------------------------
                                   1212 ;Allocation info for local variables in function 'getchar'
                                   1213 ;------------------------------------------------------------
                                   1214 ;c                         Allocated to registers r7 
                                   1215 ;------------------------------------------------------------
                           000054  1216 	G$getchar$0$0 ==.
                           000054  1217 	C$c8051_SDCC.h$154$1$8 ==.
                                   1218 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function getchar
                                   1221 ;	-----------------------------------------
      0000CB                       1222 _getchar:
                           000054  1223 	C$c8051_SDCC.h$157$1$10 ==.
                                   1224 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000CB                       1225 00101$:
                           000054  1226 	C$c8051_SDCC.h$158$1$10 ==.
                                   1227 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000CB 10 98 02         [24] 1228 	jbc	_RI0,00112$
      0000CE 80 FB            [24] 1229 	sjmp	00101$
      0000D0                       1230 00112$:
                           000059  1231 	C$c8051_SDCC.h$159$1$10 ==.
                                   1232 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000D0 AF 99            [24] 1233 	mov	r7,_SBUF0
                           00005B  1234 	C$c8051_SDCC.h$160$1$10 ==.
                                   1235 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000D2 8F 82            [24] 1236 	mov	dpl,r7
      0000D4 C0 07            [24] 1237 	push	ar7
      0000D6 12 00 C1         [24] 1238 	lcall	_putchar
      0000D9 D0 07            [24] 1239 	pop	ar7
                           000064  1240 	C$c8051_SDCC.h$161$1$10 ==.
                                   1241 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000DB 8F 82            [24] 1242 	mov	dpl,r7
                           000066  1243 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1244 	XG$getchar$0$0 ==.
      0000DD 22               [24] 1245 	ret
                                   1246 ;------------------------------------------------------------
                                   1247 ;Allocation info for local variables in function 'getchar_nw'
                                   1248 ;------------------------------------------------------------
                                   1249 ;c                         Allocated to registers 
                                   1250 ;------------------------------------------------------------
                           000067  1251 	G$getchar_nw$0$0 ==.
                           000067  1252 	C$c8051_SDCC.h$168$1$10 ==.
                                   1253 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function getchar_nw
                                   1256 ;	-----------------------------------------
      0000DE                       1257 _getchar_nw:
                           000067  1258 	C$c8051_SDCC.h$171$1$12 ==.
                                   1259 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000DE 20 98 05         [24] 1260 	jb	_RI0,00102$
      0000E1 75 82 FF         [24] 1261 	mov	dpl,#0xff
      0000E4 80 0B            [24] 1262 	sjmp	00104$
      0000E6                       1263 00102$:
                           00006F  1264 	C$c8051_SDCC.h$174$2$13 ==.
                                   1265 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000E6 C2 98            [12] 1266 	clr	_RI0
                           000071  1267 	C$c8051_SDCC.h$175$2$13 ==.
                                   1268 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000E8 85 99 82         [24] 1269 	mov	dpl,_SBUF0
                           000074  1270 	C$c8051_SDCC.h$176$2$13 ==.
                                   1271 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000EB 12 00 C1         [24] 1272 	lcall	_putchar
                           000077  1273 	C$c8051_SDCC.h$177$2$13 ==.
                                   1274 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000EE 85 99 82         [24] 1275 	mov	dpl,_SBUF0
      0000F1                       1276 00104$:
                           00007A  1277 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1278 	XG$getchar_nw$0$0 ==.
      0000F1 22               [24] 1279 	ret
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'main'
                                   1282 ;------------------------------------------------------------
                           00007B  1283 	G$main$0$0 ==.
                           00007B  1284 	C$Lab2.c$62$1$12 ==.
                                   1285 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:62: void main(void)
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function main
                                   1288 ;	-----------------------------------------
      0000F2                       1289 _main:
                           00007B  1290 	C$Lab2.c$64$1$61 ==.
                                   1291 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:64: Sys_Init();
      0000F2 12 00 AE         [24] 1292 	lcall	_Sys_Init
                           00007E  1293 	C$Lab2.c$65$1$61 ==.
                                   1294 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:65: putchar(' ');
      0000F5 75 82 20         [24] 1295 	mov	dpl,#0x20
      0000F8 12 00 C1         [24] 1296 	lcall	_putchar
                           000084  1297 	C$Lab2.c$66$1$61 ==.
                                   1298 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:66: Port_Init();
      0000FB 12 0E EB         [24] 1299 	lcall	_Port_Init
                           000087  1300 	C$Lab2.c$67$1$61 ==.
                                   1301 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:67: Interrupt_Init();
      0000FE 12 0F 07         [24] 1302 	lcall	_Interrupt_Init
                           00008A  1303 	C$Lab2.c$68$1$61 ==.
                                   1304 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:68: Timer_Init();
      000101 12 0F 0B         [24] 1305 	lcall	_Timer_Init
                           00008D  1306 	C$Lab2.c$69$1$61 ==.
                                   1307 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:69: ADC_Init();
      000104 12 0F 2D         [24] 1308 	lcall	_ADC_Init
                           000090  1309 	C$Lab2.c$70$1$61 ==.
                                   1310 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:70: TR0 = 1;
      000107 D2 8C            [12] 1311 	setb	_TR0
                           000092  1312 	C$Lab2.c$72$1$61 ==.
                                   1313 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:72: while (1)
      000109                       1314 00122$:
                           000092  1315 	C$Lab2.c$74$2$62 ==.
                                   1316 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:74: if (SS0 == 1 && SS1 ==1)
      000109 30 A0 09         [24] 1317 	jnb	_SS0,00104$
      00010C 30 A5 06         [24] 1318 	jnb	_SS1,00104$
                           000098  1319 	C$Lab2.c$76$3$63 ==.
                                   1320 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:76: if (PB0 == 0)
      00010F 20 B1 03         [24] 1321 	jb	_PB0,00104$
                           00009B  1322 	C$Lab2.c$78$4$64 ==.
                                   1323 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:78: turnOff();
      000112 12 0E 8E         [24] 1324 	lcall	_turnOff
      000115                       1325 00104$:
                           00009E  1326 	C$Lab2.c$81$2$62 ==.
                                   1327 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:81: if (SS0 == 0 && SS1 == 1)
      000115 20 A0 09         [24] 1328 	jb	_SS0,00109$
      000118 30 A5 06         [24] 1329 	jnb	_SS1,00109$
                           0000A4  1330 	C$Lab2.c$83$3$65 ==.
                                   1331 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:83: if (PB0 == 0)
      00011B 20 B1 03         [24] 1332 	jb	_PB0,00109$
                           0000A7  1333 	C$Lab2.c$85$4$66 ==.
                                   1334 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:85: Mode_1();
      00011E 12 01 3C         [24] 1335 	lcall	_Mode_1
      000121                       1336 00109$:
                           0000AA  1337 	C$Lab2.c$89$2$62 ==.
                                   1338 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:89: if (SS0 == 1 && SS1 == 0)
      000121 30 A0 09         [24] 1339 	jnb	_SS0,00114$
      000124 20 A5 06         [24] 1340 	jb	_SS1,00114$
                           0000B0  1341 	C$Lab2.c$91$3$67 ==.
                                   1342 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:91: if (PB0 == 0)
      000127 20 B1 03         [24] 1343 	jb	_PB0,00114$
                           0000B3  1344 	C$Lab2.c$93$4$68 ==.
                                   1345 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:93: Mode_2();
      00012A 12 03 C1         [24] 1346 	lcall	_Mode_2
      00012D                       1347 00114$:
                           0000B6  1348 	C$Lab2.c$97$2$62 ==.
                                   1349 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:97: if (SS0 == 0 && SS1 == 0)
      00012D 20 A0 D9         [24] 1350 	jb	_SS0,00122$
      000130 20 A5 D6         [24] 1351 	jb	_SS1,00122$
                           0000BC  1352 	C$Lab2.c$99$3$69 ==.
                                   1353 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:99: if (PB0 == 0)
      000133 20 B1 D3         [24] 1354 	jb	_PB0,00122$
                           0000BF  1355 	C$Lab2.c$101$4$70 ==.
                                   1356 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:101: Mode_3();
      000136 12 05 90         [24] 1357 	lcall	_Mode_3
      000139 80 CE            [24] 1358 	sjmp	00122$
                           0000C4  1359 	C$Lab2.c$105$1$61 ==.
                           0000C4  1360 	XG$main$0$0 ==.
      00013B 22               [24] 1361 	ret
                                   1362 ;------------------------------------------------------------
                                   1363 ;Allocation info for local variables in function 'Mode_1'
                                   1364 ;------------------------------------------------------------
                           0000C5  1365 	G$Mode_1$0$0 ==.
                           0000C5  1366 	C$Lab2.c$108$1$61 ==.
                                   1367 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:108: void Mode_1(void)
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function Mode_1
                                   1370 ;	-----------------------------------------
      00013C                       1371 _Mode_1:
                           0000C5  1372 	C$Lab2.c$110$1$72 ==.
                                   1373 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:110: turnOff();
      00013C 12 0E 8E         [24] 1374 	lcall	_turnOff
                           0000C8  1375 	C$Lab2.c$113$1$72 ==.
                                   1376 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:113: ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
      00013F 75 82 01         [24] 1377 	mov	dpl,#0x01
      000142 12 0F 37         [24] 1378 	lcall	_read_AD_input
                           0000CE  1379 	C$Lab2.c$114$1$72 ==.
                                   1380 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:114: blink_time = ((ad_result * 3) + 250);             //convert A/D value to between 250 and 1000 ms
      000145 E5 82            [12] 1381 	mov	a,dpl
      000147 F5 24            [12] 1382 	mov	_ad_result,a
      000149 75 F0 03         [24] 1383 	mov	b,#0x03
      00014C A4               [48] 1384 	mul	ab
      00014D 24 FA            [12] 1385 	add	a,#0xfa
      00014F F5 25            [12] 1386 	mov	_blink_time,a
      000151 E4               [12] 1387 	clr	a
      000152 35 F0            [12] 1388 	addc	a,b
      000154 F5 26            [12] 1389 	mov	(_blink_time + 1),a
                           0000DF  1390 	C$Lab2.c$115$1$72 ==.
                                   1391 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:115: blink_counts = blink_time * .3375;                //convert ms to overflows
      000156 85 25 82         [24] 1392 	mov	dpl,_blink_time
      000159 85 26 83         [24] 1393 	mov	dph,(_blink_time + 1)
      00015C 12 11 AC         [24] 1394 	lcall	___uint2fs
      00015F AC 82            [24] 1395 	mov	r4,dpl
      000161 AD 83            [24] 1396 	mov	r5,dph
      000163 AE F0            [24] 1397 	mov	r6,b
      000165 FF               [12] 1398 	mov	r7,a
      000166 C0 04            [24] 1399 	push	ar4
      000168 C0 05            [24] 1400 	push	ar5
      00016A C0 06            [24] 1401 	push	ar6
      00016C C0 07            [24] 1402 	push	ar7
      00016E 90 CC CD         [24] 1403 	mov	dptr,#0xcccd
      000171 75 F0 AC         [24] 1404 	mov	b,#0xac
      000174 74 3E            [12] 1405 	mov	a,#0x3e
      000176 12 0F 94         [24] 1406 	lcall	___fsmul
      000179 AC 82            [24] 1407 	mov	r4,dpl
      00017B AD 83            [24] 1408 	mov	r5,dph
      00017D AE F0            [24] 1409 	mov	r6,b
      00017F FF               [12] 1410 	mov	r7,a
      000180 E5 81            [12] 1411 	mov	a,sp
      000182 24 FC            [12] 1412 	add	a,#0xfc
      000184 F5 81            [12] 1413 	mov	sp,a
      000186 8C 82            [24] 1414 	mov	dpl,r4
      000188 8D 83            [24] 1415 	mov	dph,r5
      00018A 8E F0            [24] 1416 	mov	b,r6
      00018C EF               [12] 1417 	mov	a,r7
      00018D 12 11 B8         [24] 1418 	lcall	___fs2uint
      000190 85 82 27         [24] 1419 	mov	_blink_counts,dpl
      000193 85 83 28         [24] 1420 	mov	(_blink_counts + 1),dph
                           00011F  1421 	C$Lab2.c$117$1$72 ==.
                                   1422 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:117: counts = 0;
      000196 E4               [12] 1423 	clr	a
      000197 F5 22            [12] 1424 	mov	_counts,a
      000199 F5 23            [12] 1425 	mov	(_counts + 1),a
                           000124  1426 	C$Lab2.c$118$1$72 ==.
                                   1427 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:118: LED0 = 0;                                        //turn on top LED
      00019B C2 B6            [12] 1428 	clr	_LED0
                           000126  1429 	C$Lab2.c$119$1$72 ==.
                                   1430 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:119: while (counts < blink_counts);                    //wait until set time
      00019D                       1431 00101$:
      00019D C3               [12] 1432 	clr	c
      00019E E5 22            [12] 1433 	mov	a,_counts
      0001A0 95 27            [12] 1434 	subb	a,_blink_counts
      0001A2 E5 23            [12] 1435 	mov	a,(_counts + 1)
      0001A4 95 28            [12] 1436 	subb	a,(_blink_counts + 1)
      0001A6 40 F5            [24] 1437 	jc	00101$
                           000131  1438 	C$Lab2.c$120$1$72 ==.
                                   1439 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:120: LED0 = 1;                                        //turn off top LED
      0001A8 D2 B6            [12] 1440 	setb	_LED0
                           000133  1441 	C$Lab2.c$122$1$72 ==.
                                   1442 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:122: counts = 0;
      0001AA E4               [12] 1443 	clr	a
      0001AB F5 22            [12] 1444 	mov	_counts,a
      0001AD F5 23            [12] 1445 	mov	(_counts + 1),a
                           000138  1446 	C$Lab2.c$123$1$72 ==.
                                   1447 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:123: LED1 = 0;                                        //turn on right LED
      0001AF C2 B5            [12] 1448 	clr	_LED1
                           00013A  1449 	C$Lab2.c$124$1$72 ==.
                                   1450 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:124: while (counts < blink_counts);                    //wait until set time
      0001B1                       1451 00104$:
      0001B1 C3               [12] 1452 	clr	c
      0001B2 E5 22            [12] 1453 	mov	a,_counts
      0001B4 95 27            [12] 1454 	subb	a,_blink_counts
      0001B6 E5 23            [12] 1455 	mov	a,(_counts + 1)
      0001B8 95 28            [12] 1456 	subb	a,(_blink_counts + 1)
      0001BA 40 F5            [24] 1457 	jc	00104$
                           000145  1458 	C$Lab2.c$125$1$72 ==.
                                   1459 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:125: LED1 = 1;                                        //turn off right LED
      0001BC D2 B5            [12] 1460 	setb	_LED1
                           000147  1461 	C$Lab2.c$127$1$72 ==.
                                   1462 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:127: counts = 0;
      0001BE E4               [12] 1463 	clr	a
      0001BF F5 22            [12] 1464 	mov	_counts,a
      0001C1 F5 23            [12] 1465 	mov	(_counts + 1),a
                           00014C  1466 	C$Lab2.c$128$1$72 ==.
                                   1467 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:128: LED2 = 0;                                        //turn on bottom LED
      0001C3 C2 B2            [12] 1468 	clr	_LED2
                           00014E  1469 	C$Lab2.c$129$1$72 ==.
                                   1470 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:129: while (counts < blink_counts);                    //wait until set time
      0001C5                       1471 00107$:
      0001C5 C3               [12] 1472 	clr	c
      0001C6 E5 22            [12] 1473 	mov	a,_counts
      0001C8 95 27            [12] 1474 	subb	a,_blink_counts
      0001CA E5 23            [12] 1475 	mov	a,(_counts + 1)
      0001CC 95 28            [12] 1476 	subb	a,(_blink_counts + 1)
      0001CE 40 F5            [24] 1477 	jc	00107$
                           000159  1478 	C$Lab2.c$130$1$72 ==.
                                   1479 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:130: LED2 = 1;                                        //turn off bottom LED
      0001D0 D2 B2            [12] 1480 	setb	_LED2
                           00015B  1481 	C$Lab2.c$132$1$72 ==.
                                   1482 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:132: counts = 0;
      0001D2 E4               [12] 1483 	clr	a
      0001D3 F5 22            [12] 1484 	mov	_counts,a
      0001D5 F5 23            [12] 1485 	mov	(_counts + 1),a
                           000160  1486 	C$Lab2.c$133$1$72 ==.
                                   1487 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:133: LED3 = 0;                                        //turn on left LED
      0001D7 C2 A1            [12] 1488 	clr	_LED3
                           000162  1489 	C$Lab2.c$134$1$72 ==.
                                   1490 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:134: while (counts < blink_counts);                    //wait until set time
      0001D9                       1491 00110$:
      0001D9 C3               [12] 1492 	clr	c
      0001DA E5 22            [12] 1493 	mov	a,_counts
      0001DC 95 27            [12] 1494 	subb	a,_blink_counts
      0001DE E5 23            [12] 1495 	mov	a,(_counts + 1)
      0001E0 95 28            [12] 1496 	subb	a,(_blink_counts + 1)
      0001E2 40 F5            [24] 1497 	jc	00110$
                           00016D  1498 	C$Lab2.c$135$1$72 ==.
                                   1499 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:135: LED3 = 1;                                        //turn off left LED
      0001E4 D2 A1            [12] 1500 	setb	_LED3
                           00016F  1501 	C$Lab2.c$137$1$72 ==.
                                   1502 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:137: counts = 0;
      0001E6 E4               [12] 1503 	clr	a
      0001E7 F5 22            [12] 1504 	mov	_counts,a
      0001E9 F5 23            [12] 1505 	mov	(_counts + 1),a
                           000174  1506 	C$Lab2.c$138$1$72 ==.
                                   1507 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:138: LED0 = 0;                                        //turn on top LED
      0001EB C2 B6            [12] 1508 	clr	_LED0
                           000176  1509 	C$Lab2.c$139$1$72 ==.
                                   1510 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:139: while (counts < blink_counts);                    //wait until set time
      0001ED                       1511 00113$:
      0001ED C3               [12] 1512 	clr	c
      0001EE E5 22            [12] 1513 	mov	a,_counts
      0001F0 95 27            [12] 1514 	subb	a,_blink_counts
      0001F2 E5 23            [12] 1515 	mov	a,(_counts + 1)
      0001F4 95 28            [12] 1516 	subb	a,(_blink_counts + 1)
      0001F6 40 F5            [24] 1517 	jc	00113$
                           000181  1518 	C$Lab2.c$140$1$72 ==.
                                   1519 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:140: LED0 = 1;                                        //turn off top LED
      0001F8 D2 B6            [12] 1520 	setb	_LED0
                           000183  1521 	C$Lab2.c$142$1$72 ==.
                                   1522 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:142: counts = 0;
      0001FA E4               [12] 1523 	clr	a
      0001FB F5 22            [12] 1524 	mov	_counts,a
      0001FD F5 23            [12] 1525 	mov	(_counts + 1),a
                           000188  1526 	C$Lab2.c$143$1$72 ==.
                                   1527 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:143: LED3 = 0;                                        //turn on left LED
      0001FF C2 A1            [12] 1528 	clr	_LED3
                           00018A  1529 	C$Lab2.c$144$1$72 ==.
                                   1530 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:144: while (counts < blink_counts);                    //wait until set time
      000201                       1531 00116$:
      000201 C3               [12] 1532 	clr	c
      000202 E5 22            [12] 1533 	mov	a,_counts
      000204 95 27            [12] 1534 	subb	a,_blink_counts
      000206 E5 23            [12] 1535 	mov	a,(_counts + 1)
      000208 95 28            [12] 1536 	subb	a,(_blink_counts + 1)
      00020A 40 F5            [24] 1537 	jc	00116$
                           000195  1538 	C$Lab2.c$145$1$72 ==.
                                   1539 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:145: LED3 = 1;                                        //turn off left LED
      00020C D2 A1            [12] 1540 	setb	_LED3
                           000197  1541 	C$Lab2.c$147$1$72 ==.
                                   1542 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:147: counts = 0;
      00020E E4               [12] 1543 	clr	a
      00020F F5 22            [12] 1544 	mov	_counts,a
      000211 F5 23            [12] 1545 	mov	(_counts + 1),a
                           00019C  1546 	C$Lab2.c$148$1$72 ==.
                                   1547 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:148: LED2 = 0;                                        //turn on bottom LED
      000213 C2 B2            [12] 1548 	clr	_LED2
                           00019E  1549 	C$Lab2.c$149$1$72 ==.
                                   1550 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:149: while (counts < blink_counts);                    //wait until set time
      000215                       1551 00119$:
      000215 C3               [12] 1552 	clr	c
      000216 E5 22            [12] 1553 	mov	a,_counts
      000218 95 27            [12] 1554 	subb	a,_blink_counts
      00021A E5 23            [12] 1555 	mov	a,(_counts + 1)
      00021C 95 28            [12] 1556 	subb	a,(_blink_counts + 1)
      00021E 40 F5            [24] 1557 	jc	00119$
                           0001A9  1558 	C$Lab2.c$150$1$72 ==.
                                   1559 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:150: LED2 = 1;                                        //turn off bottom LED
      000220 D2 B2            [12] 1560 	setb	_LED2
                           0001AB  1561 	C$Lab2.c$152$1$72 ==.
                                   1562 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:152: counts = 0;
      000222 E4               [12] 1563 	clr	a
      000223 F5 22            [12] 1564 	mov	_counts,a
      000225 F5 23            [12] 1565 	mov	(_counts + 1),a
                           0001B0  1566 	C$Lab2.c$153$1$72 ==.
                                   1567 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:153: LED1 = 0;                                        //turn on right LED
      000227 C2 B5            [12] 1568 	clr	_LED1
                           0001B2  1569 	C$Lab2.c$154$1$72 ==.
                                   1570 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:154: while (counts < blink_counts);                    //wait until set time
      000229                       1571 00122$:
      000229 C3               [12] 1572 	clr	c
      00022A E5 22            [12] 1573 	mov	a,_counts
      00022C 95 27            [12] 1574 	subb	a,_blink_counts
      00022E E5 23            [12] 1575 	mov	a,(_counts + 1)
      000230 95 28            [12] 1576 	subb	a,(_blink_counts + 1)
      000232 40 F5            [24] 1577 	jc	00122$
                           0001BD  1578 	C$Lab2.c$155$1$72 ==.
                                   1579 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:155: LED1 = 1;                                        //turn off right LED
      000234 D2 B5            [12] 1580 	setb	_LED1
                           0001BF  1581 	C$Lab2.c$158$1$72 ==.
                                   1582 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:158: ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
      000236 75 82 01         [24] 1583 	mov	dpl,#0x01
      000239 12 0F 37         [24] 1584 	lcall	_read_AD_input
                           0001C5  1585 	C$Lab2.c$159$1$72 ==.
                                   1586 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:159: blink_time = ((ad_result * 3) + 250);             //convert A/D value to seconds
      00023C E5 82            [12] 1587 	mov	a,dpl
      00023E F5 24            [12] 1588 	mov	_ad_result,a
      000240 75 F0 03         [24] 1589 	mov	b,#0x03
      000243 A4               [48] 1590 	mul	ab
      000244 24 FA            [12] 1591 	add	a,#0xfa
      000246 F5 25            [12] 1592 	mov	_blink_time,a
      000248 E4               [12] 1593 	clr	a
      000249 35 F0            [12] 1594 	addc	a,b
      00024B F5 26            [12] 1595 	mov	(_blink_time + 1),a
                           0001D6  1596 	C$Lab2.c$160$1$72 ==.
                                   1597 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:160: blink_counts = blink_time * .3375;                //convert blink seconds to counts
      00024D 85 25 82         [24] 1598 	mov	dpl,_blink_time
      000250 85 26 83         [24] 1599 	mov	dph,(_blink_time + 1)
      000253 12 11 AC         [24] 1600 	lcall	___uint2fs
      000256 AC 82            [24] 1601 	mov	r4,dpl
      000258 AD 83            [24] 1602 	mov	r5,dph
      00025A AE F0            [24] 1603 	mov	r6,b
      00025C FF               [12] 1604 	mov	r7,a
      00025D C0 04            [24] 1605 	push	ar4
      00025F C0 05            [24] 1606 	push	ar5
      000261 C0 06            [24] 1607 	push	ar6
      000263 C0 07            [24] 1608 	push	ar7
      000265 90 CC CD         [24] 1609 	mov	dptr,#0xcccd
      000268 75 F0 AC         [24] 1610 	mov	b,#0xac
      00026B 74 3E            [12] 1611 	mov	a,#0x3e
      00026D 12 0F 94         [24] 1612 	lcall	___fsmul
      000270 AC 82            [24] 1613 	mov	r4,dpl
      000272 AD 83            [24] 1614 	mov	r5,dph
      000274 AE F0            [24] 1615 	mov	r6,b
      000276 FF               [12] 1616 	mov	r7,a
      000277 E5 81            [12] 1617 	mov	a,sp
      000279 24 FC            [12] 1618 	add	a,#0xfc
      00027B F5 81            [12] 1619 	mov	sp,a
      00027D 8C 82            [24] 1620 	mov	dpl,r4
      00027F 8D 83            [24] 1621 	mov	dph,r5
      000281 8E F0            [24] 1622 	mov	b,r6
      000283 EF               [12] 1623 	mov	a,r7
      000284 12 11 B8         [24] 1624 	lcall	___fs2uint
      000287 85 82 27         [24] 1625 	mov	_blink_counts,dpl
      00028A 85 83 28         [24] 1626 	mov	(_blink_counts + 1),dph
                           000216  1627 	C$Lab2.c$162$1$72 ==.
                                   1628 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:162: counts = 0;
      00028D E4               [12] 1629 	clr	a
      00028E F5 22            [12] 1630 	mov	_counts,a
      000290 F5 23            [12] 1631 	mov	(_counts + 1),a
                           00021B  1632 	C$Lab2.c$163$1$72 ==.
                                   1633 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:163: LED0 = 0;                                        //turn on top LED
      000292 C2 B6            [12] 1634 	clr	_LED0
                           00021D  1635 	C$Lab2.c$164$1$72 ==.
                                   1636 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:164: while (counts < blink_counts);                    //wait until set time
      000294                       1637 00125$:
      000294 C3               [12] 1638 	clr	c
      000295 E5 22            [12] 1639 	mov	a,_counts
      000297 95 27            [12] 1640 	subb	a,_blink_counts
      000299 E5 23            [12] 1641 	mov	a,(_counts + 1)
      00029B 95 28            [12] 1642 	subb	a,(_blink_counts + 1)
      00029D 40 F5            [24] 1643 	jc	00125$
                           000228  1644 	C$Lab2.c$165$1$72 ==.
                                   1645 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:165: LED0 = 1;                                        //turn off top LED
      00029F D2 B6            [12] 1646 	setb	_LED0
                           00022A  1647 	C$Lab2.c$167$1$72 ==.
                                   1648 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:167: counts = 0;
      0002A1 E4               [12] 1649 	clr	a
      0002A2 F5 22            [12] 1650 	mov	_counts,a
      0002A4 F5 23            [12] 1651 	mov	(_counts + 1),a
                           00022F  1652 	C$Lab2.c$168$1$72 ==.
                                   1653 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:168: LED2 = 0;                                        //turn on bottom LED
      0002A6 C2 B2            [12] 1654 	clr	_LED2
                           000231  1655 	C$Lab2.c$169$1$72 ==.
                                   1656 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:169: while (counts < blink_counts);                    //wait until set time
      0002A8                       1657 00128$:
      0002A8 C3               [12] 1658 	clr	c
      0002A9 E5 22            [12] 1659 	mov	a,_counts
      0002AB 95 27            [12] 1660 	subb	a,_blink_counts
      0002AD E5 23            [12] 1661 	mov	a,(_counts + 1)
      0002AF 95 28            [12] 1662 	subb	a,(_blink_counts + 1)
      0002B1 40 F5            [24] 1663 	jc	00128$
                           00023C  1664 	C$Lab2.c$170$1$72 ==.
                                   1665 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:170: LED2 = 1;                                        //turn off bottom LED
      0002B3 D2 B2            [12] 1666 	setb	_LED2
                           00023E  1667 	C$Lab2.c$172$1$72 ==.
                                   1668 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:172: counts = 0;
      0002B5 E4               [12] 1669 	clr	a
      0002B6 F5 22            [12] 1670 	mov	_counts,a
      0002B8 F5 23            [12] 1671 	mov	(_counts + 1),a
                           000243  1672 	C$Lab2.c$173$1$72 ==.
                                   1673 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:173: LED3 = 0;                                        //turn on left LED
      0002BA C2 A1            [12] 1674 	clr	_LED3
                           000245  1675 	C$Lab2.c$174$1$72 ==.
                                   1676 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:174: while (counts < blink_counts);                    //wait until set time
      0002BC                       1677 00131$:
      0002BC C3               [12] 1678 	clr	c
      0002BD E5 22            [12] 1679 	mov	a,_counts
      0002BF 95 27            [12] 1680 	subb	a,_blink_counts
      0002C1 E5 23            [12] 1681 	mov	a,(_counts + 1)
      0002C3 95 28            [12] 1682 	subb	a,(_blink_counts + 1)
      0002C5 40 F5            [24] 1683 	jc	00131$
                           000250  1684 	C$Lab2.c$175$1$72 ==.
                                   1685 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:175: LED3 = 1;                                        //turn off left LED
      0002C7 D2 A1            [12] 1686 	setb	_LED3
                           000252  1687 	C$Lab2.c$177$1$72 ==.
                                   1688 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:177: counts = 0;
      0002C9 E4               [12] 1689 	clr	a
      0002CA F5 22            [12] 1690 	mov	_counts,a
      0002CC F5 23            [12] 1691 	mov	(_counts + 1),a
                           000257  1692 	C$Lab2.c$178$1$72 ==.
                                   1693 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:178: LED1 = 0;                                        //turn on right LED
      0002CE C2 B5            [12] 1694 	clr	_LED1
                           000259  1695 	C$Lab2.c$179$1$72 ==.
                                   1696 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:179: while (counts < blink_counts);                    //wait until set time
      0002D0                       1697 00134$:
      0002D0 C3               [12] 1698 	clr	c
      0002D1 E5 22            [12] 1699 	mov	a,_counts
      0002D3 95 27            [12] 1700 	subb	a,_blink_counts
      0002D5 E5 23            [12] 1701 	mov	a,(_counts + 1)
      0002D7 95 28            [12] 1702 	subb	a,(_blink_counts + 1)
      0002D9 40 F5            [24] 1703 	jc	00134$
                           000264  1704 	C$Lab2.c$180$1$72 ==.
                                   1705 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:180: LED1 = 1;                                        //turn off right LED
      0002DB D2 B5            [12] 1706 	setb	_LED1
                           000266  1707 	C$Lab2.c$182$1$72 ==.
                                   1708 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:182: counts = 0;
      0002DD E4               [12] 1709 	clr	a
      0002DE F5 22            [12] 1710 	mov	_counts,a
      0002E0 F5 23            [12] 1711 	mov	(_counts + 1),a
                           00026B  1712 	C$Lab2.c$183$1$72 ==.
                                   1713 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:183: LED3 = 0;                                        //turn on left LED
      0002E2 C2 A1            [12] 1714 	clr	_LED3
                           00026D  1715 	C$Lab2.c$184$1$72 ==.
                                   1716 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:184: while (counts < blink_counts);                    //wait until set time
      0002E4                       1717 00137$:
      0002E4 C3               [12] 1718 	clr	c
      0002E5 E5 22            [12] 1719 	mov	a,_counts
      0002E7 95 27            [12] 1720 	subb	a,_blink_counts
      0002E9 E5 23            [12] 1721 	mov	a,(_counts + 1)
      0002EB 95 28            [12] 1722 	subb	a,(_blink_counts + 1)
      0002ED 40 F5            [24] 1723 	jc	00137$
                           000278  1724 	C$Lab2.c$185$1$72 ==.
                                   1725 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:185: LED3 = 1;                                        //turn off left LED
      0002EF D2 A1            [12] 1726 	setb	_LED3
                           00027A  1727 	C$Lab2.c$187$1$72 ==.
                                   1728 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:187: counts = 0;
      0002F1 E4               [12] 1729 	clr	a
      0002F2 F5 22            [12] 1730 	mov	_counts,a
      0002F4 F5 23            [12] 1731 	mov	(_counts + 1),a
                           00027F  1732 	C$Lab2.c$188$1$72 ==.
                                   1733 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:188: LED2 = 0;                                        //turn on bottom LED
      0002F6 C2 B2            [12] 1734 	clr	_LED2
                           000281  1735 	C$Lab2.c$189$1$72 ==.
                                   1736 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:189: while (counts < blink_counts);                    //wait until set time
      0002F8                       1737 00140$:
      0002F8 C3               [12] 1738 	clr	c
      0002F9 E5 22            [12] 1739 	mov	a,_counts
      0002FB 95 27            [12] 1740 	subb	a,_blink_counts
      0002FD E5 23            [12] 1741 	mov	a,(_counts + 1)
      0002FF 95 28            [12] 1742 	subb	a,(_blink_counts + 1)
      000301 40 F5            [24] 1743 	jc	00140$
                           00028C  1744 	C$Lab2.c$190$1$72 ==.
                                   1745 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:190: LED2 = 1;                                        //turn off bottom LED
      000303 D2 B2            [12] 1746 	setb	_LED2
                           00028E  1747 	C$Lab2.c$192$1$72 ==.
                                   1748 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:192: counts = 0;
      000305 E4               [12] 1749 	clr	a
      000306 F5 22            [12] 1750 	mov	_counts,a
      000308 F5 23            [12] 1751 	mov	(_counts + 1),a
                           000293  1752 	C$Lab2.c$193$1$72 ==.
                                   1753 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:193: LED0 = 0;                                        //turn on top LED
      00030A C2 B6            [12] 1754 	clr	_LED0
                           000295  1755 	C$Lab2.c$194$1$72 ==.
                                   1756 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:194: while (counts < blink_counts);                    //wait until set time
      00030C                       1757 00143$:
      00030C C3               [12] 1758 	clr	c
      00030D E5 22            [12] 1759 	mov	a,_counts
      00030F 95 27            [12] 1760 	subb	a,_blink_counts
      000311 E5 23            [12] 1761 	mov	a,(_counts + 1)
      000313 95 28            [12] 1762 	subb	a,(_blink_counts + 1)
      000315 40 F5            [24] 1763 	jc	00143$
                           0002A0  1764 	C$Lab2.c$195$1$72 ==.
                                   1765 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:195: LED0 = 1;                                        //turn off top LED
      000317 D2 B6            [12] 1766 	setb	_LED0
                           0002A2  1767 	C$Lab2.c$198$1$72 ==.
                                   1768 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:198: ad_result = read_AD_input(1);                    //read the A/D value on P1.1, results in between 0 and 255
      000319 75 82 01         [24] 1769 	mov	dpl,#0x01
      00031C 12 0F 37         [24] 1770 	lcall	_read_AD_input
                           0002A8  1771 	C$Lab2.c$199$1$72 ==.
                                   1772 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:199: blink_time = ((ad_result * 3) + 250);             //convert A/D value to seconds
      00031F E5 82            [12] 1773 	mov	a,dpl
      000321 F5 24            [12] 1774 	mov	_ad_result,a
      000323 75 F0 03         [24] 1775 	mov	b,#0x03
      000326 A4               [48] 1776 	mul	ab
      000327 24 FA            [12] 1777 	add	a,#0xfa
      000329 F5 25            [12] 1778 	mov	_blink_time,a
      00032B E4               [12] 1779 	clr	a
      00032C 35 F0            [12] 1780 	addc	a,b
      00032E F5 26            [12] 1781 	mov	(_blink_time + 1),a
                           0002B9  1782 	C$Lab2.c$200$1$72 ==.
                                   1783 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:200: blink_counts = blink_time * .3375;                //convert blink seconds to counts
      000330 85 25 82         [24] 1784 	mov	dpl,_blink_time
      000333 85 26 83         [24] 1785 	mov	dph,(_blink_time + 1)
      000336 12 11 AC         [24] 1786 	lcall	___uint2fs
      000339 AC 82            [24] 1787 	mov	r4,dpl
      00033B AD 83            [24] 1788 	mov	r5,dph
      00033D AE F0            [24] 1789 	mov	r6,b
      00033F FF               [12] 1790 	mov	r7,a
      000340 C0 04            [24] 1791 	push	ar4
      000342 C0 05            [24] 1792 	push	ar5
      000344 C0 06            [24] 1793 	push	ar6
      000346 C0 07            [24] 1794 	push	ar7
      000348 90 CC CD         [24] 1795 	mov	dptr,#0xcccd
      00034B 75 F0 AC         [24] 1796 	mov	b,#0xac
      00034E 74 3E            [12] 1797 	mov	a,#0x3e
      000350 12 0F 94         [24] 1798 	lcall	___fsmul
      000353 AC 82            [24] 1799 	mov	r4,dpl
      000355 AD 83            [24] 1800 	mov	r5,dph
      000357 AE F0            [24] 1801 	mov	r6,b
      000359 FF               [12] 1802 	mov	r7,a
      00035A E5 81            [12] 1803 	mov	a,sp
      00035C 24 FC            [12] 1804 	add	a,#0xfc
      00035E F5 81            [12] 1805 	mov	sp,a
      000360 8C 82            [24] 1806 	mov	dpl,r4
      000362 8D 83            [24] 1807 	mov	dph,r5
      000364 8E F0            [24] 1808 	mov	b,r6
      000366 EF               [12] 1809 	mov	a,r7
      000367 12 11 B8         [24] 1810 	lcall	___fs2uint
      00036A 85 82 27         [24] 1811 	mov	_blink_counts,dpl
      00036D 85 83 28         [24] 1812 	mov	(_blink_counts + 1),dph
                           0002F9  1813 	C$Lab2.c$202$1$72 ==.
                                   1814 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:202: counts = 0;
      000370 E4               [12] 1815 	clr	a
      000371 F5 22            [12] 1816 	mov	_counts,a
      000373 F5 23            [12] 1817 	mov	(_counts + 1),a
                           0002FE  1818 	C$Lab2.c$203$1$72 ==.
                                   1819 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:203: LED3 = 0;                                        //turn on left LED
      000375 C2 A1            [12] 1820 	clr	_LED3
                           000300  1821 	C$Lab2.c$204$1$72 ==.
                                   1822 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:204: while (counts < blink_counts);                    //wait until set time
      000377                       1823 00146$:
      000377 C3               [12] 1824 	clr	c
      000378 E5 22            [12] 1825 	mov	a,_counts
      00037A 95 27            [12] 1826 	subb	a,_blink_counts
      00037C E5 23            [12] 1827 	mov	a,(_counts + 1)
      00037E 95 28            [12] 1828 	subb	a,(_blink_counts + 1)
      000380 40 F5            [24] 1829 	jc	00146$
                           00030B  1830 	C$Lab2.c$205$1$72 ==.
                                   1831 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:205: LED3 = 1;                                        //turn off left LED
      000382 D2 A1            [12] 1832 	setb	_LED3
                           00030D  1833 	C$Lab2.c$207$1$72 ==.
                                   1834 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:207: counts = 0;
      000384 E4               [12] 1835 	clr	a
      000385 F5 22            [12] 1836 	mov	_counts,a
      000387 F5 23            [12] 1837 	mov	(_counts + 1),a
                           000312  1838 	C$Lab2.c$208$1$72 ==.
                                   1839 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:208: LED1 = 0;                                        //turn on right LED
      000389 C2 B5            [12] 1840 	clr	_LED1
                           000314  1841 	C$Lab2.c$209$1$72 ==.
                                   1842 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:209: while (counts < blink_counts);                    //wait until set time
      00038B                       1843 00149$:
      00038B C3               [12] 1844 	clr	c
      00038C E5 22            [12] 1845 	mov	a,_counts
      00038E 95 27            [12] 1846 	subb	a,_blink_counts
      000390 E5 23            [12] 1847 	mov	a,(_counts + 1)
      000392 95 28            [12] 1848 	subb	a,(_blink_counts + 1)
      000394 40 F5            [24] 1849 	jc	00149$
                           00031F  1850 	C$Lab2.c$210$1$72 ==.
                                   1851 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:210: LED1 = 1;                                        //turn off right LED
      000396 D2 B5            [12] 1852 	setb	_LED1
                           000321  1853 	C$Lab2.c$212$1$72 ==.
                                   1854 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:212: counts = 0;
      000398 E4               [12] 1855 	clr	a
      000399 F5 22            [12] 1856 	mov	_counts,a
      00039B F5 23            [12] 1857 	mov	(_counts + 1),a
                           000326  1858 	C$Lab2.c$213$1$72 ==.
                                   1859 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:213: LED3 = 0;                                        //turn on left LED
      00039D C2 A1            [12] 1860 	clr	_LED3
                           000328  1861 	C$Lab2.c$214$1$72 ==.
                                   1862 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:214: while (counts < blink_counts);                    //wait until set time
      00039F                       1863 00152$:
      00039F C3               [12] 1864 	clr	c
      0003A0 E5 22            [12] 1865 	mov	a,_counts
      0003A2 95 27            [12] 1866 	subb	a,_blink_counts
      0003A4 E5 23            [12] 1867 	mov	a,(_counts + 1)
      0003A6 95 28            [12] 1868 	subb	a,(_blink_counts + 1)
      0003A8 40 F5            [24] 1869 	jc	00152$
                           000333  1870 	C$Lab2.c$215$1$72 ==.
                                   1871 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:215: LED3 = 1;                                        //turn off left LED
      0003AA D2 A1            [12] 1872 	setb	_LED3
                           000335  1873 	C$Lab2.c$217$1$72 ==.
                                   1874 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:217: counts = 0;
      0003AC E4               [12] 1875 	clr	a
      0003AD F5 22            [12] 1876 	mov	_counts,a
      0003AF F5 23            [12] 1877 	mov	(_counts + 1),a
                           00033A  1878 	C$Lab2.c$218$1$72 ==.
                                   1879 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:218: LED1 = 0;                                        //turn on right LED
      0003B1 C2 B5            [12] 1880 	clr	_LED1
                           00033C  1881 	C$Lab2.c$219$1$72 ==.
                                   1882 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:219: while (counts < blink_counts);                    //wait until set time
      0003B3                       1883 00155$:
      0003B3 C3               [12] 1884 	clr	c
      0003B4 E5 22            [12] 1885 	mov	a,_counts
      0003B6 95 27            [12] 1886 	subb	a,_blink_counts
      0003B8 E5 23            [12] 1887 	mov	a,(_counts + 1)
      0003BA 95 28            [12] 1888 	subb	a,(_blink_counts + 1)
      0003BC 40 F5            [24] 1889 	jc	00155$
                           000347  1890 	C$Lab2.c$220$1$72 ==.
                                   1891 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:220: LED1 = 1;                                        //turn off right LED
      0003BE D2 B5            [12] 1892 	setb	_LED1
                           000349  1893 	C$Lab2.c$221$1$72 ==.
                           000349  1894 	XG$Mode_1$0$0 ==.
      0003C0 22               [24] 1895 	ret
                                   1896 ;------------------------------------------------------------
                                   1897 ;Allocation info for local variables in function 'Mode_2'
                                   1898 ;------------------------------------------------------------
                           00034A  1899 	G$Mode_2$0$0 ==.
                           00034A  1900 	C$Lab2.c$224$1$72 ==.
                                   1901 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:224: void Mode_2(void)
                                   1902 ;	-----------------------------------------
                                   1903 ;	 function Mode_2
                                   1904 ;	-----------------------------------------
      0003C1                       1905 _Mode_2:
                           00034A  1906 	C$Lab2.c$226$1$74 ==.
                                   1907 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:226: turnOff();
      0003C1 12 0E 8E         [24] 1908 	lcall	_turnOff
                           00034D  1909 	C$Lab2.c$227$1$74 ==.
                                   1910 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:227: Mode2Rounds = 0;        //reset number rounds played
      0003C4 E4               [12] 1911 	clr	a
      0003C5 F5 2D            [12] 1912 	mov	_Mode2Rounds,a
      0003C7 F5 2E            [12] 1913 	mov	(_Mode2Rounds + 1),a
                           000352  1914 	C$Lab2.c$228$1$74 ==.
                                   1915 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:228: player1press = 0;        //reset player scores
      0003C9 F5 29            [12] 1916 	mov	_player1press,a
      0003CB F5 2A            [12] 1917 	mov	(_player1press + 1),a
                           000356  1918 	C$Lab2.c$229$1$74 ==.
                                   1919 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:229: player2press = 0;
      0003CD F5 2B            [12] 1920 	mov	_player2press,a
      0003CF F5 2C            [12] 1921 	mov	(_player2press + 1),a
                           00035A  1922 	C$Lab2.c$230$1$74 ==.
                                   1923 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:230: instant_lose = 0;
      0003D1 F5 2F            [12] 1924 	mov	_instant_lose,a
      0003D3 F5 30            [12] 1925 	mov	(_instant_lose + 1),a
                           00035E  1926 	C$Lab2.c$232$1$74 ==.
                                   1927 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:232: while (Mode2Rounds < 3)
      0003D5                       1928 00121$:
      0003D5 C3               [12] 1929 	clr	c
      0003D6 E5 2D            [12] 1930 	mov	a,_Mode2Rounds
      0003D8 94 03            [12] 1931 	subb	a,#0x03
      0003DA E5 2E            [12] 1932 	mov	a,(_Mode2Rounds + 1)
      0003DC 94 00            [12] 1933 	subb	a,#0x00
      0003DE 40 03            [24] 1934 	jc	00192$
      0003E0 02 04 AE         [24] 1935 	ljmp	00123$
      0003E3                       1936 00192$:
                           00036C  1937 	C$Lab2.c$234$2$75 ==.
                                   1938 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:234: ad_result = read_AD_input(1);            //read the A/D value on P1.1, results in between 0 and 255
      0003E3 75 82 01         [24] 1939 	mov	dpl,#0x01
      0003E6 12 0F 37         [24] 1940 	lcall	_read_AD_input
                           000372  1941 	C$Lab2.c$235$2$75 ==.
                                   1942 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:235: blink_time = ((ad_result * 16) + 1000); //convert A/D value to between 1000 and 5000 ms
      0003E9 E5 82            [12] 1943 	mov	a,dpl
      0003EB F5 24            [12] 1944 	mov	_ad_result,a
      0003ED 75 F0 10         [24] 1945 	mov	b,#0x10
      0003F0 A4               [48] 1946 	mul	ab
      0003F1 24 E8            [12] 1947 	add	a,#0xe8
      0003F3 F5 25            [12] 1948 	mov	_blink_time,a
      0003F5 74 03            [12] 1949 	mov	a,#0x03
      0003F7 35 F0            [12] 1950 	addc	a,b
      0003F9 F5 26            [12] 1951 	mov	(_blink_time + 1),a
                           000384  1952 	C$Lab2.c$236$1$74 ==.
                                   1953 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:236: blink_counts = blink_time * .3375;        //convert ms to overflows
      0003FB 85 25 82         [24] 1954 	mov	dpl,_blink_time
      0003FE 85 26 83         [24] 1955 	mov	dph,(_blink_time + 1)
      000401 12 11 AC         [24] 1956 	lcall	___uint2fs
      000404 AC 82            [24] 1957 	mov	r4,dpl
      000406 AD 83            [24] 1958 	mov	r5,dph
      000408 AE F0            [24] 1959 	mov	r6,b
      00040A FF               [12] 1960 	mov	r7,a
      00040B C0 04            [24] 1961 	push	ar4
      00040D C0 05            [24] 1962 	push	ar5
      00040F C0 06            [24] 1963 	push	ar6
      000411 C0 07            [24] 1964 	push	ar7
      000413 90 CC CD         [24] 1965 	mov	dptr,#0xcccd
      000416 75 F0 AC         [24] 1966 	mov	b,#0xac
      000419 74 3E            [12] 1967 	mov	a,#0x3e
      00041B 12 0F 94         [24] 1968 	lcall	___fsmul
      00041E AC 82            [24] 1969 	mov	r4,dpl
      000420 AD 83            [24] 1970 	mov	r5,dph
      000422 AE F0            [24] 1971 	mov	r6,b
      000424 FF               [12] 1972 	mov	r7,a
      000425 E5 81            [12] 1973 	mov	a,sp
      000427 24 FC            [12] 1974 	add	a,#0xfc
      000429 F5 81            [12] 1975 	mov	sp,a
      00042B 8C 82            [24] 1976 	mov	dpl,r4
      00042D 8D 83            [24] 1977 	mov	dph,r5
      00042F 8E F0            [24] 1978 	mov	b,r6
      000431 EF               [12] 1979 	mov	a,r7
      000432 12 11 B8         [24] 1980 	lcall	___fs2uint
      000435 85 82 27         [24] 1981 	mov	_blink_counts,dpl
      000438 85 83 28         [24] 1982 	mov	(_blink_counts + 1),dph
                           0003C4  1983 	C$Lab2.c$238$2$75 ==.
                                   1984 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:238: counts = 0;                                //reset counter/timer
      00043B E4               [12] 1985 	clr	a
      00043C F5 22            [12] 1986 	mov	_counts,a
      00043E F5 23            [12] 1987 	mov	(_counts + 1),a
                           0003C9  1988 	C$Lab2.c$239$2$75 ==.
                                   1989 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:239: LED3 = 0;                                //turn on left LED
      000440 C2 A1            [12] 1990 	clr	_LED3
                           0003CB  1991 	C$Lab2.c$240$2$75 ==.
                                   1992 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:240: while (counts < blink_counts)            //length of one player turn
      000442                       1993 00108$:
      000442 C3               [12] 1994 	clr	c
      000443 E5 22            [12] 1995 	mov	a,_counts
      000445 95 27            [12] 1996 	subb	a,_blink_counts
      000447 E5 23            [12] 1997 	mov	a,(_counts + 1)
      000449 95 28            [12] 1998 	subb	a,(_blink_counts + 1)
      00044B 50 20            [24] 1999 	jnc	00110$
                           0003D6  2000 	C$Lab2.c$242$3$76 ==.
                                   2001 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:242: if (PB3 == 0)                       //if left PB pushed while left LED is on
      00044D 20 A2 11         [24] 2002 	jb	_PB3,00105$
                           0003D9  2003 	C$Lab2.c$244$4$77 ==.
                                   2004 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:244: debounce();
      000450 12 0E 9B         [24] 2005 	lcall	_debounce
                           0003DC  2006 	C$Lab2.c$245$4$77 ==.
                                   2007 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:245: while (PB3 == 0);
      000453                       2008 00101$:
      000453 30 A2 FD         [24] 2009 	jnb	_PB3,00101$
                           0003DF  2010 	C$Lab2.c$246$4$77 ==.
                                   2011 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:246: debounce();
      000456 12 0E 9B         [24] 2012 	lcall	_debounce
                           0003E2  2013 	C$Lab2.c$247$4$77 ==.
                                   2014 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:247: player1press++;                    //increment player 1 score
      000459 05 29            [12] 2015 	inc	_player1press
      00045B E4               [12] 2016 	clr	a
      00045C B5 29 02         [24] 2017 	cjne	a,_player1press,00196$
      00045F 05 2A            [12] 2018 	inc	(_player1press + 1)
      000461                       2019 00196$:
      000461                       2020 00105$:
                           0003EA  2021 	C$Lab2.c$250$3$76 ==.
                                   2022 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:250: if (PB1 == 0)                        //if player 2 presses during player 1 turn
      000461 20 B0 DE         [24] 2023 	jb	_PB1,00108$
                           0003ED  2024 	C$Lab2.c$252$4$78 ==.
                                   2025 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:252: instant_lose = 2;
      000464 75 2F 02         [24] 2026 	mov	_instant_lose,#0x02
      000467 75 30 00         [24] 2027 	mov	(_instant_lose + 1),#0x00
                           0003F3  2028 	C$Lab2.c$253$4$78 ==.
                                   2029 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:253: goto instantlose2;
      00046A 02 05 41         [24] 2030 	ljmp	00130$
      00046D                       2031 00110$:
                           0003F6  2032 	C$Lab2.c$256$2$75 ==.
                                   2033 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:256: LED3 = 1;
      00046D D2 A1            [12] 2034 	setb	_LED3
                           0003F8  2035 	C$Lab2.c$258$2$75 ==.
                                   2036 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:258: counts = 0;                                //reset counter
      00046F E4               [12] 2037 	clr	a
      000470 F5 22            [12] 2038 	mov	_counts,a
      000472 F5 23            [12] 2039 	mov	(_counts + 1),a
                           0003FD  2040 	C$Lab2.c$259$2$75 ==.
                                   2041 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:259: LED1 = 0;
      000474 C2 B5            [12] 2042 	clr	_LED1
                           0003FF  2043 	C$Lab2.c$260$2$75 ==.
                                   2044 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:260: while (counts < blink_counts)
      000476                       2045 00118$:
      000476 C3               [12] 2046 	clr	c
      000477 E5 22            [12] 2047 	mov	a,_counts
      000479 95 27            [12] 2048 	subb	a,_blink_counts
      00047B E5 23            [12] 2049 	mov	a,(_counts + 1)
      00047D 95 28            [12] 2050 	subb	a,(_blink_counts + 1)
      00047F 50 20            [24] 2051 	jnc	00120$
                           00040A  2052 	C$Lab2.c$262$3$79 ==.
                                   2053 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:262: if (PB1 == 0)
      000481 20 B0 11         [24] 2054 	jb	_PB1,00115$
                           00040D  2055 	C$Lab2.c$264$4$80 ==.
                                   2056 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:264: debounce();
      000484 12 0E 9B         [24] 2057 	lcall	_debounce
                           000410  2058 	C$Lab2.c$265$4$80 ==.
                                   2059 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:265: while (PB1 == 0);
      000487                       2060 00111$:
      000487 30 B0 FD         [24] 2061 	jnb	_PB1,00111$
                           000413  2062 	C$Lab2.c$266$4$80 ==.
                                   2063 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:266: debounce();
      00048A 12 0E 9B         [24] 2064 	lcall	_debounce
                           000416  2065 	C$Lab2.c$267$4$80 ==.
                                   2066 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:267: player2press++;                    //increment player 2 score
      00048D 05 2B            [12] 2067 	inc	_player2press
      00048F E4               [12] 2068 	clr	a
      000490 B5 2B 02         [24] 2069 	cjne	a,_player2press,00201$
      000493 05 2C            [12] 2070 	inc	(_player2press + 1)
      000495                       2071 00201$:
      000495                       2072 00115$:
                           00041E  2073 	C$Lab2.c$270$3$79 ==.
                                   2074 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:270: if (PB3 == 0)
      000495 20 A2 DE         [24] 2075 	jb	_PB3,00118$
                           000421  2076 	C$Lab2.c$272$4$81 ==.
                                   2077 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:272: instant_lose = 1;
      000498 75 2F 01         [24] 2078 	mov	_instant_lose,#0x01
      00049B 75 30 00         [24] 2079 	mov	(_instant_lose + 1),#0x00
                           000427  2080 	C$Lab2.c$273$4$81 ==.
                                   2081 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:273: goto instantlose1;
      00049E 02 05 69         [24] 2082 	ljmp	00133$
      0004A1                       2083 00120$:
                           00042A  2084 	C$Lab2.c$276$2$75 ==.
                                   2085 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:276: LED1 = 1;
      0004A1 D2 B5            [12] 2086 	setb	_LED1
                           00042C  2087 	C$Lab2.c$278$2$75 ==.
                                   2088 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:278: Mode2Rounds++;
      0004A3 05 2D            [12] 2089 	inc	_Mode2Rounds
      0004A5 E4               [12] 2090 	clr	a
      0004A6 B5 2D 02         [24] 2091 	cjne	a,_Mode2Rounds,00203$
      0004A9 05 2E            [12] 2092 	inc	(_Mode2Rounds + 1)
      0004AB                       2093 00203$:
      0004AB 02 03 D5         [24] 2094 	ljmp	00121$
      0004AE                       2095 00123$:
                           000437  2096 	C$Lab2.c$281$1$74 ==.
                                   2097 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:281: printf("Player 1 presses: %d \r\n", player1press);
      0004AE C0 29            [24] 2098 	push	_player1press
      0004B0 C0 2A            [24] 2099 	push	(_player1press + 1)
      0004B2 74 30            [12] 2100 	mov	a,#___str_0
      0004B4 C0 E0            [24] 2101 	push	acc
      0004B6 74 19            [12] 2102 	mov	a,#(___str_0 >> 8)
      0004B8 C0 E0            [24] 2103 	push	acc
      0004BA 74 80            [12] 2104 	mov	a,#0x80
      0004BC C0 E0            [24] 2105 	push	acc
      0004BE 12 12 36         [24] 2106 	lcall	_printf
      0004C1 E5 81            [12] 2107 	mov	a,sp
      0004C3 24 FB            [12] 2108 	add	a,#0xfb
      0004C5 F5 81            [12] 2109 	mov	sp,a
                           000450  2110 	C$Lab2.c$282$1$74 ==.
                                   2111 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:282: printf("Player 2 presses: %d \r\n", player2press);
      0004C7 C0 2B            [24] 2112 	push	_player2press
      0004C9 C0 2C            [24] 2113 	push	(_player2press + 1)
      0004CB 74 48            [12] 2114 	mov	a,#___str_1
      0004CD C0 E0            [24] 2115 	push	acc
      0004CF 74 19            [12] 2116 	mov	a,#(___str_1 >> 8)
      0004D1 C0 E0            [24] 2117 	push	acc
      0004D3 74 80            [12] 2118 	mov	a,#0x80
      0004D5 C0 E0            [24] 2119 	push	acc
      0004D7 12 12 36         [24] 2120 	lcall	_printf
      0004DA E5 81            [12] 2121 	mov	a,sp
      0004DC 24 FB            [12] 2122 	add	a,#0xfb
      0004DE F5 81            [12] 2123 	mov	sp,a
                           000469  2124 	C$Lab2.c$284$1$74 ==.
                                   2125 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:284: if (player1press > player2press)
      0004E0 C3               [12] 2126 	clr	c
      0004E1 E5 2B            [12] 2127 	mov	a,_player2press
      0004E3 95 29            [12] 2128 	subb	a,_player1press
      0004E5 E5 2C            [12] 2129 	mov	a,(_player2press + 1)
      0004E7 95 2A            [12] 2130 	subb	a,(_player1press + 1)
      0004E9 50 1B            [24] 2131 	jnc	00128$
                           000474  2132 	C$Lab2.c$286$2$82 ==.
                                   2133 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:286: BILED1 = 0;        //turn BILED green
      0004EB C2 B3            [12] 2134 	clr	_BILED1
                           000476  2135 	C$Lab2.c$287$2$82 ==.
                                   2136 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:287: BILED2 = 1;
      0004ED D2 B4            [12] 2137 	setb	_BILED2
                           000478  2138 	C$Lab2.c$288$2$82 ==.
                                   2139 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:288: printf("Player 1 wins! \r\n");
      0004EF 74 60            [12] 2140 	mov	a,#___str_2
      0004F1 C0 E0            [24] 2141 	push	acc
      0004F3 74 19            [12] 2142 	mov	a,#(___str_2 >> 8)
      0004F5 C0 E0            [24] 2143 	push	acc
      0004F7 74 80            [12] 2144 	mov	a,#0x80
      0004F9 C0 E0            [24] 2145 	push	acc
      0004FB 12 12 36         [24] 2146 	lcall	_printf
      0004FE 15 81            [12] 2147 	dec	sp
      000500 15 81            [12] 2148 	dec	sp
      000502 15 81            [12] 2149 	dec	sp
      000504 80 3B            [24] 2150 	sjmp	00130$
      000506                       2151 00128$:
                           00048F  2152 	C$Lab2.c$290$1$74 ==.
                                   2153 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:290: else if (player2press > player1press)
      000506 C3               [12] 2154 	clr	c
      000507 E5 29            [12] 2155 	mov	a,_player1press
      000509 95 2B            [12] 2156 	subb	a,_player2press
      00050B E5 2A            [12] 2157 	mov	a,(_player1press + 1)
      00050D 95 2C            [12] 2158 	subb	a,(_player2press + 1)
      00050F 50 1B            [24] 2159 	jnc	00125$
                           00049A  2160 	C$Lab2.c$292$2$83 ==.
                                   2161 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:292: BILED1 = 1;        //turn BILED red
      000511 D2 B3            [12] 2162 	setb	_BILED1
                           00049C  2163 	C$Lab2.c$293$2$83 ==.
                                   2164 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:293: BILED2 = 0;
      000513 C2 B4            [12] 2165 	clr	_BILED2
                           00049E  2166 	C$Lab2.c$294$2$83 ==.
                                   2167 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:294: printf("Player 2 wins! \r\n");
      000515 74 72            [12] 2168 	mov	a,#___str_3
      000517 C0 E0            [24] 2169 	push	acc
      000519 74 19            [12] 2170 	mov	a,#(___str_3 >> 8)
      00051B C0 E0            [24] 2171 	push	acc
      00051D 74 80            [12] 2172 	mov	a,#0x80
      00051F C0 E0            [24] 2173 	push	acc
      000521 12 12 36         [24] 2174 	lcall	_printf
      000524 15 81            [12] 2175 	dec	sp
      000526 15 81            [12] 2176 	dec	sp
      000528 15 81            [12] 2177 	dec	sp
      00052A 80 15            [24] 2178 	sjmp	00130$
      00052C                       2179 00125$:
                           0004B5  2180 	C$Lab2.c$298$2$84 ==.
                                   2181 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:298: printf("Tie! \r\n");
      00052C 74 84            [12] 2182 	mov	a,#___str_4
      00052E C0 E0            [24] 2183 	push	acc
      000530 74 19            [12] 2184 	mov	a,#(___str_4 >> 8)
      000532 C0 E0            [24] 2185 	push	acc
      000534 74 80            [12] 2186 	mov	a,#0x80
      000536 C0 E0            [24] 2187 	push	acc
      000538 12 12 36         [24] 2188 	lcall	_printf
      00053B 15 81            [12] 2189 	dec	sp
      00053D 15 81            [12] 2190 	dec	sp
      00053F 15 81            [12] 2191 	dec	sp
                           0004CA  2192 	C$Lab2.c$301$1$74 ==.
                                   2193 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:301: instantlose2:
      000541                       2194 00130$:
                           0004CA  2195 	C$Lab2.c$302$1$74 ==.
                                   2196 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:302: if (instant_lose == 2)
      000541 74 02            [12] 2197 	mov	a,#0x02
      000543 B5 2F 06         [24] 2198 	cjne	a,_instant_lose,00206$
      000546 E4               [12] 2199 	clr	a
      000547 B5 30 02         [24] 2200 	cjne	a,(_instant_lose + 1),00206$
      00054A 80 02            [24] 2201 	sjmp	00207$
      00054C                       2202 00206$:
      00054C 80 41            [24] 2203 	sjmp	00136$
      00054E                       2204 00207$:
                           0004D7  2205 	C$Lab2.c$304$2$85 ==.
                                   2206 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:304: printf("Player 1 wins because Player 2 went during the wrong turn. \r\n");
      00054E 74 8C            [12] 2207 	mov	a,#___str_5
      000550 C0 E0            [24] 2208 	push	acc
      000552 74 19            [12] 2209 	mov	a,#(___str_5 >> 8)
      000554 C0 E0            [24] 2210 	push	acc
      000556 74 80            [12] 2211 	mov	a,#0x80
      000558 C0 E0            [24] 2212 	push	acc
      00055A 12 12 36         [24] 2213 	lcall	_printf
      00055D 15 81            [12] 2214 	dec	sp
      00055F 15 81            [12] 2215 	dec	sp
      000561 15 81            [12] 2216 	dec	sp
                           0004EC  2217 	C$Lab2.c$305$2$85 ==.
                                   2218 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:305: BILED1 = 0;        //turn BILED green
      000563 C2 B3            [12] 2219 	clr	_BILED1
                           0004EE  2220 	C$Lab2.c$306$2$85 ==.
                                   2221 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:306: BILED2 = 1;
      000565 D2 B4            [12] 2222 	setb	_BILED2
                           0004F0  2223 	C$Lab2.c$308$1$74 ==.
                                   2224 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:308: return;
                           0004F0  2225 	C$Lab2.c$310$1$74 ==.
                                   2226 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:310: instantlose1:
      000567 80 26            [24] 2227 	sjmp	00136$
      000569                       2228 00133$:
                           0004F2  2229 	C$Lab2.c$311$1$74 ==.
                                   2230 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:311: if (instant_lose == 1)
      000569 74 01            [12] 2231 	mov	a,#0x01
      00056B B5 2F 06         [24] 2232 	cjne	a,_instant_lose,00208$
      00056E 14               [12] 2233 	dec	a
      00056F B5 30 02         [24] 2234 	cjne	a,(_instant_lose + 1),00208$
      000572 80 02            [24] 2235 	sjmp	00209$
      000574                       2236 00208$:
      000574 80 19            [24] 2237 	sjmp	00136$
      000576                       2238 00209$:
                           0004FF  2239 	C$Lab2.c$313$2$86 ==.
                                   2240 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:313: printf("Player 2 wins because Player 1 went during the wrong turn. \r\n");
      000576 74 CA            [12] 2241 	mov	a,#___str_6
      000578 C0 E0            [24] 2242 	push	acc
      00057A 74 19            [12] 2243 	mov	a,#(___str_6 >> 8)
      00057C C0 E0            [24] 2244 	push	acc
      00057E 74 80            [12] 2245 	mov	a,#0x80
      000580 C0 E0            [24] 2246 	push	acc
      000582 12 12 36         [24] 2247 	lcall	_printf
      000585 15 81            [12] 2248 	dec	sp
      000587 15 81            [12] 2249 	dec	sp
      000589 15 81            [12] 2250 	dec	sp
                           000514  2251 	C$Lab2.c$314$2$86 ==.
                                   2252 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:314: BILED1 = 1;        //turn BILED red
      00058B D2 B3            [12] 2253 	setb	_BILED1
                           000516  2254 	C$Lab2.c$315$2$86 ==.
                                   2255 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:315: BILED2 = 0;
      00058D C2 B4            [12] 2256 	clr	_BILED2
      00058F                       2257 00136$:
                           000518  2258 	C$Lab2.c$317$1$74 ==.
                           000518  2259 	XG$Mode_2$0$0 ==.
      00058F 22               [24] 2260 	ret
                                   2261 ;------------------------------------------------------------
                                   2262 ;Allocation info for local variables in function 'Mode_3'
                                   2263 ;------------------------------------------------------------
                           000519  2264 	G$Mode_3$0$0 ==.
                           000519  2265 	C$Lab2.c$322$1$74 ==.
                                   2266 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:322: void Mode_3(void)
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function Mode_3
                                   2269 ;	-----------------------------------------
      000590                       2270 _Mode_3:
                           000519  2271 	C$Lab2.c$324$1$88 ==.
                                   2272 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:324: turnOff();
      000590 12 0E 8E         [24] 2273 	lcall	_turnOff
                           00051C  2274 	C$Lab2.c$325$1$88 ==.
                                   2275 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:325: Mode3Rounds = 0;
      000593 E4               [12] 2276 	clr	a
      000594 F5 39            [12] 2277 	mov	_Mode3Rounds,a
      000596 F5 3A            [12] 2278 	mov	(_Mode3Rounds + 1),a
                           000521  2279 	C$Lab2.c$326$1$88 ==.
                                   2280 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:326: ad_result = read_AD_input(1);            //read the A/D value on P1.1, results in between 0 and 255
      000598 75 82 01         [24] 2281 	mov	dpl,#0x01
      00059B 12 0F 37         [24] 2282 	lcall	_read_AD_input
                           000527  2283 	C$Lab2.c$327$1$88 ==.
                                   2284 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:327: blink_time = ((ad_result * 3) + 250);     //convert A/D value to between 250 and 1000 ms
      00059E E5 82            [12] 2285 	mov	a,dpl
      0005A0 F5 24            [12] 2286 	mov	_ad_result,a
      0005A2 75 F0 03         [24] 2287 	mov	b,#0x03
      0005A5 A4               [48] 2288 	mul	ab
      0005A6 24 FA            [12] 2289 	add	a,#0xfa
      0005A8 F5 25            [12] 2290 	mov	_blink_time,a
      0005AA E4               [12] 2291 	clr	a
      0005AB 35 F0            [12] 2292 	addc	a,b
      0005AD F5 26            [12] 2293 	mov	(_blink_time + 1),a
                           000538  2294 	C$Lab2.c$328$1$88 ==.
                                   2295 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:328: blink_counts = blink_time * .3375;        //convert ms to overflows
      0005AF 85 25 82         [24] 2296 	mov	dpl,_blink_time
      0005B2 85 26 83         [24] 2297 	mov	dph,(_blink_time + 1)
      0005B5 12 11 AC         [24] 2298 	lcall	___uint2fs
      0005B8 AC 82            [24] 2299 	mov	r4,dpl
      0005BA AD 83            [24] 2300 	mov	r5,dph
      0005BC AE F0            [24] 2301 	mov	r6,b
      0005BE FF               [12] 2302 	mov	r7,a
      0005BF C0 04            [24] 2303 	push	ar4
      0005C1 C0 05            [24] 2304 	push	ar5
      0005C3 C0 06            [24] 2305 	push	ar6
      0005C5 C0 07            [24] 2306 	push	ar7
      0005C7 90 CC CD         [24] 2307 	mov	dptr,#0xcccd
      0005CA 75 F0 AC         [24] 2308 	mov	b,#0xac
      0005CD 74 3E            [12] 2309 	mov	a,#0x3e
      0005CF 12 0F 94         [24] 2310 	lcall	___fsmul
      0005D2 AC 82            [24] 2311 	mov	r4,dpl
      0005D4 AD 83            [24] 2312 	mov	r5,dph
      0005D6 AE F0            [24] 2313 	mov	r6,b
      0005D8 FF               [12] 2314 	mov	r7,a
      0005D9 E5 81            [12] 2315 	mov	a,sp
      0005DB 24 FC            [12] 2316 	add	a,#0xfc
      0005DD F5 81            [12] 2317 	mov	sp,a
      0005DF 8C 82            [24] 2318 	mov	dpl,r4
      0005E1 8D 83            [24] 2319 	mov	dph,r5
      0005E3 8E F0            [24] 2320 	mov	b,r6
      0005E5 EF               [12] 2321 	mov	a,r7
      0005E6 12 11 B8         [24] 2322 	lcall	___fs2uint
      0005E9 85 82 27         [24] 2323 	mov	_blink_counts,dpl
      0005EC 85 83 28         [24] 2324 	mov	(_blink_counts + 1),dph
                           000578  2325 	C$Lab2.c$329$1$88 ==.
                                   2326 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:329: player1turn = 1;
      0005EF 75 33 01         [24] 2327 	mov	_player1turn,#0x01
                           00057B  2328 	C$Lab2.c$330$1$88 ==.
                                   2329 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:330: player1blink = 0;
      0005F2 E4               [12] 2330 	clr	a
      0005F3 F5 34            [12] 2331 	mov	(_player1turn + 1),a
      0005F5 F5 35            [12] 2332 	mov	_player1blink,a
      0005F7 F5 36            [12] 2333 	mov	(_player1blink + 1),a
                           000582  2334 	C$Lab2.c$331$1$88 ==.
                                   2335 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:331: player2blink = 0;
      0005F9 F5 37            [12] 2336 	mov	_player2blink,a
      0005FB F5 38            [12] 2337 	mov	(_player2blink + 1),a
                           000586  2338 	C$Lab2.c$332$1$88 ==.
                                   2339 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:332: Mode3Rounds = 0;
      0005FD F5 39            [12] 2340 	mov	_Mode3Rounds,a
      0005FF F5 3A            [12] 2341 	mov	(_Mode3Rounds + 1),a
                           00058A  2342 	C$Lab2.c$334$1$88 ==.
                                   2343 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:334: Mode_3_Run();
      000601 12 06 AB         [24] 2344 	lcall	_Mode_3_Run
                           00058D  2345 	C$Lab2.c$336$1$88 ==.
                                   2346 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:336: printf("Player 1 misses: %d \r\n", player1blink);
      000604 C0 35            [24] 2347 	push	_player1blink
      000606 C0 36            [24] 2348 	push	(_player1blink + 1)
      000608 74 08            [12] 2349 	mov	a,#___str_7
      00060A C0 E0            [24] 2350 	push	acc
      00060C 74 1A            [12] 2351 	mov	a,#(___str_7 >> 8)
      00060E C0 E0            [24] 2352 	push	acc
      000610 74 80            [12] 2353 	mov	a,#0x80
      000612 C0 E0            [24] 2354 	push	acc
      000614 12 12 36         [24] 2355 	lcall	_printf
      000617 E5 81            [12] 2356 	mov	a,sp
      000619 24 FB            [12] 2357 	add	a,#0xfb
      00061B F5 81            [12] 2358 	mov	sp,a
                           0005A6  2359 	C$Lab2.c$337$1$88 ==.
                                   2360 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:337: printf("Player 2 misses: %d \r\n", player2blink);
      00061D C0 37            [24] 2361 	push	_player2blink
      00061F C0 38            [24] 2362 	push	(_player2blink + 1)
      000621 74 1F            [12] 2363 	mov	a,#___str_8
      000623 C0 E0            [24] 2364 	push	acc
      000625 74 1A            [12] 2365 	mov	a,#(___str_8 >> 8)
      000627 C0 E0            [24] 2366 	push	acc
      000629 74 80            [12] 2367 	mov	a,#0x80
      00062B C0 E0            [24] 2368 	push	acc
      00062D 12 12 36         [24] 2369 	lcall	_printf
      000630 E5 81            [12] 2370 	mov	a,sp
      000632 24 FB            [12] 2371 	add	a,#0xfb
      000634 F5 81            [12] 2372 	mov	sp,a
                           0005BF  2373 	C$Lab2.c$339$1$88 ==.
                                   2374 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:339: if (player1blink < player2blink)
      000636 C3               [12] 2375 	clr	c
      000637 E5 35            [12] 2376 	mov	a,_player1blink
      000639 95 37            [12] 2377 	subb	a,_player2blink
      00063B E5 36            [12] 2378 	mov	a,(_player1blink + 1)
      00063D 95 38            [12] 2379 	subb	a,(_player2blink + 1)
      00063F 50 1B            [24] 2380 	jnc	00105$
                           0005CA  2381 	C$Lab2.c$341$2$89 ==.
                                   2382 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:341: BILED1 = 0;
      000641 C2 B3            [12] 2383 	clr	_BILED1
                           0005CC  2384 	C$Lab2.c$342$2$89 ==.
                                   2385 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:342: BILED2 = 1;
      000643 D2 B4            [12] 2386 	setb	_BILED2
                           0005CE  2387 	C$Lab2.c$343$2$89 ==.
                                   2388 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:343: printf("Player 1 wins! \r\n");
      000645 74 60            [12] 2389 	mov	a,#___str_2
      000647 C0 E0            [24] 2390 	push	acc
      000649 74 19            [12] 2391 	mov	a,#(___str_2 >> 8)
      00064B C0 E0            [24] 2392 	push	acc
      00064D 74 80            [12] 2393 	mov	a,#0x80
      00064F C0 E0            [24] 2394 	push	acc
      000651 12 12 36         [24] 2395 	lcall	_printf
      000654 15 81            [12] 2396 	dec	sp
      000656 15 81            [12] 2397 	dec	sp
      000658 15 81            [12] 2398 	dec	sp
      00065A 80 3B            [24] 2399 	sjmp	00107$
      00065C                       2400 00105$:
                           0005E5  2401 	C$Lab2.c$345$1$88 ==.
                                   2402 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:345: else if (player1blink > player2blink)
      00065C C3               [12] 2403 	clr	c
      00065D E5 37            [12] 2404 	mov	a,_player2blink
      00065F 95 35            [12] 2405 	subb	a,_player1blink
      000661 E5 38            [12] 2406 	mov	a,(_player2blink + 1)
      000663 95 36            [12] 2407 	subb	a,(_player1blink + 1)
      000665 50 1B            [24] 2408 	jnc	00102$
                           0005F0  2409 	C$Lab2.c$347$2$90 ==.
                                   2410 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:347: BILED1 = 1;
      000667 D2 B3            [12] 2411 	setb	_BILED1
                           0005F2  2412 	C$Lab2.c$348$2$90 ==.
                                   2413 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:348: BILED2 = 0;
      000669 C2 B4            [12] 2414 	clr	_BILED2
                           0005F4  2415 	C$Lab2.c$349$2$90 ==.
                                   2416 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:349: printf("Player 2 wins! \r\n");
      00066B 74 72            [12] 2417 	mov	a,#___str_3
      00066D C0 E0            [24] 2418 	push	acc
      00066F 74 19            [12] 2419 	mov	a,#(___str_3 >> 8)
      000671 C0 E0            [24] 2420 	push	acc
      000673 74 80            [12] 2421 	mov	a,#0x80
      000675 C0 E0            [24] 2422 	push	acc
      000677 12 12 36         [24] 2423 	lcall	_printf
      00067A 15 81            [12] 2424 	dec	sp
      00067C 15 81            [12] 2425 	dec	sp
      00067E 15 81            [12] 2426 	dec	sp
      000680 80 15            [24] 2427 	sjmp	00107$
      000682                       2428 00102$:
                           00060B  2429 	C$Lab2.c$353$2$91 ==.
                                   2430 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:353: printf("Tie! \r\n");
      000682 74 84            [12] 2431 	mov	a,#___str_4
      000684 C0 E0            [24] 2432 	push	acc
      000686 74 19            [12] 2433 	mov	a,#(___str_4 >> 8)
      000688 C0 E0            [24] 2434 	push	acc
      00068A 74 80            [12] 2435 	mov	a,#0x80
      00068C C0 E0            [24] 2436 	push	acc
      00068E 12 12 36         [24] 2437 	lcall	_printf
      000691 15 81            [12] 2438 	dec	sp
      000693 15 81            [12] 2439 	dec	sp
      000695 15 81            [12] 2440 	dec	sp
      000697                       2441 00107$:
                           000620  2442 	C$Lab2.c$355$1$88 ==.
                           000620  2443 	XG$Mode_3$0$0 ==.
      000697 22               [24] 2444 	ret
                                   2445 ;------------------------------------------------------------
                                   2446 ;Allocation info for local variables in function 'randLED'
                                   2447 ;------------------------------------------------------------
                           000621  2448 	G$randLED$0$0 ==.
                           000621  2449 	C$Lab2.c$358$1$88 ==.
                                   2450 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:358: void randLED(void)
                                   2451 ;	-----------------------------------------
                                   2452 ;	 function randLED
                                   2453 ;	-----------------------------------------
      000698                       2454 _randLED:
                           000621  2455 	C$Lab2.c$360$1$93 ==.
                                   2456 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:360: startLED = (rand() % 4);
      000698 12 0F 49         [24] 2457 	lcall	_rand
      00069B 75 0E 04         [24] 2458 	mov	__modsint_PARM_2,#0x04
      00069E 75 0F 00         [24] 2459 	mov	(__modsint_PARM_2 + 1),#0x00
      0006A1 12 18 67         [24] 2460 	lcall	__modsint
      0006A4 85 82 31         [24] 2461 	mov	_startLED,dpl
      0006A7 85 83 32         [24] 2462 	mov	(_startLED + 1),dph
                           000633  2463 	C$Lab2.c$361$1$93 ==.
                           000633  2464 	XG$randLED$0$0 ==.
      0006AA 22               [24] 2465 	ret
                                   2466 ;------------------------------------------------------------
                                   2467 ;Allocation info for local variables in function 'Mode_3_Run'
                                   2468 ;------------------------------------------------------------
                           000634  2469 	G$Mode_3_Run$0$0 ==.
                           000634  2470 	C$Lab2.c$364$1$93 ==.
                                   2471 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:364: void Mode_3_Run(void)
                                   2472 ;	-----------------------------------------
                                   2473 ;	 function Mode_3_Run
                                   2474 ;	-----------------------------------------
      0006AB                       2475 _Mode_3_Run:
                           000634  2476 	C$Lab2.c$366$1$95 ==.
                                   2477 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:366: playerturn:
      0006AB                       2478 00101$:
                           000634  2479 	C$Lab2.c$367$1$95 ==.
                                   2480 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:367: if (player1turn == 1)                    //clockwise **********
      0006AB 74 01            [12] 2481 	mov	a,#0x01
      0006AD B5 33 06         [24] 2482 	cjne	a,_player1turn,01073$
      0006B0 14               [12] 2483 	dec	a
      0006B1 B5 34 02         [24] 2484 	cjne	a,(_player1turn + 1),01073$
      0006B4 80 03            [24] 2485 	sjmp	01074$
      0006B6                       2486 01073$:
      0006B6 02 0A 72         [24] 2487 	ljmp	00420$
      0006B9                       2488 01074$:
                           000642  2489 	C$Lab2.c$369$2$96 ==.
                                   2490 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:369: randLED();
      0006B9 12 06 98         [24] 2491 	lcall	_randLED
                           000645  2492 	C$Lab2.c$371$2$96 ==.
                                   2493 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:371: while (startLED == 0 && Mode3Rounds < 5)
      0006BC                       2494 00139$:
      0006BC E5 31            [12] 2495 	mov	a,_startLED
      0006BE 45 32            [12] 2496 	orl	a,(_startLED + 1)
      0006C0 60 03            [24] 2497 	jz	01075$
      0006C2 02 07 A5         [24] 2498 	ljmp	00179$
      0006C5                       2499 01075$:
      0006C5 C3               [12] 2500 	clr	c
      0006C6 E5 39            [12] 2501 	mov	a,_Mode3Rounds
      0006C8 94 05            [12] 2502 	subb	a,#0x05
      0006CA E5 3A            [12] 2503 	mov	a,(_Mode3Rounds + 1)
      0006CC 94 00            [12] 2504 	subb	a,#0x00
      0006CE 40 03            [24] 2505 	jc	01076$
      0006D0 02 07 A5         [24] 2506 	ljmp	00179$
      0006D3                       2507 01076$:
                           00065C  2508 	C$Lab2.c$373$3$97 ==.
                                   2509 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:373: counts = 0;
      0006D3 E4               [12] 2510 	clr	a
      0006D4 F5 22            [12] 2511 	mov	_counts,a
      0006D6 F5 23            [12] 2512 	mov	(_counts + 1),a
                           000661  2513 	C$Lab2.c$374$3$97 ==.
                                   2514 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:374: turnOff();
      0006D8 12 0E 8E         [24] 2515 	lcall	_turnOff
                           000664  2516 	C$Lab2.c$375$3$97 ==.
                                   2517 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:375: LED0 = 0;                                        //turn on top LED
      0006DB C2 B6            [12] 2518 	clr	_LED0
                           000666  2519 	C$Lab2.c$376$3$97 ==.
                                   2520 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:376: while (counts < blink_counts);                    //wait until set time
      0006DD                       2521 00102$:
      0006DD C3               [12] 2522 	clr	c
      0006DE E5 22            [12] 2523 	mov	a,_counts
      0006E0 95 27            [12] 2524 	subb	a,_blink_counts
      0006E2 E5 23            [12] 2525 	mov	a,(_counts + 1)
      0006E4 95 28            [12] 2526 	subb	a,(_blink_counts + 1)
      0006E6 40 F5            [24] 2527 	jc	00102$
                           000671  2528 	C$Lab2.c$377$3$97 ==.
                                   2529 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:377: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      0006E8 20 B1 13         [24] 2530 	jb	_PB0,00106$
      0006EB 30 B0 10         [24] 2531 	jnb	_PB1,00106$
      0006EE 30 A3 0D         [24] 2532 	jnb	_PB2,00106$
      0006F1 30 A2 0A         [24] 2533 	jnb	_PB3,00106$
                           00067D  2534 	C$Lab2.c$379$4$98 ==.
                                   2535 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:379: debounce();
      0006F4 12 0E 9B         [24] 2536 	lcall	_debounce
                           000680  2537 	C$Lab2.c$380$4$98 ==.
                                   2538 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:380: player1turn = 0;
      0006F7 E4               [12] 2539 	clr	a
      0006F8 F5 33            [12] 2540 	mov	_player1turn,a
      0006FA F5 34            [12] 2541 	mov	(_player1turn + 1),a
                           000685  2542 	C$Lab2.c$381$4$98 ==.
                                   2543 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:381: goto playerturn;
      0006FC 80 AD            [24] 2544 	sjmp	00101$
      0006FE                       2545 00106$:
                           000687  2546 	C$Lab2.c$385$4$99 ==.
                                   2547 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:385: player1blink++;
      0006FE 05 35            [12] 2548 	inc	_player1blink
      000700 E4               [12] 2549 	clr	a
      000701 B5 35 02         [24] 2550 	cjne	a,_player1blink,01082$
      000704 05 36            [12] 2551 	inc	(_player1blink + 1)
      000706                       2552 01082$:
                           00068F  2553 	C$Lab2.c$388$3$97 ==.
                                   2554 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:388: counts = 0;
      000706 E4               [12] 2555 	clr	a
      000707 F5 22            [12] 2556 	mov	_counts,a
      000709 F5 23            [12] 2557 	mov	(_counts + 1),a
                           000694  2558 	C$Lab2.c$389$3$97 ==.
                                   2559 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:389: turnOff();
      00070B 12 0E 8E         [24] 2560 	lcall	_turnOff
                           000697  2561 	C$Lab2.c$390$3$97 ==.
                                   2562 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:390: LED1 = 0;                                        //turn on right LED
      00070E C2 B5            [12] 2563 	clr	_LED1
                           000699  2564 	C$Lab2.c$391$3$97 ==.
                                   2565 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:391: while (counts < blink_counts);                    //wait until set time
      000710                       2566 00111$:
      000710 C3               [12] 2567 	clr	c
      000711 E5 22            [12] 2568 	mov	a,_counts
      000713 95 27            [12] 2569 	subb	a,_blink_counts
      000715 E5 23            [12] 2570 	mov	a,(_counts + 1)
      000717 95 28            [12] 2571 	subb	a,(_blink_counts + 1)
      000719 40 F5            [24] 2572 	jc	00111$
                           0006A4  2573 	C$Lab2.c$392$3$97 ==.
                                   2574 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:392: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      00071B 30 B1 14         [24] 2575 	jnb	_PB0,00115$
      00071E 20 B0 11         [24] 2576 	jb	_PB1,00115$
      000721 30 A3 0E         [24] 2577 	jnb	_PB2,00115$
      000724 30 A2 0B         [24] 2578 	jnb	_PB3,00115$
                           0006B0  2579 	C$Lab2.c$394$4$100 ==.
                                   2580 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:394: debounce();
      000727 12 0E 9B         [24] 2581 	lcall	_debounce
                           0006B3  2582 	C$Lab2.c$395$4$100 ==.
                                   2583 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:395: player1turn = 0;
      00072A E4               [12] 2584 	clr	a
      00072B F5 33            [12] 2585 	mov	_player1turn,a
      00072D F5 34            [12] 2586 	mov	(_player1turn + 1),a
                           0006B8  2587 	C$Lab2.c$396$4$100 ==.
                                   2588 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:396: goto playerturn;
      00072F 02 06 AB         [24] 2589 	ljmp	00101$
      000732                       2590 00115$:
                           0006BB  2591 	C$Lab2.c$400$4$101 ==.
                                   2592 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:400: player1blink++;
      000732 05 35            [12] 2593 	inc	_player1blink
      000734 E4               [12] 2594 	clr	a
      000735 B5 35 02         [24] 2595 	cjne	a,_player1blink,01088$
      000738 05 36            [12] 2596 	inc	(_player1blink + 1)
      00073A                       2597 01088$:
                           0006C3  2598 	C$Lab2.c$403$3$97 ==.
                                   2599 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:403: counts = 0;
      00073A E4               [12] 2600 	clr	a
      00073B F5 22            [12] 2601 	mov	_counts,a
      00073D F5 23            [12] 2602 	mov	(_counts + 1),a
                           0006C8  2603 	C$Lab2.c$404$3$97 ==.
                                   2604 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:404: turnOff();
      00073F 12 0E 8E         [24] 2605 	lcall	_turnOff
                           0006CB  2606 	C$Lab2.c$405$3$97 ==.
                                   2607 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:405: LED2 = 0;                                        //turn on bottom LED
      000742 C2 B2            [12] 2608 	clr	_LED2
                           0006CD  2609 	C$Lab2.c$406$3$97 ==.
                                   2610 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:406: while (counts < blink_counts);                    //wait until set time
      000744                       2611 00120$:
      000744 C3               [12] 2612 	clr	c
      000745 E5 22            [12] 2613 	mov	a,_counts
      000747 95 27            [12] 2614 	subb	a,_blink_counts
      000749 E5 23            [12] 2615 	mov	a,(_counts + 1)
      00074B 95 28            [12] 2616 	subb	a,(_blink_counts + 1)
      00074D 40 F5            [24] 2617 	jc	00120$
                           0006D8  2618 	C$Lab2.c$407$3$97 ==.
                                   2619 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:407: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      00074F 30 B1 14         [24] 2620 	jnb	_PB0,00124$
      000752 30 B0 11         [24] 2621 	jnb	_PB1,00124$
      000755 20 A3 0E         [24] 2622 	jb	_PB2,00124$
      000758 30 A2 0B         [24] 2623 	jnb	_PB3,00124$
                           0006E4  2624 	C$Lab2.c$409$4$102 ==.
                                   2625 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:409: debounce();
      00075B 12 0E 9B         [24] 2626 	lcall	_debounce
                           0006E7  2627 	C$Lab2.c$410$4$102 ==.
                                   2628 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:410: player1turn = 0;
      00075E E4               [12] 2629 	clr	a
      00075F F5 33            [12] 2630 	mov	_player1turn,a
      000761 F5 34            [12] 2631 	mov	(_player1turn + 1),a
                           0006EC  2632 	C$Lab2.c$411$4$102 ==.
                                   2633 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:411: goto playerturn;
      000763 02 06 AB         [24] 2634 	ljmp	00101$
      000766                       2635 00124$:
                           0006EF  2636 	C$Lab2.c$415$4$103 ==.
                                   2637 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:415: player1blink++;
      000766 05 35            [12] 2638 	inc	_player1blink
      000768 E4               [12] 2639 	clr	a
      000769 B5 35 02         [24] 2640 	cjne	a,_player1blink,01094$
      00076C 05 36            [12] 2641 	inc	(_player1blink + 1)
      00076E                       2642 01094$:
                           0006F7  2643 	C$Lab2.c$418$3$97 ==.
                                   2644 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:418: counts = 0;
      00076E E4               [12] 2645 	clr	a
      00076F F5 22            [12] 2646 	mov	_counts,a
      000771 F5 23            [12] 2647 	mov	(_counts + 1),a
                           0006FC  2648 	C$Lab2.c$419$3$97 ==.
                                   2649 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:419: turnOff();
      000773 12 0E 8E         [24] 2650 	lcall	_turnOff
                           0006FF  2651 	C$Lab2.c$420$3$97 ==.
                                   2652 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:420: LED3 = 0;                                        //turn on left LED
      000776 C2 A1            [12] 2653 	clr	_LED3
                           000701  2654 	C$Lab2.c$421$3$97 ==.
                                   2655 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:421: while (counts < blink_counts);                    //wait until set time
      000778                       2656 00129$:
      000778 C3               [12] 2657 	clr	c
      000779 E5 22            [12] 2658 	mov	a,_counts
      00077B 95 27            [12] 2659 	subb	a,_blink_counts
      00077D E5 23            [12] 2660 	mov	a,(_counts + 1)
      00077F 95 28            [12] 2661 	subb	a,(_blink_counts + 1)
      000781 40 F5            [24] 2662 	jc	00129$
                           00070C  2663 	C$Lab2.c$422$3$97 ==.
                                   2664 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:422: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      000783 30 B1 14         [24] 2665 	jnb	_PB0,00133$
      000786 30 B0 11         [24] 2666 	jnb	_PB1,00133$
      000789 30 A3 0E         [24] 2667 	jnb	_PB2,00133$
      00078C 20 A2 0B         [24] 2668 	jb	_PB3,00133$
                           000718  2669 	C$Lab2.c$424$4$104 ==.
                                   2670 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:424: debounce();
      00078F 12 0E 9B         [24] 2671 	lcall	_debounce
                           00071B  2672 	C$Lab2.c$425$4$104 ==.
                                   2673 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:425: player1turn = 0;
      000792 E4               [12] 2674 	clr	a
      000793 F5 33            [12] 2675 	mov	_player1turn,a
      000795 F5 34            [12] 2676 	mov	(_player1turn + 1),a
                           000720  2677 	C$Lab2.c$426$4$104 ==.
                                   2678 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:426: goto playerturn;
      000797 02 06 AB         [24] 2679 	ljmp	00101$
      00079A                       2680 00133$:
                           000723  2681 	C$Lab2.c$430$4$105 ==.
                                   2682 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:430: player1blink++;
      00079A 05 35            [12] 2683 	inc	_player1blink
      00079C E4               [12] 2684 	clr	a
      00079D B5 35 02         [24] 2685 	cjne	a,_player1blink,01100$
      0007A0 05 36            [12] 2686 	inc	(_player1blink + 1)
      0007A2                       2687 01100$:
      0007A2 02 06 BC         [24] 2688 	ljmp	00139$
                           00072E  2689 	C$Lab2.c$434$2$96 ==.
                                   2690 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:434: while (startLED == 1 && Mode3Rounds < 5)
      0007A5                       2691 00179$:
      0007A5 74 01            [12] 2692 	mov	a,#0x01
      0007A7 B5 31 06         [24] 2693 	cjne	a,_startLED,01101$
      0007AA 14               [12] 2694 	dec	a
      0007AB B5 32 02         [24] 2695 	cjne	a,(_startLED + 1),01101$
      0007AE 80 03            [24] 2696 	sjmp	01102$
      0007B0                       2697 01101$:
      0007B0 02 08 94         [24] 2698 	ljmp	00219$
      0007B3                       2699 01102$:
      0007B3 C3               [12] 2700 	clr	c
      0007B4 E5 39            [12] 2701 	mov	a,_Mode3Rounds
      0007B6 94 05            [12] 2702 	subb	a,#0x05
      0007B8 E5 3A            [12] 2703 	mov	a,(_Mode3Rounds + 1)
      0007BA 94 00            [12] 2704 	subb	a,#0x00
      0007BC 40 03            [24] 2705 	jc	01103$
      0007BE 02 08 94         [24] 2706 	ljmp	00219$
      0007C1                       2707 01103$:
                           00074A  2708 	C$Lab2.c$436$3$106 ==.
                                   2709 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:436: counts = 0;
      0007C1 E4               [12] 2710 	clr	a
      0007C2 F5 22            [12] 2711 	mov	_counts,a
      0007C4 F5 23            [12] 2712 	mov	(_counts + 1),a
                           00074F  2713 	C$Lab2.c$437$3$106 ==.
                                   2714 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:437: turnOff();
      0007C6 12 0E 8E         [24] 2715 	lcall	_turnOff
                           000752  2716 	C$Lab2.c$438$3$106 ==.
                                   2717 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:438: LED1 = 0;                                        //turn on right LED
      0007C9 C2 B5            [12] 2718 	clr	_LED1
                           000754  2719 	C$Lab2.c$439$3$106 ==.
                                   2720 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:439: while (counts < blink_counts);                    //wait until set time
      0007CB                       2721 00142$:
      0007CB C3               [12] 2722 	clr	c
      0007CC E5 22            [12] 2723 	mov	a,_counts
      0007CE 95 27            [12] 2724 	subb	a,_blink_counts
      0007D0 E5 23            [12] 2725 	mov	a,(_counts + 1)
      0007D2 95 28            [12] 2726 	subb	a,(_blink_counts + 1)
      0007D4 40 F5            [24] 2727 	jc	00142$
                           00075F  2728 	C$Lab2.c$440$3$106 ==.
                                   2729 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:440: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      0007D6 30 B1 14         [24] 2730 	jnb	_PB0,00146$
      0007D9 20 B0 11         [24] 2731 	jb	_PB1,00146$
      0007DC 30 A3 0E         [24] 2732 	jnb	_PB2,00146$
      0007DF 30 A2 0B         [24] 2733 	jnb	_PB3,00146$
                           00076B  2734 	C$Lab2.c$442$4$107 ==.
                                   2735 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:442: debounce();
      0007E2 12 0E 9B         [24] 2736 	lcall	_debounce
                           00076E  2737 	C$Lab2.c$443$4$107 ==.
                                   2738 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:443: player1turn = 0;
      0007E5 E4               [12] 2739 	clr	a
      0007E6 F5 33            [12] 2740 	mov	_player1turn,a
      0007E8 F5 34            [12] 2741 	mov	(_player1turn + 1),a
                           000773  2742 	C$Lab2.c$444$4$107 ==.
                                   2743 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:444: goto playerturn;
      0007EA 02 06 AB         [24] 2744 	ljmp	00101$
      0007ED                       2745 00146$:
                           000776  2746 	C$Lab2.c$448$4$108 ==.
                                   2747 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:448: player1blink++;
      0007ED 05 35            [12] 2748 	inc	_player1blink
      0007EF E4               [12] 2749 	clr	a
      0007F0 B5 35 02         [24] 2750 	cjne	a,_player1blink,01109$
      0007F3 05 36            [12] 2751 	inc	(_player1blink + 1)
      0007F5                       2752 01109$:
                           00077E  2753 	C$Lab2.c$451$3$106 ==.
                                   2754 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:451: counts = 0;
      0007F5 E4               [12] 2755 	clr	a
      0007F6 F5 22            [12] 2756 	mov	_counts,a
      0007F8 F5 23            [12] 2757 	mov	(_counts + 1),a
                           000783  2758 	C$Lab2.c$452$3$106 ==.
                                   2759 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:452: turnOff();
      0007FA 12 0E 8E         [24] 2760 	lcall	_turnOff
                           000786  2761 	C$Lab2.c$453$3$106 ==.
                                   2762 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:453: LED2 = 0;                                        //turn on bottom LED
      0007FD C2 B2            [12] 2763 	clr	_LED2
                           000788  2764 	C$Lab2.c$454$3$106 ==.
                                   2765 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:454: while (counts < blink_counts);                    //wait until set time
      0007FF                       2766 00151$:
      0007FF C3               [12] 2767 	clr	c
      000800 E5 22            [12] 2768 	mov	a,_counts
      000802 95 27            [12] 2769 	subb	a,_blink_counts
      000804 E5 23            [12] 2770 	mov	a,(_counts + 1)
      000806 95 28            [12] 2771 	subb	a,(_blink_counts + 1)
      000808 40 F5            [24] 2772 	jc	00151$
                           000793  2773 	C$Lab2.c$455$3$106 ==.
                                   2774 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:455: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      00080A 30 B1 14         [24] 2775 	jnb	_PB0,00155$
      00080D 30 B0 11         [24] 2776 	jnb	_PB1,00155$
      000810 20 A3 0E         [24] 2777 	jb	_PB2,00155$
      000813 30 A2 0B         [24] 2778 	jnb	_PB3,00155$
                           00079F  2779 	C$Lab2.c$457$4$109 ==.
                                   2780 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:457: debounce();
      000816 12 0E 9B         [24] 2781 	lcall	_debounce
                           0007A2  2782 	C$Lab2.c$458$4$109 ==.
                                   2783 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:458: player1turn = 0;
      000819 E4               [12] 2784 	clr	a
      00081A F5 33            [12] 2785 	mov	_player1turn,a
      00081C F5 34            [12] 2786 	mov	(_player1turn + 1),a
                           0007A7  2787 	C$Lab2.c$459$4$109 ==.
                                   2788 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:459: goto playerturn;
      00081E 02 06 AB         [24] 2789 	ljmp	00101$
      000821                       2790 00155$:
                           0007AA  2791 	C$Lab2.c$463$4$110 ==.
                                   2792 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:463: player1blink++;
      000821 05 35            [12] 2793 	inc	_player1blink
      000823 E4               [12] 2794 	clr	a
      000824 B5 35 02         [24] 2795 	cjne	a,_player1blink,01115$
      000827 05 36            [12] 2796 	inc	(_player1blink + 1)
      000829                       2797 01115$:
                           0007B2  2798 	C$Lab2.c$466$3$106 ==.
                                   2799 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:466: counts = 0;
      000829 E4               [12] 2800 	clr	a
      00082A F5 22            [12] 2801 	mov	_counts,a
      00082C F5 23            [12] 2802 	mov	(_counts + 1),a
                           0007B7  2803 	C$Lab2.c$467$3$106 ==.
                                   2804 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:467: turnOff();
      00082E 12 0E 8E         [24] 2805 	lcall	_turnOff
                           0007BA  2806 	C$Lab2.c$468$3$106 ==.
                                   2807 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:468: LED3 = 0;                                        //turn on left LED
      000831 C2 A1            [12] 2808 	clr	_LED3
                           0007BC  2809 	C$Lab2.c$469$3$106 ==.
                                   2810 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:469: while (counts < blink_counts);                    //wait until set time
      000833                       2811 00160$:
      000833 C3               [12] 2812 	clr	c
      000834 E5 22            [12] 2813 	mov	a,_counts
      000836 95 27            [12] 2814 	subb	a,_blink_counts
      000838 E5 23            [12] 2815 	mov	a,(_counts + 1)
      00083A 95 28            [12] 2816 	subb	a,(_blink_counts + 1)
      00083C 40 F5            [24] 2817 	jc	00160$
                           0007C7  2818 	C$Lab2.c$470$3$106 ==.
                                   2819 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:470: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      00083E 30 B1 14         [24] 2820 	jnb	_PB0,00164$
      000841 30 B0 11         [24] 2821 	jnb	_PB1,00164$
      000844 30 A3 0E         [24] 2822 	jnb	_PB2,00164$
      000847 20 A2 0B         [24] 2823 	jb	_PB3,00164$
                           0007D3  2824 	C$Lab2.c$472$4$111 ==.
                                   2825 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:472: debounce();
      00084A 12 0E 9B         [24] 2826 	lcall	_debounce
                           0007D6  2827 	C$Lab2.c$473$4$111 ==.
                                   2828 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:473: player1turn = 0;
      00084D E4               [12] 2829 	clr	a
      00084E F5 33            [12] 2830 	mov	_player1turn,a
      000850 F5 34            [12] 2831 	mov	(_player1turn + 1),a
                           0007DB  2832 	C$Lab2.c$474$4$111 ==.
                                   2833 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:474: goto playerturn;
      000852 02 06 AB         [24] 2834 	ljmp	00101$
      000855                       2835 00164$:
                           0007DE  2836 	C$Lab2.c$478$4$112 ==.
                                   2837 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:478: player1blink++;
      000855 05 35            [12] 2838 	inc	_player1blink
      000857 E4               [12] 2839 	clr	a
      000858 B5 35 02         [24] 2840 	cjne	a,_player1blink,01121$
      00085B 05 36            [12] 2841 	inc	(_player1blink + 1)
      00085D                       2842 01121$:
                           0007E6  2843 	C$Lab2.c$481$3$106 ==.
                                   2844 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:481: counts = 0;
      00085D E4               [12] 2845 	clr	a
      00085E F5 22            [12] 2846 	mov	_counts,a
      000860 F5 23            [12] 2847 	mov	(_counts + 1),a
                           0007EB  2848 	C$Lab2.c$482$3$106 ==.
                                   2849 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:482: turnOff();
      000862 12 0E 8E         [24] 2850 	lcall	_turnOff
                           0007EE  2851 	C$Lab2.c$483$3$106 ==.
                                   2852 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:483: LED0 = 0;                                        //turn on top LED
      000865 C2 B6            [12] 2853 	clr	_LED0
                           0007F0  2854 	C$Lab2.c$484$3$106 ==.
                                   2855 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:484: while (counts < blink_counts);                    //wait until set time
      000867                       2856 00169$:
      000867 C3               [12] 2857 	clr	c
      000868 E5 22            [12] 2858 	mov	a,_counts
      00086A 95 27            [12] 2859 	subb	a,_blink_counts
      00086C E5 23            [12] 2860 	mov	a,(_counts + 1)
      00086E 95 28            [12] 2861 	subb	a,(_blink_counts + 1)
      000870 40 F5            [24] 2862 	jc	00169$
                           0007FB  2863 	C$Lab2.c$485$3$106 ==.
                                   2864 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:485: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      000872 20 B1 14         [24] 2865 	jb	_PB0,00173$
      000875 30 B0 11         [24] 2866 	jnb	_PB1,00173$
      000878 30 A3 0E         [24] 2867 	jnb	_PB2,00173$
      00087B 30 A2 0B         [24] 2868 	jnb	_PB3,00173$
                           000807  2869 	C$Lab2.c$487$4$113 ==.
                                   2870 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:487: debounce();
      00087E 12 0E 9B         [24] 2871 	lcall	_debounce
                           00080A  2872 	C$Lab2.c$488$4$113 ==.
                                   2873 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:488: player1turn = 0;
      000881 E4               [12] 2874 	clr	a
      000882 F5 33            [12] 2875 	mov	_player1turn,a
      000884 F5 34            [12] 2876 	mov	(_player1turn + 1),a
                           00080F  2877 	C$Lab2.c$489$4$113 ==.
                                   2878 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:489: goto playerturn;
      000886 02 06 AB         [24] 2879 	ljmp	00101$
      000889                       2880 00173$:
                           000812  2881 	C$Lab2.c$493$4$114 ==.
                                   2882 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:493: player1blink++;
      000889 05 35            [12] 2883 	inc	_player1blink
      00088B E4               [12] 2884 	clr	a
      00088C B5 35 02         [24] 2885 	cjne	a,_player1blink,01127$
      00088F 05 36            [12] 2886 	inc	(_player1blink + 1)
      000891                       2887 01127$:
      000891 02 07 A5         [24] 2888 	ljmp	00179$
                           00081D  2889 	C$Lab2.c$497$2$96 ==.
                                   2890 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:497: while (startLED == 2 && Mode3Rounds < 5)
      000894                       2891 00219$:
      000894 74 02            [12] 2892 	mov	a,#0x02
      000896 B5 31 06         [24] 2893 	cjne	a,_startLED,01128$
      000899 E4               [12] 2894 	clr	a
      00089A B5 32 02         [24] 2895 	cjne	a,(_startLED + 1),01128$
      00089D 80 03            [24] 2896 	sjmp	01129$
      00089F                       2897 01128$:
      00089F 02 09 83         [24] 2898 	ljmp	00259$
      0008A2                       2899 01129$:
      0008A2 C3               [12] 2900 	clr	c
      0008A3 E5 39            [12] 2901 	mov	a,_Mode3Rounds
      0008A5 94 05            [12] 2902 	subb	a,#0x05
      0008A7 E5 3A            [12] 2903 	mov	a,(_Mode3Rounds + 1)
      0008A9 94 00            [12] 2904 	subb	a,#0x00
      0008AB 40 03            [24] 2905 	jc	01130$
      0008AD 02 09 83         [24] 2906 	ljmp	00259$
      0008B0                       2907 01130$:
                           000839  2908 	C$Lab2.c$499$3$115 ==.
                                   2909 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:499: counts = 0;
      0008B0 E4               [12] 2910 	clr	a
      0008B1 F5 22            [12] 2911 	mov	_counts,a
      0008B3 F5 23            [12] 2912 	mov	(_counts + 1),a
                           00083E  2913 	C$Lab2.c$500$3$115 ==.
                                   2914 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:500: turnOff();
      0008B5 12 0E 8E         [24] 2915 	lcall	_turnOff
                           000841  2916 	C$Lab2.c$501$3$115 ==.
                                   2917 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:501: LED2 = 0;                                        //turn on bottom LED
      0008B8 C2 B2            [12] 2918 	clr	_LED2
                           000843  2919 	C$Lab2.c$502$3$115 ==.
                                   2920 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:502: while (counts < blink_counts);                    //wait until set time
      0008BA                       2921 00182$:
      0008BA C3               [12] 2922 	clr	c
      0008BB E5 22            [12] 2923 	mov	a,_counts
      0008BD 95 27            [12] 2924 	subb	a,_blink_counts
      0008BF E5 23            [12] 2925 	mov	a,(_counts + 1)
      0008C1 95 28            [12] 2926 	subb	a,(_blink_counts + 1)
      0008C3 40 F5            [24] 2927 	jc	00182$
                           00084E  2928 	C$Lab2.c$503$3$115 ==.
                                   2929 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:503: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      0008C5 30 B1 14         [24] 2930 	jnb	_PB0,00186$
      0008C8 30 B0 11         [24] 2931 	jnb	_PB1,00186$
      0008CB 20 A3 0E         [24] 2932 	jb	_PB2,00186$
      0008CE 30 A2 0B         [24] 2933 	jnb	_PB3,00186$
                           00085A  2934 	C$Lab2.c$505$4$116 ==.
                                   2935 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:505: debounce();
      0008D1 12 0E 9B         [24] 2936 	lcall	_debounce
                           00085D  2937 	C$Lab2.c$506$4$116 ==.
                                   2938 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:506: player1turn = 0;
      0008D4 E4               [12] 2939 	clr	a
      0008D5 F5 33            [12] 2940 	mov	_player1turn,a
      0008D7 F5 34            [12] 2941 	mov	(_player1turn + 1),a
                           000862  2942 	C$Lab2.c$507$4$116 ==.
                                   2943 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:507: goto playerturn;
      0008D9 02 06 AB         [24] 2944 	ljmp	00101$
      0008DC                       2945 00186$:
                           000865  2946 	C$Lab2.c$511$4$117 ==.
                                   2947 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:511: player1blink++;
      0008DC 05 35            [12] 2948 	inc	_player1blink
      0008DE E4               [12] 2949 	clr	a
      0008DF B5 35 02         [24] 2950 	cjne	a,_player1blink,01136$
      0008E2 05 36            [12] 2951 	inc	(_player1blink + 1)
      0008E4                       2952 01136$:
                           00086D  2953 	C$Lab2.c$514$3$115 ==.
                                   2954 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:514: counts = 0;
      0008E4 E4               [12] 2955 	clr	a
      0008E5 F5 22            [12] 2956 	mov	_counts,a
      0008E7 F5 23            [12] 2957 	mov	(_counts + 1),a
                           000872  2958 	C$Lab2.c$515$3$115 ==.
                                   2959 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:515: turnOff();
      0008E9 12 0E 8E         [24] 2960 	lcall	_turnOff
                           000875  2961 	C$Lab2.c$516$3$115 ==.
                                   2962 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:516: LED3 = 0;                                        //turn on left LED
      0008EC C2 A1            [12] 2963 	clr	_LED3
                           000877  2964 	C$Lab2.c$517$3$115 ==.
                                   2965 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:517: while (counts < blink_counts);                    //wait until set time
      0008EE                       2966 00191$:
      0008EE C3               [12] 2967 	clr	c
      0008EF E5 22            [12] 2968 	mov	a,_counts
      0008F1 95 27            [12] 2969 	subb	a,_blink_counts
      0008F3 E5 23            [12] 2970 	mov	a,(_counts + 1)
      0008F5 95 28            [12] 2971 	subb	a,(_blink_counts + 1)
      0008F7 40 F5            [24] 2972 	jc	00191$
                           000882  2973 	C$Lab2.c$518$3$115 ==.
                                   2974 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:518: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      0008F9 30 B1 14         [24] 2975 	jnb	_PB0,00195$
      0008FC 30 B0 11         [24] 2976 	jnb	_PB1,00195$
      0008FF 30 A3 0E         [24] 2977 	jnb	_PB2,00195$
      000902 20 A2 0B         [24] 2978 	jb	_PB3,00195$
                           00088E  2979 	C$Lab2.c$520$4$118 ==.
                                   2980 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:520: debounce();
      000905 12 0E 9B         [24] 2981 	lcall	_debounce
                           000891  2982 	C$Lab2.c$521$4$118 ==.
                                   2983 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:521: player1turn = 0;
      000908 E4               [12] 2984 	clr	a
      000909 F5 33            [12] 2985 	mov	_player1turn,a
      00090B F5 34            [12] 2986 	mov	(_player1turn + 1),a
                           000896  2987 	C$Lab2.c$522$4$118 ==.
                                   2988 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:522: goto playerturn;
      00090D 02 06 AB         [24] 2989 	ljmp	00101$
      000910                       2990 00195$:
                           000899  2991 	C$Lab2.c$526$4$119 ==.
                                   2992 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:526: player1blink++;
      000910 05 35            [12] 2993 	inc	_player1blink
      000912 E4               [12] 2994 	clr	a
      000913 B5 35 02         [24] 2995 	cjne	a,_player1blink,01142$
      000916 05 36            [12] 2996 	inc	(_player1blink + 1)
      000918                       2997 01142$:
                           0008A1  2998 	C$Lab2.c$529$3$115 ==.
                                   2999 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:529: counts = 0;
      000918 E4               [12] 3000 	clr	a
      000919 F5 22            [12] 3001 	mov	_counts,a
      00091B F5 23            [12] 3002 	mov	(_counts + 1),a
                           0008A6  3003 	C$Lab2.c$530$3$115 ==.
                                   3004 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:530: turnOff();
      00091D 12 0E 8E         [24] 3005 	lcall	_turnOff
                           0008A9  3006 	C$Lab2.c$531$3$115 ==.
                                   3007 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:531: LED0 = 0;                                        //turn on top LED
      000920 C2 B6            [12] 3008 	clr	_LED0
                           0008AB  3009 	C$Lab2.c$532$3$115 ==.
                                   3010 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:532: while (counts < blink_counts);                    //wait until set time
      000922                       3011 00200$:
      000922 C3               [12] 3012 	clr	c
      000923 E5 22            [12] 3013 	mov	a,_counts
      000925 95 27            [12] 3014 	subb	a,_blink_counts
      000927 E5 23            [12] 3015 	mov	a,(_counts + 1)
      000929 95 28            [12] 3016 	subb	a,(_blink_counts + 1)
      00092B 40 F5            [24] 3017 	jc	00200$
                           0008B6  3018 	C$Lab2.c$533$3$115 ==.
                                   3019 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:533: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      00092D 20 B1 14         [24] 3020 	jb	_PB0,00204$
      000930 30 B0 11         [24] 3021 	jnb	_PB1,00204$
      000933 30 A3 0E         [24] 3022 	jnb	_PB2,00204$
      000936 30 A2 0B         [24] 3023 	jnb	_PB3,00204$
                           0008C2  3024 	C$Lab2.c$535$4$120 ==.
                                   3025 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:535: debounce();
      000939 12 0E 9B         [24] 3026 	lcall	_debounce
                           0008C5  3027 	C$Lab2.c$536$4$120 ==.
                                   3028 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:536: player1turn = 0;
      00093C E4               [12] 3029 	clr	a
      00093D F5 33            [12] 3030 	mov	_player1turn,a
      00093F F5 34            [12] 3031 	mov	(_player1turn + 1),a
                           0008CA  3032 	C$Lab2.c$537$4$120 ==.
                                   3033 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:537: goto playerturn;
      000941 02 06 AB         [24] 3034 	ljmp	00101$
      000944                       3035 00204$:
                           0008CD  3036 	C$Lab2.c$541$4$121 ==.
                                   3037 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:541: player1blink++;
      000944 05 35            [12] 3038 	inc	_player1blink
      000946 E4               [12] 3039 	clr	a
      000947 B5 35 02         [24] 3040 	cjne	a,_player1blink,01148$
      00094A 05 36            [12] 3041 	inc	(_player1blink + 1)
      00094C                       3042 01148$:
                           0008D5  3043 	C$Lab2.c$544$3$115 ==.
                                   3044 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:544: counts = 0;
      00094C E4               [12] 3045 	clr	a
      00094D F5 22            [12] 3046 	mov	_counts,a
      00094F F5 23            [12] 3047 	mov	(_counts + 1),a
                           0008DA  3048 	C$Lab2.c$545$3$115 ==.
                                   3049 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:545: turnOff();
      000951 12 0E 8E         [24] 3050 	lcall	_turnOff
                           0008DD  3051 	C$Lab2.c$546$3$115 ==.
                                   3052 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:546: LED1 = 0;                                        //turn on right LED
      000954 C2 B5            [12] 3053 	clr	_LED1
                           0008DF  3054 	C$Lab2.c$547$3$115 ==.
                                   3055 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:547: while (counts < blink_counts);                    //wait until set time
      000956                       3056 00209$:
      000956 C3               [12] 3057 	clr	c
      000957 E5 22            [12] 3058 	mov	a,_counts
      000959 95 27            [12] 3059 	subb	a,_blink_counts
      00095B E5 23            [12] 3060 	mov	a,(_counts + 1)
      00095D 95 28            [12] 3061 	subb	a,(_blink_counts + 1)
      00095F 40 F5            [24] 3062 	jc	00209$
                           0008EA  3063 	C$Lab2.c$548$3$115 ==.
                                   3064 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:548: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      000961 30 B1 14         [24] 3065 	jnb	_PB0,00213$
      000964 20 B0 11         [24] 3066 	jb	_PB1,00213$
      000967 30 A3 0E         [24] 3067 	jnb	_PB2,00213$
      00096A 30 A2 0B         [24] 3068 	jnb	_PB3,00213$
                           0008F6  3069 	C$Lab2.c$550$4$122 ==.
                                   3070 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:550: debounce();
      00096D 12 0E 9B         [24] 3071 	lcall	_debounce
                           0008F9  3072 	C$Lab2.c$551$4$122 ==.
                                   3073 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:551: player1turn = 0;
      000970 E4               [12] 3074 	clr	a
      000971 F5 33            [12] 3075 	mov	_player1turn,a
      000973 F5 34            [12] 3076 	mov	(_player1turn + 1),a
                           0008FE  3077 	C$Lab2.c$552$4$122 ==.
                                   3078 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:552: goto playerturn;
      000975 02 06 AB         [24] 3079 	ljmp	00101$
      000978                       3080 00213$:
                           000901  3081 	C$Lab2.c$556$4$123 ==.
                                   3082 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:556: player1blink++;
      000978 05 35            [12] 3083 	inc	_player1blink
      00097A E4               [12] 3084 	clr	a
      00097B B5 35 02         [24] 3085 	cjne	a,_player1blink,01154$
      00097E 05 36            [12] 3086 	inc	(_player1blink + 1)
      000980                       3087 01154$:
      000980 02 08 94         [24] 3088 	ljmp	00219$
                           00090C  3089 	C$Lab2.c$560$2$96 ==.
                                   3090 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:560: while (startLED == 3 && Mode3Rounds < 5)
      000983                       3091 00259$:
      000983 74 03            [12] 3092 	mov	a,#0x03
      000985 B5 31 06         [24] 3093 	cjne	a,_startLED,01155$
      000988 E4               [12] 3094 	clr	a
      000989 B5 32 02         [24] 3095 	cjne	a,(_startLED + 1),01155$
      00098C 80 03            [24] 3096 	sjmp	01156$
      00098E                       3097 01155$:
      00098E 02 0A 72         [24] 3098 	ljmp	00420$
      000991                       3099 01156$:
      000991 C3               [12] 3100 	clr	c
      000992 E5 39            [12] 3101 	mov	a,_Mode3Rounds
      000994 94 05            [12] 3102 	subb	a,#0x05
      000996 E5 3A            [12] 3103 	mov	a,(_Mode3Rounds + 1)
      000998 94 00            [12] 3104 	subb	a,#0x00
      00099A 40 03            [24] 3105 	jc	01157$
      00099C 02 0A 72         [24] 3106 	ljmp	00420$
      00099F                       3107 01157$:
                           000928  3108 	C$Lab2.c$562$3$124 ==.
                                   3109 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:562: counts = 0;
      00099F E4               [12] 3110 	clr	a
      0009A0 F5 22            [12] 3111 	mov	_counts,a
      0009A2 F5 23            [12] 3112 	mov	(_counts + 1),a
                           00092D  3113 	C$Lab2.c$563$3$124 ==.
                                   3114 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:563: turnOff();
      0009A4 12 0E 8E         [24] 3115 	lcall	_turnOff
                           000930  3116 	C$Lab2.c$564$3$124 ==.
                                   3117 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:564: LED3 = 0;                                        //turn on left LED
      0009A7 C2 A1            [12] 3118 	clr	_LED3
                           000932  3119 	C$Lab2.c$565$3$124 ==.
                                   3120 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:565: while (counts < blink_counts);                    //wait until set time
      0009A9                       3121 00222$:
      0009A9 C3               [12] 3122 	clr	c
      0009AA E5 22            [12] 3123 	mov	a,_counts
      0009AC 95 27            [12] 3124 	subb	a,_blink_counts
      0009AE E5 23            [12] 3125 	mov	a,(_counts + 1)
      0009B0 95 28            [12] 3126 	subb	a,(_blink_counts + 1)
      0009B2 40 F5            [24] 3127 	jc	00222$
                           00093D  3128 	C$Lab2.c$566$3$124 ==.
                                   3129 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:566: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      0009B4 30 B1 14         [24] 3130 	jnb	_PB0,00226$
      0009B7 30 B0 11         [24] 3131 	jnb	_PB1,00226$
      0009BA 30 A3 0E         [24] 3132 	jnb	_PB2,00226$
      0009BD 20 A2 0B         [24] 3133 	jb	_PB3,00226$
                           000949  3134 	C$Lab2.c$568$4$125 ==.
                                   3135 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:568: debounce();
      0009C0 12 0E 9B         [24] 3136 	lcall	_debounce
                           00094C  3137 	C$Lab2.c$569$4$125 ==.
                                   3138 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:569: player1turn = 0;
      0009C3 E4               [12] 3139 	clr	a
      0009C4 F5 33            [12] 3140 	mov	_player1turn,a
      0009C6 F5 34            [12] 3141 	mov	(_player1turn + 1),a
                           000951  3142 	C$Lab2.c$570$4$125 ==.
                                   3143 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:570: goto playerturn;
      0009C8 02 06 AB         [24] 3144 	ljmp	00101$
      0009CB                       3145 00226$:
                           000954  3146 	C$Lab2.c$574$4$126 ==.
                                   3147 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:574: player1blink++;
      0009CB 05 35            [12] 3148 	inc	_player1blink
      0009CD E4               [12] 3149 	clr	a
      0009CE B5 35 02         [24] 3150 	cjne	a,_player1blink,01163$
      0009D1 05 36            [12] 3151 	inc	(_player1blink + 1)
      0009D3                       3152 01163$:
                           00095C  3153 	C$Lab2.c$577$3$124 ==.
                                   3154 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:577: counts = 0;
      0009D3 E4               [12] 3155 	clr	a
      0009D4 F5 22            [12] 3156 	mov	_counts,a
      0009D6 F5 23            [12] 3157 	mov	(_counts + 1),a
                           000961  3158 	C$Lab2.c$578$3$124 ==.
                                   3159 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:578: turnOff();
      0009D8 12 0E 8E         [24] 3160 	lcall	_turnOff
                           000964  3161 	C$Lab2.c$579$3$124 ==.
                                   3162 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:579: LED0 = 0;                                        //turn on top LED
      0009DB C2 B6            [12] 3163 	clr	_LED0
                           000966  3164 	C$Lab2.c$580$3$124 ==.
                                   3165 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:580: while (counts < blink_counts);                    //wait until set time
      0009DD                       3166 00231$:
      0009DD C3               [12] 3167 	clr	c
      0009DE E5 22            [12] 3168 	mov	a,_counts
      0009E0 95 27            [12] 3169 	subb	a,_blink_counts
      0009E2 E5 23            [12] 3170 	mov	a,(_counts + 1)
      0009E4 95 28            [12] 3171 	subb	a,(_blink_counts + 1)
      0009E6 40 F5            [24] 3172 	jc	00231$
                           000971  3173 	C$Lab2.c$581$3$124 ==.
                                   3174 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:581: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      0009E8 20 B1 14         [24] 3175 	jb	_PB0,00235$
      0009EB 30 B0 11         [24] 3176 	jnb	_PB1,00235$
      0009EE 30 A3 0E         [24] 3177 	jnb	_PB2,00235$
      0009F1 30 A2 0B         [24] 3178 	jnb	_PB3,00235$
                           00097D  3179 	C$Lab2.c$583$4$127 ==.
                                   3180 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:583: debounce();
      0009F4 12 0E 9B         [24] 3181 	lcall	_debounce
                           000980  3182 	C$Lab2.c$584$4$127 ==.
                                   3183 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:584: player1turn = 0;
      0009F7 E4               [12] 3184 	clr	a
      0009F8 F5 33            [12] 3185 	mov	_player1turn,a
      0009FA F5 34            [12] 3186 	mov	(_player1turn + 1),a
                           000985  3187 	C$Lab2.c$585$4$127 ==.
                                   3188 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:585: goto playerturn;
      0009FC 02 06 AB         [24] 3189 	ljmp	00101$
      0009FF                       3190 00235$:
                           000988  3191 	C$Lab2.c$589$4$128 ==.
                                   3192 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:589: player1blink++;
      0009FF 05 35            [12] 3193 	inc	_player1blink
      000A01 E4               [12] 3194 	clr	a
      000A02 B5 35 02         [24] 3195 	cjne	a,_player1blink,01169$
      000A05 05 36            [12] 3196 	inc	(_player1blink + 1)
      000A07                       3197 01169$:
                           000990  3198 	C$Lab2.c$592$3$124 ==.
                                   3199 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:592: counts = 0;
      000A07 E4               [12] 3200 	clr	a
      000A08 F5 22            [12] 3201 	mov	_counts,a
      000A0A F5 23            [12] 3202 	mov	(_counts + 1),a
                           000995  3203 	C$Lab2.c$593$3$124 ==.
                                   3204 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:593: turnOff();
      000A0C 12 0E 8E         [24] 3205 	lcall	_turnOff
                           000998  3206 	C$Lab2.c$594$3$124 ==.
                                   3207 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:594: LED1 = 0;                                        //turn on right LED
      000A0F C2 B5            [12] 3208 	clr	_LED1
                           00099A  3209 	C$Lab2.c$595$3$124 ==.
                                   3210 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:595: while (counts < blink_counts);                    //wait until set time
      000A11                       3211 00240$:
      000A11 C3               [12] 3212 	clr	c
      000A12 E5 22            [12] 3213 	mov	a,_counts
      000A14 95 27            [12] 3214 	subb	a,_blink_counts
      000A16 E5 23            [12] 3215 	mov	a,(_counts + 1)
      000A18 95 28            [12] 3216 	subb	a,(_blink_counts + 1)
      000A1A 40 F5            [24] 3217 	jc	00240$
                           0009A5  3218 	C$Lab2.c$596$3$124 ==.
                                   3219 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:596: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      000A1C 30 B1 14         [24] 3220 	jnb	_PB0,00244$
      000A1F 20 B0 11         [24] 3221 	jb	_PB1,00244$
      000A22 30 A3 0E         [24] 3222 	jnb	_PB2,00244$
      000A25 30 A2 0B         [24] 3223 	jnb	_PB3,00244$
                           0009B1  3224 	C$Lab2.c$598$4$129 ==.
                                   3225 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:598: debounce();
      000A28 12 0E 9B         [24] 3226 	lcall	_debounce
                           0009B4  3227 	C$Lab2.c$599$4$129 ==.
                                   3228 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:599: player1turn = 0;
      000A2B E4               [12] 3229 	clr	a
      000A2C F5 33            [12] 3230 	mov	_player1turn,a
      000A2E F5 34            [12] 3231 	mov	(_player1turn + 1),a
                           0009B9  3232 	C$Lab2.c$600$4$129 ==.
                                   3233 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:600: goto playerturn;
      000A30 02 06 AB         [24] 3234 	ljmp	00101$
      000A33                       3235 00244$:
                           0009BC  3236 	C$Lab2.c$604$4$130 ==.
                                   3237 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:604: player1blink++;
      000A33 05 35            [12] 3238 	inc	_player1blink
      000A35 E4               [12] 3239 	clr	a
      000A36 B5 35 02         [24] 3240 	cjne	a,_player1blink,01175$
      000A39 05 36            [12] 3241 	inc	(_player1blink + 1)
      000A3B                       3242 01175$:
                           0009C4  3243 	C$Lab2.c$607$3$124 ==.
                                   3244 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:607: counts = 0;
      000A3B E4               [12] 3245 	clr	a
      000A3C F5 22            [12] 3246 	mov	_counts,a
      000A3E F5 23            [12] 3247 	mov	(_counts + 1),a
                           0009C9  3248 	C$Lab2.c$608$3$124 ==.
                                   3249 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:608: turnOff();
      000A40 12 0E 8E         [24] 3250 	lcall	_turnOff
                           0009CC  3251 	C$Lab2.c$609$3$124 ==.
                                   3252 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:609: LED2 = 0;                                        //turn on bottom LED
      000A43 C2 B2            [12] 3253 	clr	_LED2
                           0009CE  3254 	C$Lab2.c$610$3$124 ==.
                                   3255 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:610: while (counts < blink_counts);                    //wait until set time
      000A45                       3256 00249$:
      000A45 C3               [12] 3257 	clr	c
      000A46 E5 22            [12] 3258 	mov	a,_counts
      000A48 95 27            [12] 3259 	subb	a,_blink_counts
      000A4A E5 23            [12] 3260 	mov	a,(_counts + 1)
      000A4C 95 28            [12] 3261 	subb	a,(_blink_counts + 1)
      000A4E 40 F5            [24] 3262 	jc	00249$
                           0009D9  3263 	C$Lab2.c$611$3$124 ==.
                                   3264 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:611: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      000A50 30 B1 14         [24] 3265 	jnb	_PB0,00253$
      000A53 30 B0 11         [24] 3266 	jnb	_PB1,00253$
      000A56 20 A3 0E         [24] 3267 	jb	_PB2,00253$
      000A59 30 A2 0B         [24] 3268 	jnb	_PB3,00253$
                           0009E5  3269 	C$Lab2.c$613$4$131 ==.
                                   3270 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:613: debounce();
      000A5C 12 0E 9B         [24] 3271 	lcall	_debounce
                           0009E8  3272 	C$Lab2.c$614$4$131 ==.
                                   3273 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:614: player1turn = 0;
      000A5F E4               [12] 3274 	clr	a
      000A60 F5 33            [12] 3275 	mov	_player1turn,a
      000A62 F5 34            [12] 3276 	mov	(_player1turn + 1),a
                           0009ED  3277 	C$Lab2.c$615$4$131 ==.
                                   3278 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:615: goto playerturn;
      000A64 02 06 AB         [24] 3279 	ljmp	00101$
      000A67                       3280 00253$:
                           0009F0  3281 	C$Lab2.c$619$4$132 ==.
                                   3282 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:619: player1blink++;
      000A67 05 35            [12] 3283 	inc	_player1blink
      000A69 E4               [12] 3284 	clr	a
      000A6A B5 35 02         [24] 3285 	cjne	a,_player1blink,01181$
      000A6D 05 36            [12] 3286 	inc	(_player1blink + 1)
      000A6F                       3287 01181$:
      000A6F 02 09 83         [24] 3288 	ljmp	00259$
                           0009FB  3289 	C$Lab2.c$624$1$95 ==.
                                   3290 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:624: while (player1turn == 0)                //counterclockwise **********
      000A72                       3291 00420$:
      000A72 E5 33            [12] 3292 	mov	a,_player1turn
      000A74 45 34            [12] 3293 	orl	a,(_player1turn + 1)
      000A76 60 03            [24] 3294 	jz	01182$
      000A78 02 0E 8D         [24] 3295 	ljmp	00423$
      000A7B                       3296 01182$:
                           000A04  3297 	C$Lab2.c$626$2$133 ==.
                                   3298 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:626: randLED();
      000A7B 12 06 98         [24] 3299 	lcall	_randLED
                           000A07  3300 	C$Lab2.c$628$2$133 ==.
                                   3301 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:628: while (startLED == 0)
      000A7E                       3302 00300$:
      000A7E E5 31            [12] 3303 	mov	a,_startLED
      000A80 45 32            [12] 3304 	orl	a,(_startLED + 1)
      000A82 60 03            [24] 3305 	jz	01183$
      000A84 02 0B 7E         [24] 3306 	ljmp	00339$
      000A87                       3307 01183$:
                           000A10  3308 	C$Lab2.c$630$3$134 ==.
                                   3309 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:630: counts = 0;
      000A87 E4               [12] 3310 	clr	a
      000A88 F5 22            [12] 3311 	mov	_counts,a
      000A8A F5 23            [12] 3312 	mov	(_counts + 1),a
                           000A15  3313 	C$Lab2.c$631$3$134 ==.
                                   3314 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:631: turnOff();
      000A8C 12 0E 8E         [24] 3315 	lcall	_turnOff
                           000A18  3316 	C$Lab2.c$632$3$134 ==.
                                   3317 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:632: LED0 = 0;                                        //turn on top LED
      000A8F C2 B6            [12] 3318 	clr	_LED0
                           000A1A  3319 	C$Lab2.c$633$3$134 ==.
                                   3320 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:633: while (counts < blink_counts);                    //wait until set time
      000A91                       3321 00264$:
      000A91 C3               [12] 3322 	clr	c
      000A92 E5 22            [12] 3323 	mov	a,_counts
      000A94 95 27            [12] 3324 	subb	a,_blink_counts
      000A96 E5 23            [12] 3325 	mov	a,(_counts + 1)
      000A98 95 28            [12] 3326 	subb	a,(_blink_counts + 1)
      000A9A 40 F5            [24] 3327 	jc	00264$
                           000A25  3328 	C$Lab2.c$634$3$134 ==.
                                   3329 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:634: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      000A9C 20 B1 1D         [24] 3330 	jb	_PB0,00268$
      000A9F 30 B0 1A         [24] 3331 	jnb	_PB1,00268$
      000AA2 30 A3 17         [24] 3332 	jnb	_PB2,00268$
      000AA5 30 A2 14         [24] 3333 	jnb	_PB3,00268$
                           000A31  3334 	C$Lab2.c$636$4$135 ==.
                                   3335 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:636: debounce();
      000AA8 12 0E 9B         [24] 3336 	lcall	_debounce
                           000A34  3337 	C$Lab2.c$637$4$135 ==.
                                   3338 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:637: player1turn = 1;
      000AAB 75 33 01         [24] 3339 	mov	_player1turn,#0x01
      000AAE 75 34 00         [24] 3340 	mov	(_player1turn + 1),#0x00
                           000A3A  3341 	C$Lab2.c$638$4$135 ==.
                                   3342 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:638: Mode3Rounds++;
      000AB1 05 39            [12] 3343 	inc	_Mode3Rounds
      000AB3 E4               [12] 3344 	clr	a
      000AB4 B5 39 02         [24] 3345 	cjne	a,_Mode3Rounds,01189$
      000AB7 05 3A            [12] 3346 	inc	(_Mode3Rounds + 1)
      000AB9                       3347 01189$:
                           000A42  3348 	C$Lab2.c$639$4$135 ==.
                                   3349 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:639: goto playerturn;
      000AB9 02 06 AB         [24] 3350 	ljmp	00101$
      000ABC                       3351 00268$:
                           000A45  3352 	C$Lab2.c$643$4$136 ==.
                                   3353 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:643: player2blink++;
      000ABC 05 37            [12] 3354 	inc	_player2blink
      000ABE E4               [12] 3355 	clr	a
      000ABF B5 37 02         [24] 3356 	cjne	a,_player2blink,01190$
      000AC2 05 38            [12] 3357 	inc	(_player2blink + 1)
      000AC4                       3358 01190$:
                           000A4D  3359 	C$Lab2.c$646$3$134 ==.
                                   3360 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:646: counts = 0;
      000AC4 E4               [12] 3361 	clr	a
      000AC5 F5 22            [12] 3362 	mov	_counts,a
      000AC7 F5 23            [12] 3363 	mov	(_counts + 1),a
                           000A52  3364 	C$Lab2.c$647$3$134 ==.
                                   3365 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:647: turnOff();
      000AC9 12 0E 8E         [24] 3366 	lcall	_turnOff
                           000A55  3367 	C$Lab2.c$648$3$134 ==.
                                   3368 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:648: LED3 = 0;                                        //turn on left LED
      000ACC C2 A1            [12] 3369 	clr	_LED3
                           000A57  3370 	C$Lab2.c$649$3$134 ==.
                                   3371 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:649: while (counts < blink_counts);                    //wait until set time
      000ACE                       3372 00273$:
      000ACE C3               [12] 3373 	clr	c
      000ACF E5 22            [12] 3374 	mov	a,_counts
      000AD1 95 27            [12] 3375 	subb	a,_blink_counts
      000AD3 E5 23            [12] 3376 	mov	a,(_counts + 1)
      000AD5 95 28            [12] 3377 	subb	a,(_blink_counts + 1)
      000AD7 40 F5            [24] 3378 	jc	00273$
                           000A62  3379 	C$Lab2.c$650$3$134 ==.
                                   3380 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:650: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      000AD9 30 B1 1D         [24] 3381 	jnb	_PB0,00277$
      000ADC 30 B0 1A         [24] 3382 	jnb	_PB1,00277$
      000ADF 30 A3 17         [24] 3383 	jnb	_PB2,00277$
      000AE2 20 A2 14         [24] 3384 	jb	_PB3,00277$
                           000A6E  3385 	C$Lab2.c$652$4$137 ==.
                                   3386 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:652: debounce();
      000AE5 12 0E 9B         [24] 3387 	lcall	_debounce
                           000A71  3388 	C$Lab2.c$653$4$137 ==.
                                   3389 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:653: player1turn = 1;
      000AE8 75 33 01         [24] 3390 	mov	_player1turn,#0x01
      000AEB 75 34 00         [24] 3391 	mov	(_player1turn + 1),#0x00
                           000A77  3392 	C$Lab2.c$654$4$137 ==.
                                   3393 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:654: Mode3Rounds++;
      000AEE 05 39            [12] 3394 	inc	_Mode3Rounds
      000AF0 E4               [12] 3395 	clr	a
      000AF1 B5 39 02         [24] 3396 	cjne	a,_Mode3Rounds,01196$
      000AF4 05 3A            [12] 3397 	inc	(_Mode3Rounds + 1)
      000AF6                       3398 01196$:
                           000A7F  3399 	C$Lab2.c$655$4$137 ==.
                                   3400 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:655: goto playerturn;
      000AF6 02 06 AB         [24] 3401 	ljmp	00101$
      000AF9                       3402 00277$:
                           000A82  3403 	C$Lab2.c$659$4$138 ==.
                                   3404 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:659: player2blink++;
      000AF9 05 37            [12] 3405 	inc	_player2blink
      000AFB E4               [12] 3406 	clr	a
      000AFC B5 37 02         [24] 3407 	cjne	a,_player2blink,01197$
      000AFF 05 38            [12] 3408 	inc	(_player2blink + 1)
      000B01                       3409 01197$:
                           000A8A  3410 	C$Lab2.c$662$3$134 ==.
                                   3411 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:662: counts = 0;
      000B01 E4               [12] 3412 	clr	a
      000B02 F5 22            [12] 3413 	mov	_counts,a
      000B04 F5 23            [12] 3414 	mov	(_counts + 1),a
                           000A8F  3415 	C$Lab2.c$663$3$134 ==.
                                   3416 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:663: turnOff();
      000B06 12 0E 8E         [24] 3417 	lcall	_turnOff
                           000A92  3418 	C$Lab2.c$664$3$134 ==.
                                   3419 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:664: LED2 = 0;                                        //turn on bottom LED
      000B09 C2 B2            [12] 3420 	clr	_LED2
                           000A94  3421 	C$Lab2.c$665$3$134 ==.
                                   3422 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:665: while (counts < blink_counts);                    //wait until set time
      000B0B                       3423 00282$:
      000B0B C3               [12] 3424 	clr	c
      000B0C E5 22            [12] 3425 	mov	a,_counts
      000B0E 95 27            [12] 3426 	subb	a,_blink_counts
      000B10 E5 23            [12] 3427 	mov	a,(_counts + 1)
      000B12 95 28            [12] 3428 	subb	a,(_blink_counts + 1)
      000B14 40 F5            [24] 3429 	jc	00282$
                           000A9F  3430 	C$Lab2.c$666$3$134 ==.
                                   3431 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:666: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      000B16 30 B1 1D         [24] 3432 	jnb	_PB0,00286$
      000B19 30 B0 1A         [24] 3433 	jnb	_PB1,00286$
      000B1C 20 A3 17         [24] 3434 	jb	_PB2,00286$
      000B1F 30 A2 14         [24] 3435 	jnb	_PB3,00286$
                           000AAB  3436 	C$Lab2.c$668$4$139 ==.
                                   3437 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:668: debounce();
      000B22 12 0E 9B         [24] 3438 	lcall	_debounce
                           000AAE  3439 	C$Lab2.c$669$4$139 ==.
                                   3440 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:669: player1turn = 1;
      000B25 75 33 01         [24] 3441 	mov	_player1turn,#0x01
      000B28 75 34 00         [24] 3442 	mov	(_player1turn + 1),#0x00
                           000AB4  3443 	C$Lab2.c$670$4$139 ==.
                                   3444 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:670: Mode3Rounds++;
      000B2B 05 39            [12] 3445 	inc	_Mode3Rounds
      000B2D E4               [12] 3446 	clr	a
      000B2E B5 39 02         [24] 3447 	cjne	a,_Mode3Rounds,01203$
      000B31 05 3A            [12] 3448 	inc	(_Mode3Rounds + 1)
      000B33                       3449 01203$:
                           000ABC  3450 	C$Lab2.c$671$4$139 ==.
                                   3451 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:671: goto playerturn;
      000B33 02 06 AB         [24] 3452 	ljmp	00101$
      000B36                       3453 00286$:
                           000ABF  3454 	C$Lab2.c$675$4$140 ==.
                                   3455 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:675: player2blink++;
      000B36 05 37            [12] 3456 	inc	_player2blink
      000B38 E4               [12] 3457 	clr	a
      000B39 B5 37 02         [24] 3458 	cjne	a,_player2blink,01204$
      000B3C 05 38            [12] 3459 	inc	(_player2blink + 1)
      000B3E                       3460 01204$:
                           000AC7  3461 	C$Lab2.c$678$3$134 ==.
                                   3462 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:678: counts = 0;
      000B3E E4               [12] 3463 	clr	a
      000B3F F5 22            [12] 3464 	mov	_counts,a
      000B41 F5 23            [12] 3465 	mov	(_counts + 1),a
                           000ACC  3466 	C$Lab2.c$679$3$134 ==.
                                   3467 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:679: turnOff();
      000B43 12 0E 8E         [24] 3468 	lcall	_turnOff
                           000ACF  3469 	C$Lab2.c$680$3$134 ==.
                                   3470 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:680: LED1 = 0;                                        //turn on right LED
      000B46 C2 B5            [12] 3471 	clr	_LED1
                           000AD1  3472 	C$Lab2.c$681$3$134 ==.
                                   3473 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:681: while (counts < blink_counts);                    //wait until set time
      000B48                       3474 00291$:
      000B48 C3               [12] 3475 	clr	c
      000B49 E5 22            [12] 3476 	mov	a,_counts
      000B4B 95 27            [12] 3477 	subb	a,_blink_counts
      000B4D E5 23            [12] 3478 	mov	a,(_counts + 1)
      000B4F 95 28            [12] 3479 	subb	a,(_blink_counts + 1)
      000B51 40 F5            [24] 3480 	jc	00291$
                           000ADC  3481 	C$Lab2.c$682$3$134 ==.
                                   3482 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:682: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      000B53 30 B1 1D         [24] 3483 	jnb	_PB0,00295$
      000B56 20 B0 1A         [24] 3484 	jb	_PB1,00295$
      000B59 30 A3 17         [24] 3485 	jnb	_PB2,00295$
      000B5C 30 A2 14         [24] 3486 	jnb	_PB3,00295$
                           000AE8  3487 	C$Lab2.c$684$4$141 ==.
                                   3488 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:684: debounce();
      000B5F 12 0E 9B         [24] 3489 	lcall	_debounce
                           000AEB  3490 	C$Lab2.c$685$4$141 ==.
                                   3491 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:685: player1turn = 1;
      000B62 75 33 01         [24] 3492 	mov	_player1turn,#0x01
      000B65 75 34 00         [24] 3493 	mov	(_player1turn + 1),#0x00
                           000AF1  3494 	C$Lab2.c$686$4$141 ==.
                                   3495 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:686: Mode3Rounds++;
      000B68 05 39            [12] 3496 	inc	_Mode3Rounds
      000B6A E4               [12] 3497 	clr	a
      000B6B B5 39 02         [24] 3498 	cjne	a,_Mode3Rounds,01210$
      000B6E 05 3A            [12] 3499 	inc	(_Mode3Rounds + 1)
      000B70                       3500 01210$:
                           000AF9  3501 	C$Lab2.c$687$4$141 ==.
                                   3502 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:687: goto playerturn;
      000B70 02 06 AB         [24] 3503 	ljmp	00101$
      000B73                       3504 00295$:
                           000AFC  3505 	C$Lab2.c$691$4$142 ==.
                                   3506 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:691: player2blink++;
      000B73 05 37            [12] 3507 	inc	_player2blink
      000B75 E4               [12] 3508 	clr	a
      000B76 B5 37 02         [24] 3509 	cjne	a,_player2blink,01211$
      000B79 05 38            [12] 3510 	inc	(_player2blink + 1)
      000B7B                       3511 01211$:
      000B7B 02 0A 7E         [24] 3512 	ljmp	00300$
                           000B07  3513 	C$Lab2.c$695$2$133 ==.
                                   3514 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:695: while (startLED == 1)
      000B7E                       3515 00339$:
      000B7E 74 01            [12] 3516 	mov	a,#0x01
      000B80 B5 31 06         [24] 3517 	cjne	a,_startLED,01212$
      000B83 14               [12] 3518 	dec	a
      000B84 B5 32 02         [24] 3519 	cjne	a,(_startLED + 1),01212$
      000B87 80 03            [24] 3520 	sjmp	01213$
      000B89                       3521 01212$:
      000B89 02 0C 83         [24] 3522 	ljmp	00378$
      000B8C                       3523 01213$:
                           000B15  3524 	C$Lab2.c$697$3$143 ==.
                                   3525 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:697: counts = 0;
      000B8C E4               [12] 3526 	clr	a
      000B8D F5 22            [12] 3527 	mov	_counts,a
      000B8F F5 23            [12] 3528 	mov	(_counts + 1),a
                           000B1A  3529 	C$Lab2.c$698$3$143 ==.
                                   3530 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:698: turnOff();
      000B91 12 0E 8E         [24] 3531 	lcall	_turnOff
                           000B1D  3532 	C$Lab2.c$699$3$143 ==.
                                   3533 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:699: LED1 = 0;                                        //turn on right LED
      000B94 C2 B5            [12] 3534 	clr	_LED1
                           000B1F  3535 	C$Lab2.c$700$3$143 ==.
                                   3536 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:700: while (counts < blink_counts);                    //wait until set time
      000B96                       3537 00303$:
      000B96 C3               [12] 3538 	clr	c
      000B97 E5 22            [12] 3539 	mov	a,_counts
      000B99 95 27            [12] 3540 	subb	a,_blink_counts
      000B9B E5 23            [12] 3541 	mov	a,(_counts + 1)
      000B9D 95 28            [12] 3542 	subb	a,(_blink_counts + 1)
      000B9F 40 F5            [24] 3543 	jc	00303$
                           000B2A  3544 	C$Lab2.c$701$3$143 ==.
                                   3545 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:701: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      000BA1 30 B1 1D         [24] 3546 	jnb	_PB0,00307$
      000BA4 20 B0 1A         [24] 3547 	jb	_PB1,00307$
      000BA7 30 A3 17         [24] 3548 	jnb	_PB2,00307$
      000BAA 30 A2 14         [24] 3549 	jnb	_PB3,00307$
                           000B36  3550 	C$Lab2.c$703$4$144 ==.
                                   3551 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:703: debounce();
      000BAD 12 0E 9B         [24] 3552 	lcall	_debounce
                           000B39  3553 	C$Lab2.c$704$4$144 ==.
                                   3554 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:704: player1turn = 1;
      000BB0 75 33 01         [24] 3555 	mov	_player1turn,#0x01
      000BB3 75 34 00         [24] 3556 	mov	(_player1turn + 1),#0x00
                           000B3F  3557 	C$Lab2.c$705$4$144 ==.
                                   3558 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:705: Mode3Rounds++;
      000BB6 05 39            [12] 3559 	inc	_Mode3Rounds
      000BB8 E4               [12] 3560 	clr	a
      000BB9 B5 39 02         [24] 3561 	cjne	a,_Mode3Rounds,01219$
      000BBC 05 3A            [12] 3562 	inc	(_Mode3Rounds + 1)
      000BBE                       3563 01219$:
                           000B47  3564 	C$Lab2.c$706$4$144 ==.
                                   3565 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:706: goto playerturn;
      000BBE 02 06 AB         [24] 3566 	ljmp	00101$
      000BC1                       3567 00307$:
                           000B4A  3568 	C$Lab2.c$710$4$145 ==.
                                   3569 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:710: player2blink++;
      000BC1 05 37            [12] 3570 	inc	_player2blink
      000BC3 E4               [12] 3571 	clr	a
      000BC4 B5 37 02         [24] 3572 	cjne	a,_player2blink,01220$
      000BC7 05 38            [12] 3573 	inc	(_player2blink + 1)
      000BC9                       3574 01220$:
                           000B52  3575 	C$Lab2.c$713$3$143 ==.
                                   3576 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:713: counts = 0;
      000BC9 E4               [12] 3577 	clr	a
      000BCA F5 22            [12] 3578 	mov	_counts,a
      000BCC F5 23            [12] 3579 	mov	(_counts + 1),a
                           000B57  3580 	C$Lab2.c$714$3$143 ==.
                                   3581 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:714: turnOff();
      000BCE 12 0E 8E         [24] 3582 	lcall	_turnOff
                           000B5A  3583 	C$Lab2.c$715$3$143 ==.
                                   3584 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:715: LED0 = 0;                                        //turn on top LED
      000BD1 C2 B6            [12] 3585 	clr	_LED0
                           000B5C  3586 	C$Lab2.c$716$3$143 ==.
                                   3587 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:716: while (counts < blink_counts);                    //wait until set time
      000BD3                       3588 00312$:
      000BD3 C3               [12] 3589 	clr	c
      000BD4 E5 22            [12] 3590 	mov	a,_counts
      000BD6 95 27            [12] 3591 	subb	a,_blink_counts
      000BD8 E5 23            [12] 3592 	mov	a,(_counts + 1)
      000BDA 95 28            [12] 3593 	subb	a,(_blink_counts + 1)
      000BDC 40 F5            [24] 3594 	jc	00312$
                           000B67  3595 	C$Lab2.c$717$3$143 ==.
                                   3596 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:717: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      000BDE 20 B1 1D         [24] 3597 	jb	_PB0,00316$
      000BE1 30 B0 1A         [24] 3598 	jnb	_PB1,00316$
      000BE4 30 A3 17         [24] 3599 	jnb	_PB2,00316$
      000BE7 30 A2 14         [24] 3600 	jnb	_PB3,00316$
                           000B73  3601 	C$Lab2.c$719$4$146 ==.
                                   3602 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:719: debounce();
      000BEA 12 0E 9B         [24] 3603 	lcall	_debounce
                           000B76  3604 	C$Lab2.c$720$4$146 ==.
                                   3605 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:720: player1turn = 1;
      000BED 75 33 01         [24] 3606 	mov	_player1turn,#0x01
      000BF0 75 34 00         [24] 3607 	mov	(_player1turn + 1),#0x00
                           000B7C  3608 	C$Lab2.c$721$4$146 ==.
                                   3609 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:721: Mode3Rounds++;
      000BF3 05 39            [12] 3610 	inc	_Mode3Rounds
      000BF5 E4               [12] 3611 	clr	a
      000BF6 B5 39 02         [24] 3612 	cjne	a,_Mode3Rounds,01226$
      000BF9 05 3A            [12] 3613 	inc	(_Mode3Rounds + 1)
      000BFB                       3614 01226$:
                           000B84  3615 	C$Lab2.c$722$4$146 ==.
                                   3616 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:722: goto playerturn;
      000BFB 02 06 AB         [24] 3617 	ljmp	00101$
      000BFE                       3618 00316$:
                           000B87  3619 	C$Lab2.c$726$4$147 ==.
                                   3620 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:726: player2blink++;
      000BFE 05 37            [12] 3621 	inc	_player2blink
      000C00 E4               [12] 3622 	clr	a
      000C01 B5 37 02         [24] 3623 	cjne	a,_player2blink,01227$
      000C04 05 38            [12] 3624 	inc	(_player2blink + 1)
      000C06                       3625 01227$:
                           000B8F  3626 	C$Lab2.c$729$3$143 ==.
                                   3627 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:729: counts = 0;
      000C06 E4               [12] 3628 	clr	a
      000C07 F5 22            [12] 3629 	mov	_counts,a
      000C09 F5 23            [12] 3630 	mov	(_counts + 1),a
                           000B94  3631 	C$Lab2.c$730$3$143 ==.
                                   3632 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:730: turnOff();
      000C0B 12 0E 8E         [24] 3633 	lcall	_turnOff
                           000B97  3634 	C$Lab2.c$731$3$143 ==.
                                   3635 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:731: LED3 = 0;                                        //turn on left LED
      000C0E C2 A1            [12] 3636 	clr	_LED3
                           000B99  3637 	C$Lab2.c$732$3$143 ==.
                                   3638 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:732: while (counts < blink_counts);                    //wait until set time
      000C10                       3639 00321$:
      000C10 C3               [12] 3640 	clr	c
      000C11 E5 22            [12] 3641 	mov	a,_counts
      000C13 95 27            [12] 3642 	subb	a,_blink_counts
      000C15 E5 23            [12] 3643 	mov	a,(_counts + 1)
      000C17 95 28            [12] 3644 	subb	a,(_blink_counts + 1)
      000C19 40 F5            [24] 3645 	jc	00321$
                           000BA4  3646 	C$Lab2.c$733$3$143 ==.
                                   3647 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:733: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      000C1B 30 B1 1D         [24] 3648 	jnb	_PB0,00325$
      000C1E 30 B0 1A         [24] 3649 	jnb	_PB1,00325$
      000C21 30 A3 17         [24] 3650 	jnb	_PB2,00325$
      000C24 20 A2 14         [24] 3651 	jb	_PB3,00325$
                           000BB0  3652 	C$Lab2.c$735$4$148 ==.
                                   3653 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:735: debounce();
      000C27 12 0E 9B         [24] 3654 	lcall	_debounce
                           000BB3  3655 	C$Lab2.c$736$4$148 ==.
                                   3656 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:736: player1turn = 1;
      000C2A 75 33 01         [24] 3657 	mov	_player1turn,#0x01
      000C2D 75 34 00         [24] 3658 	mov	(_player1turn + 1),#0x00
                           000BB9  3659 	C$Lab2.c$737$4$148 ==.
                                   3660 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:737: Mode3Rounds++;
      000C30 05 39            [12] 3661 	inc	_Mode3Rounds
      000C32 E4               [12] 3662 	clr	a
      000C33 B5 39 02         [24] 3663 	cjne	a,_Mode3Rounds,01233$
      000C36 05 3A            [12] 3664 	inc	(_Mode3Rounds + 1)
      000C38                       3665 01233$:
                           000BC1  3666 	C$Lab2.c$738$4$148 ==.
                                   3667 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:738: goto playerturn;
      000C38 02 06 AB         [24] 3668 	ljmp	00101$
      000C3B                       3669 00325$:
                           000BC4  3670 	C$Lab2.c$742$4$149 ==.
                                   3671 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:742: player2blink++;
      000C3B 05 37            [12] 3672 	inc	_player2blink
      000C3D E4               [12] 3673 	clr	a
      000C3E B5 37 02         [24] 3674 	cjne	a,_player2blink,01234$
      000C41 05 38            [12] 3675 	inc	(_player2blink + 1)
      000C43                       3676 01234$:
                           000BCC  3677 	C$Lab2.c$745$3$143 ==.
                                   3678 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:745: counts = 0;
      000C43 E4               [12] 3679 	clr	a
      000C44 F5 22            [12] 3680 	mov	_counts,a
      000C46 F5 23            [12] 3681 	mov	(_counts + 1),a
                           000BD1  3682 	C$Lab2.c$746$3$143 ==.
                                   3683 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:746: turnOff();
      000C48 12 0E 8E         [24] 3684 	lcall	_turnOff
                           000BD4  3685 	C$Lab2.c$747$3$143 ==.
                                   3686 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:747: LED2 = 0;                                        //turn on bottom LED
      000C4B C2 B2            [12] 3687 	clr	_LED2
                           000BD6  3688 	C$Lab2.c$748$3$143 ==.
                                   3689 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:748: while (counts < blink_counts);                    //wait until set time
      000C4D                       3690 00330$:
      000C4D C3               [12] 3691 	clr	c
      000C4E E5 22            [12] 3692 	mov	a,_counts
      000C50 95 27            [12] 3693 	subb	a,_blink_counts
      000C52 E5 23            [12] 3694 	mov	a,(_counts + 1)
      000C54 95 28            [12] 3695 	subb	a,(_blink_counts + 1)
      000C56 40 F5            [24] 3696 	jc	00330$
                           000BE1  3697 	C$Lab2.c$749$3$143 ==.
                                   3698 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:749: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      000C58 30 B1 1D         [24] 3699 	jnb	_PB0,00334$
      000C5B 30 B0 1A         [24] 3700 	jnb	_PB1,00334$
      000C5E 20 A3 17         [24] 3701 	jb	_PB2,00334$
      000C61 30 A2 14         [24] 3702 	jnb	_PB3,00334$
                           000BED  3703 	C$Lab2.c$751$4$150 ==.
                                   3704 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:751: debounce();
      000C64 12 0E 9B         [24] 3705 	lcall	_debounce
                           000BF0  3706 	C$Lab2.c$752$4$150 ==.
                                   3707 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:752: player1turn = 1;
      000C67 75 33 01         [24] 3708 	mov	_player1turn,#0x01
      000C6A 75 34 00         [24] 3709 	mov	(_player1turn + 1),#0x00
                           000BF6  3710 	C$Lab2.c$753$4$150 ==.
                                   3711 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:753: Mode3Rounds++;
      000C6D 05 39            [12] 3712 	inc	_Mode3Rounds
      000C6F E4               [12] 3713 	clr	a
      000C70 B5 39 02         [24] 3714 	cjne	a,_Mode3Rounds,01240$
      000C73 05 3A            [12] 3715 	inc	(_Mode3Rounds + 1)
      000C75                       3716 01240$:
                           000BFE  3717 	C$Lab2.c$754$4$150 ==.
                                   3718 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:754: goto playerturn;
      000C75 02 06 AB         [24] 3719 	ljmp	00101$
      000C78                       3720 00334$:
                           000C01  3721 	C$Lab2.c$758$4$151 ==.
                                   3722 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:758: player2blink++;
      000C78 05 37            [12] 3723 	inc	_player2blink
      000C7A E4               [12] 3724 	clr	a
      000C7B B5 37 02         [24] 3725 	cjne	a,_player2blink,01241$
      000C7E 05 38            [12] 3726 	inc	(_player2blink + 1)
      000C80                       3727 01241$:
      000C80 02 0B 7E         [24] 3728 	ljmp	00339$
                           000C0C  3729 	C$Lab2.c$762$2$133 ==.
                                   3730 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:762: while (startLED == 2)
      000C83                       3731 00378$:
      000C83 74 02            [12] 3732 	mov	a,#0x02
      000C85 B5 31 06         [24] 3733 	cjne	a,_startLED,01242$
      000C88 E4               [12] 3734 	clr	a
      000C89 B5 32 02         [24] 3735 	cjne	a,(_startLED + 1),01242$
      000C8C 80 03            [24] 3736 	sjmp	01243$
      000C8E                       3737 01242$:
      000C8E 02 0D 88         [24] 3738 	ljmp	00417$
      000C91                       3739 01243$:
                           000C1A  3740 	C$Lab2.c$764$3$152 ==.
                                   3741 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:764: counts = 0;
      000C91 E4               [12] 3742 	clr	a
      000C92 F5 22            [12] 3743 	mov	_counts,a
      000C94 F5 23            [12] 3744 	mov	(_counts + 1),a
                           000C1F  3745 	C$Lab2.c$765$3$152 ==.
                                   3746 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:765: turnOff();
      000C96 12 0E 8E         [24] 3747 	lcall	_turnOff
                           000C22  3748 	C$Lab2.c$766$3$152 ==.
                                   3749 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:766: LED2 = 0;                                        //turn on bottom LED
      000C99 C2 B2            [12] 3750 	clr	_LED2
                           000C24  3751 	C$Lab2.c$767$3$152 ==.
                                   3752 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:767: while (counts < blink_counts);                    //wait until set time
      000C9B                       3753 00342$:
      000C9B C3               [12] 3754 	clr	c
      000C9C E5 22            [12] 3755 	mov	a,_counts
      000C9E 95 27            [12] 3756 	subb	a,_blink_counts
      000CA0 E5 23            [12] 3757 	mov	a,(_counts + 1)
      000CA2 95 28            [12] 3758 	subb	a,(_blink_counts + 1)
      000CA4 40 F5            [24] 3759 	jc	00342$
                           000C2F  3760 	C$Lab2.c$768$3$152 ==.
                                   3761 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:768: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      000CA6 30 B1 1D         [24] 3762 	jnb	_PB0,00346$
      000CA9 30 B0 1A         [24] 3763 	jnb	_PB1,00346$
      000CAC 20 A3 17         [24] 3764 	jb	_PB2,00346$
      000CAF 30 A2 14         [24] 3765 	jnb	_PB3,00346$
                           000C3B  3766 	C$Lab2.c$770$4$153 ==.
                                   3767 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:770: debounce();
      000CB2 12 0E 9B         [24] 3768 	lcall	_debounce
                           000C3E  3769 	C$Lab2.c$771$4$153 ==.
                                   3770 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:771: player1turn = 1;
      000CB5 75 33 01         [24] 3771 	mov	_player1turn,#0x01
      000CB8 75 34 00         [24] 3772 	mov	(_player1turn + 1),#0x00
                           000C44  3773 	C$Lab2.c$772$4$153 ==.
                                   3774 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:772: Mode3Rounds++;
      000CBB 05 39            [12] 3775 	inc	_Mode3Rounds
      000CBD E4               [12] 3776 	clr	a
      000CBE B5 39 02         [24] 3777 	cjne	a,_Mode3Rounds,01249$
      000CC1 05 3A            [12] 3778 	inc	(_Mode3Rounds + 1)
      000CC3                       3779 01249$:
                           000C4C  3780 	C$Lab2.c$773$4$153 ==.
                                   3781 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:773: goto playerturn;
      000CC3 02 06 AB         [24] 3782 	ljmp	00101$
      000CC6                       3783 00346$:
                           000C4F  3784 	C$Lab2.c$777$4$154 ==.
                                   3785 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:777: player2blink++;
      000CC6 05 37            [12] 3786 	inc	_player2blink
      000CC8 E4               [12] 3787 	clr	a
      000CC9 B5 37 02         [24] 3788 	cjne	a,_player2blink,01250$
      000CCC 05 38            [12] 3789 	inc	(_player2blink + 1)
      000CCE                       3790 01250$:
                           000C57  3791 	C$Lab2.c$780$3$152 ==.
                                   3792 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:780: counts = 0;
      000CCE E4               [12] 3793 	clr	a
      000CCF F5 22            [12] 3794 	mov	_counts,a
      000CD1 F5 23            [12] 3795 	mov	(_counts + 1),a
                           000C5C  3796 	C$Lab2.c$781$3$152 ==.
                                   3797 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:781: turnOff();
      000CD3 12 0E 8E         [24] 3798 	lcall	_turnOff
                           000C5F  3799 	C$Lab2.c$782$3$152 ==.
                                   3800 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:782: LED1 = 0;                                        //turn on right LED
      000CD6 C2 B5            [12] 3801 	clr	_LED1
                           000C61  3802 	C$Lab2.c$783$3$152 ==.
                                   3803 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:783: while (counts < blink_counts);                    //wait until set time
      000CD8                       3804 00351$:
      000CD8 C3               [12] 3805 	clr	c
      000CD9 E5 22            [12] 3806 	mov	a,_counts
      000CDB 95 27            [12] 3807 	subb	a,_blink_counts
      000CDD E5 23            [12] 3808 	mov	a,(_counts + 1)
      000CDF 95 28            [12] 3809 	subb	a,(_blink_counts + 1)
      000CE1 40 F5            [24] 3810 	jc	00351$
                           000C6C  3811 	C$Lab2.c$784$3$152 ==.
                                   3812 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:784: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      000CE3 30 B1 1D         [24] 3813 	jnb	_PB0,00355$
      000CE6 20 B0 1A         [24] 3814 	jb	_PB1,00355$
      000CE9 30 A3 17         [24] 3815 	jnb	_PB2,00355$
      000CEC 30 A2 14         [24] 3816 	jnb	_PB3,00355$
                           000C78  3817 	C$Lab2.c$786$4$155 ==.
                                   3818 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:786: debounce();
      000CEF 12 0E 9B         [24] 3819 	lcall	_debounce
                           000C7B  3820 	C$Lab2.c$787$4$155 ==.
                                   3821 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:787: player1turn = 1;
      000CF2 75 33 01         [24] 3822 	mov	_player1turn,#0x01
      000CF5 75 34 00         [24] 3823 	mov	(_player1turn + 1),#0x00
                           000C81  3824 	C$Lab2.c$788$4$155 ==.
                                   3825 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:788: Mode3Rounds++;
      000CF8 05 39            [12] 3826 	inc	_Mode3Rounds
      000CFA E4               [12] 3827 	clr	a
      000CFB B5 39 02         [24] 3828 	cjne	a,_Mode3Rounds,01256$
      000CFE 05 3A            [12] 3829 	inc	(_Mode3Rounds + 1)
      000D00                       3830 01256$:
                           000C89  3831 	C$Lab2.c$789$4$155 ==.
                                   3832 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:789: goto playerturn;
      000D00 02 06 AB         [24] 3833 	ljmp	00101$
      000D03                       3834 00355$:
                           000C8C  3835 	C$Lab2.c$793$4$156 ==.
                                   3836 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:793: player2blink++;
      000D03 05 37            [12] 3837 	inc	_player2blink
      000D05 E4               [12] 3838 	clr	a
      000D06 B5 37 02         [24] 3839 	cjne	a,_player2blink,01257$
      000D09 05 38            [12] 3840 	inc	(_player2blink + 1)
      000D0B                       3841 01257$:
                           000C94  3842 	C$Lab2.c$796$3$152 ==.
                                   3843 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:796: counts = 0;
      000D0B E4               [12] 3844 	clr	a
      000D0C F5 22            [12] 3845 	mov	_counts,a
      000D0E F5 23            [12] 3846 	mov	(_counts + 1),a
                           000C99  3847 	C$Lab2.c$797$3$152 ==.
                                   3848 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:797: turnOff();
      000D10 12 0E 8E         [24] 3849 	lcall	_turnOff
                           000C9C  3850 	C$Lab2.c$798$3$152 ==.
                                   3851 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:798: LED0 = 0;                                        //turn on top LED
      000D13 C2 B6            [12] 3852 	clr	_LED0
                           000C9E  3853 	C$Lab2.c$799$3$152 ==.
                                   3854 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:799: while (counts < blink_counts);                    //wait until set time
      000D15                       3855 00360$:
      000D15 C3               [12] 3856 	clr	c
      000D16 E5 22            [12] 3857 	mov	a,_counts
      000D18 95 27            [12] 3858 	subb	a,_blink_counts
      000D1A E5 23            [12] 3859 	mov	a,(_counts + 1)
      000D1C 95 28            [12] 3860 	subb	a,(_blink_counts + 1)
      000D1E 40 F5            [24] 3861 	jc	00360$
                           000CA9  3862 	C$Lab2.c$800$3$152 ==.
                                   3863 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:800: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      000D20 20 B1 1D         [24] 3864 	jb	_PB0,00364$
      000D23 30 B0 1A         [24] 3865 	jnb	_PB1,00364$
      000D26 30 A3 17         [24] 3866 	jnb	_PB2,00364$
      000D29 30 A2 14         [24] 3867 	jnb	_PB3,00364$
                           000CB5  3868 	C$Lab2.c$802$4$157 ==.
                                   3869 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:802: debounce();
      000D2C 12 0E 9B         [24] 3870 	lcall	_debounce
                           000CB8  3871 	C$Lab2.c$803$4$157 ==.
                                   3872 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:803: player1turn = 1;
      000D2F 75 33 01         [24] 3873 	mov	_player1turn,#0x01
      000D32 75 34 00         [24] 3874 	mov	(_player1turn + 1),#0x00
                           000CBE  3875 	C$Lab2.c$804$4$157 ==.
                                   3876 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:804: Mode3Rounds++;
      000D35 05 39            [12] 3877 	inc	_Mode3Rounds
      000D37 E4               [12] 3878 	clr	a
      000D38 B5 39 02         [24] 3879 	cjne	a,_Mode3Rounds,01263$
      000D3B 05 3A            [12] 3880 	inc	(_Mode3Rounds + 1)
      000D3D                       3881 01263$:
                           000CC6  3882 	C$Lab2.c$805$4$157 ==.
                                   3883 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:805: goto playerturn;
      000D3D 02 06 AB         [24] 3884 	ljmp	00101$
      000D40                       3885 00364$:
                           000CC9  3886 	C$Lab2.c$809$4$158 ==.
                                   3887 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:809: player2blink++;
      000D40 05 37            [12] 3888 	inc	_player2blink
      000D42 E4               [12] 3889 	clr	a
      000D43 B5 37 02         [24] 3890 	cjne	a,_player2blink,01264$
      000D46 05 38            [12] 3891 	inc	(_player2blink + 1)
      000D48                       3892 01264$:
                           000CD1  3893 	C$Lab2.c$812$3$152 ==.
                                   3894 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:812: counts = 0;
      000D48 E4               [12] 3895 	clr	a
      000D49 F5 22            [12] 3896 	mov	_counts,a
      000D4B F5 23            [12] 3897 	mov	(_counts + 1),a
                           000CD6  3898 	C$Lab2.c$813$3$152 ==.
                                   3899 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:813: turnOff();
      000D4D 12 0E 8E         [24] 3900 	lcall	_turnOff
                           000CD9  3901 	C$Lab2.c$814$3$152 ==.
                                   3902 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:814: LED3 = 0;                                        //turn on left LED
      000D50 C2 A1            [12] 3903 	clr	_LED3
                           000CDB  3904 	C$Lab2.c$815$3$152 ==.
                                   3905 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:815: while (counts < blink_counts);                    //wait until set time
      000D52                       3906 00369$:
      000D52 C3               [12] 3907 	clr	c
      000D53 E5 22            [12] 3908 	mov	a,_counts
      000D55 95 27            [12] 3909 	subb	a,_blink_counts
      000D57 E5 23            [12] 3910 	mov	a,(_counts + 1)
      000D59 95 28            [12] 3911 	subb	a,(_blink_counts + 1)
      000D5B 40 F5            [24] 3912 	jc	00369$
                           000CE6  3913 	C$Lab2.c$816$3$152 ==.
                                   3914 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:816: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      000D5D 30 B1 1D         [24] 3915 	jnb	_PB0,00373$
      000D60 30 B0 1A         [24] 3916 	jnb	_PB1,00373$
      000D63 30 A3 17         [24] 3917 	jnb	_PB2,00373$
      000D66 20 A2 14         [24] 3918 	jb	_PB3,00373$
                           000CF2  3919 	C$Lab2.c$818$4$159 ==.
                                   3920 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:818: debounce();
      000D69 12 0E 9B         [24] 3921 	lcall	_debounce
                           000CF5  3922 	C$Lab2.c$819$4$159 ==.
                                   3923 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:819: player1turn = 1;
      000D6C 75 33 01         [24] 3924 	mov	_player1turn,#0x01
      000D6F 75 34 00         [24] 3925 	mov	(_player1turn + 1),#0x00
                           000CFB  3926 	C$Lab2.c$820$4$159 ==.
                                   3927 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:820: Mode3Rounds++;
      000D72 05 39            [12] 3928 	inc	_Mode3Rounds
      000D74 E4               [12] 3929 	clr	a
      000D75 B5 39 02         [24] 3930 	cjne	a,_Mode3Rounds,01270$
      000D78 05 3A            [12] 3931 	inc	(_Mode3Rounds + 1)
      000D7A                       3932 01270$:
                           000D03  3933 	C$Lab2.c$821$4$159 ==.
                                   3934 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:821: goto playerturn;
      000D7A 02 06 AB         [24] 3935 	ljmp	00101$
      000D7D                       3936 00373$:
                           000D06  3937 	C$Lab2.c$825$4$160 ==.
                                   3938 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:825: player2blink++;
      000D7D 05 37            [12] 3939 	inc	_player2blink
      000D7F E4               [12] 3940 	clr	a
      000D80 B5 37 02         [24] 3941 	cjne	a,_player2blink,01271$
      000D83 05 38            [12] 3942 	inc	(_player2blink + 1)
      000D85                       3943 01271$:
      000D85 02 0C 83         [24] 3944 	ljmp	00378$
                           000D11  3945 	C$Lab2.c$829$2$133 ==.
                                   3946 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:829: while (startLED == 3)
      000D88                       3947 00417$:
      000D88 74 03            [12] 3948 	mov	a,#0x03
      000D8A B5 31 06         [24] 3949 	cjne	a,_startLED,01272$
      000D8D E4               [12] 3950 	clr	a
      000D8E B5 32 02         [24] 3951 	cjne	a,(_startLED + 1),01272$
      000D91 80 03            [24] 3952 	sjmp	01273$
      000D93                       3953 01272$:
      000D93 02 0A 72         [24] 3954 	ljmp	00420$
      000D96                       3955 01273$:
                           000D1F  3956 	C$Lab2.c$831$3$161 ==.
                                   3957 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:831: counts = 0;
      000D96 E4               [12] 3958 	clr	a
      000D97 F5 22            [12] 3959 	mov	_counts,a
      000D99 F5 23            [12] 3960 	mov	(_counts + 1),a
                           000D24  3961 	C$Lab2.c$832$3$161 ==.
                                   3962 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:832: turnOff();
      000D9B 12 0E 8E         [24] 3963 	lcall	_turnOff
                           000D27  3964 	C$Lab2.c$833$3$161 ==.
                                   3965 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:833: LED3 = 0;                                        //turn on left LED
      000D9E C2 A1            [12] 3966 	clr	_LED3
                           000D29  3967 	C$Lab2.c$834$3$161 ==.
                                   3968 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:834: while (counts < blink_counts);                    //wait until set time
      000DA0                       3969 00381$:
      000DA0 C3               [12] 3970 	clr	c
      000DA1 E5 22            [12] 3971 	mov	a,_counts
      000DA3 95 27            [12] 3972 	subb	a,_blink_counts
      000DA5 E5 23            [12] 3973 	mov	a,(_counts + 1)
      000DA7 95 28            [12] 3974 	subb	a,(_blink_counts + 1)
      000DA9 40 F5            [24] 3975 	jc	00381$
                           000D34  3976 	C$Lab2.c$835$3$161 ==.
                                   3977 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:835: if (PB0 == 1 && PB1 == 1 && PB2 == 1 && PB3 == 0)
      000DAB 30 B1 1D         [24] 3978 	jnb	_PB0,00385$
      000DAE 30 B0 1A         [24] 3979 	jnb	_PB1,00385$
      000DB1 30 A3 17         [24] 3980 	jnb	_PB2,00385$
      000DB4 20 A2 14         [24] 3981 	jb	_PB3,00385$
                           000D40  3982 	C$Lab2.c$837$4$162 ==.
                                   3983 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:837: debounce();
      000DB7 12 0E 9B         [24] 3984 	lcall	_debounce
                           000D43  3985 	C$Lab2.c$838$4$162 ==.
                                   3986 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:838: player1turn = 1;
      000DBA 75 33 01         [24] 3987 	mov	_player1turn,#0x01
      000DBD 75 34 00         [24] 3988 	mov	(_player1turn + 1),#0x00
                           000D49  3989 	C$Lab2.c$839$4$162 ==.
                                   3990 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:839: Mode3Rounds++;
      000DC0 05 39            [12] 3991 	inc	_Mode3Rounds
      000DC2 E4               [12] 3992 	clr	a
      000DC3 B5 39 02         [24] 3993 	cjne	a,_Mode3Rounds,01279$
      000DC6 05 3A            [12] 3994 	inc	(_Mode3Rounds + 1)
      000DC8                       3995 01279$:
                           000D51  3996 	C$Lab2.c$840$4$162 ==.
                                   3997 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:840: goto playerturn;
      000DC8 02 06 AB         [24] 3998 	ljmp	00101$
      000DCB                       3999 00385$:
                           000D54  4000 	C$Lab2.c$844$4$163 ==.
                                   4001 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:844: player2blink++;
      000DCB 05 37            [12] 4002 	inc	_player2blink
      000DCD E4               [12] 4003 	clr	a
      000DCE B5 37 02         [24] 4004 	cjne	a,_player2blink,01280$
      000DD1 05 38            [12] 4005 	inc	(_player2blink + 1)
      000DD3                       4006 01280$:
                           000D5C  4007 	C$Lab2.c$847$3$161 ==.
                                   4008 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:847: counts = 0;
      000DD3 E4               [12] 4009 	clr	a
      000DD4 F5 22            [12] 4010 	mov	_counts,a
      000DD6 F5 23            [12] 4011 	mov	(_counts + 1),a
                           000D61  4012 	C$Lab2.c$848$3$161 ==.
                                   4013 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:848: turnOff();
      000DD8 12 0E 8E         [24] 4014 	lcall	_turnOff
                           000D64  4015 	C$Lab2.c$849$3$161 ==.
                                   4016 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:849: LED2 = 0;                                        //turn on bottom LED
      000DDB C2 B2            [12] 4017 	clr	_LED2
                           000D66  4018 	C$Lab2.c$850$3$161 ==.
                                   4019 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:850: while (counts < blink_counts);                    //wait until set time
      000DDD                       4020 00390$:
      000DDD C3               [12] 4021 	clr	c
      000DDE E5 22            [12] 4022 	mov	a,_counts
      000DE0 95 27            [12] 4023 	subb	a,_blink_counts
      000DE2 E5 23            [12] 4024 	mov	a,(_counts + 1)
      000DE4 95 28            [12] 4025 	subb	a,(_blink_counts + 1)
      000DE6 40 F5            [24] 4026 	jc	00390$
                           000D71  4027 	C$Lab2.c$851$3$161 ==.
                                   4028 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:851: if (PB0 == 1 && PB1 == 1 && PB2 == 0 && PB3 == 1)
      000DE8 30 B1 1D         [24] 4029 	jnb	_PB0,00394$
      000DEB 30 B0 1A         [24] 4030 	jnb	_PB1,00394$
      000DEE 20 A3 17         [24] 4031 	jb	_PB2,00394$
      000DF1 30 A2 14         [24] 4032 	jnb	_PB3,00394$
                           000D7D  4033 	C$Lab2.c$853$4$164 ==.
                                   4034 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:853: debounce();
      000DF4 12 0E 9B         [24] 4035 	lcall	_debounce
                           000D80  4036 	C$Lab2.c$854$4$164 ==.
                                   4037 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:854: player1turn = 1;
      000DF7 75 33 01         [24] 4038 	mov	_player1turn,#0x01
      000DFA 75 34 00         [24] 4039 	mov	(_player1turn + 1),#0x00
                           000D86  4040 	C$Lab2.c$855$4$164 ==.
                                   4041 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:855: Mode3Rounds++;
      000DFD 05 39            [12] 4042 	inc	_Mode3Rounds
      000DFF E4               [12] 4043 	clr	a
      000E00 B5 39 02         [24] 4044 	cjne	a,_Mode3Rounds,01286$
      000E03 05 3A            [12] 4045 	inc	(_Mode3Rounds + 1)
      000E05                       4046 01286$:
                           000D8E  4047 	C$Lab2.c$856$4$164 ==.
                                   4048 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:856: goto playerturn;
      000E05 02 06 AB         [24] 4049 	ljmp	00101$
      000E08                       4050 00394$:
                           000D91  4051 	C$Lab2.c$860$4$165 ==.
                                   4052 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:860: player2blink++;
      000E08 05 37            [12] 4053 	inc	_player2blink
      000E0A E4               [12] 4054 	clr	a
      000E0B B5 37 02         [24] 4055 	cjne	a,_player2blink,01287$
      000E0E 05 38            [12] 4056 	inc	(_player2blink + 1)
      000E10                       4057 01287$:
                           000D99  4058 	C$Lab2.c$863$3$161 ==.
                                   4059 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:863: counts = 0;
      000E10 E4               [12] 4060 	clr	a
      000E11 F5 22            [12] 4061 	mov	_counts,a
      000E13 F5 23            [12] 4062 	mov	(_counts + 1),a
                           000D9E  4063 	C$Lab2.c$864$3$161 ==.
                                   4064 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:864: turnOff();
      000E15 12 0E 8E         [24] 4065 	lcall	_turnOff
                           000DA1  4066 	C$Lab2.c$865$3$161 ==.
                                   4067 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:865: LED1 = 0;                                        //turn on right LED
      000E18 C2 B5            [12] 4068 	clr	_LED1
                           000DA3  4069 	C$Lab2.c$866$3$161 ==.
                                   4070 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:866: while (counts < blink_counts);                    //wait until set time
      000E1A                       4071 00399$:
      000E1A C3               [12] 4072 	clr	c
      000E1B E5 22            [12] 4073 	mov	a,_counts
      000E1D 95 27            [12] 4074 	subb	a,_blink_counts
      000E1F E5 23            [12] 4075 	mov	a,(_counts + 1)
      000E21 95 28            [12] 4076 	subb	a,(_blink_counts + 1)
      000E23 40 F5            [24] 4077 	jc	00399$
                           000DAE  4078 	C$Lab2.c$867$3$161 ==.
                                   4079 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:867: if (PB0 == 1 && PB1 == 0 && PB2 == 1 && PB3 == 1)
      000E25 30 B1 1D         [24] 4080 	jnb	_PB0,00403$
      000E28 20 B0 1A         [24] 4081 	jb	_PB1,00403$
      000E2B 30 A3 17         [24] 4082 	jnb	_PB2,00403$
      000E2E 30 A2 14         [24] 4083 	jnb	_PB3,00403$
                           000DBA  4084 	C$Lab2.c$869$4$166 ==.
                                   4085 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:869: debounce();
      000E31 12 0E 9B         [24] 4086 	lcall	_debounce
                           000DBD  4087 	C$Lab2.c$870$4$166 ==.
                                   4088 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:870: player1turn = 1;
      000E34 75 33 01         [24] 4089 	mov	_player1turn,#0x01
      000E37 75 34 00         [24] 4090 	mov	(_player1turn + 1),#0x00
                           000DC3  4091 	C$Lab2.c$871$4$166 ==.
                                   4092 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:871: Mode3Rounds++;
      000E3A 05 39            [12] 4093 	inc	_Mode3Rounds
      000E3C E4               [12] 4094 	clr	a
      000E3D B5 39 02         [24] 4095 	cjne	a,_Mode3Rounds,01293$
      000E40 05 3A            [12] 4096 	inc	(_Mode3Rounds + 1)
      000E42                       4097 01293$:
                           000DCB  4098 	C$Lab2.c$872$4$166 ==.
                                   4099 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:872: goto playerturn;
      000E42 02 06 AB         [24] 4100 	ljmp	00101$
      000E45                       4101 00403$:
                           000DCE  4102 	C$Lab2.c$876$4$167 ==.
                                   4103 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:876: player2blink++;
      000E45 05 37            [12] 4104 	inc	_player2blink
      000E47 E4               [12] 4105 	clr	a
      000E48 B5 37 02         [24] 4106 	cjne	a,_player2blink,01294$
      000E4B 05 38            [12] 4107 	inc	(_player2blink + 1)
      000E4D                       4108 01294$:
                           000DD6  4109 	C$Lab2.c$879$3$161 ==.
                                   4110 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:879: counts = 0;
      000E4D E4               [12] 4111 	clr	a
      000E4E F5 22            [12] 4112 	mov	_counts,a
      000E50 F5 23            [12] 4113 	mov	(_counts + 1),a
                           000DDB  4114 	C$Lab2.c$880$3$161 ==.
                                   4115 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:880: turnOff();
      000E52 12 0E 8E         [24] 4116 	lcall	_turnOff
                           000DDE  4117 	C$Lab2.c$881$3$161 ==.
                                   4118 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:881: LED0 = 0;                                        //turn on top LED
      000E55 C2 B6            [12] 4119 	clr	_LED0
                           000DE0  4120 	C$Lab2.c$882$3$161 ==.
                                   4121 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:882: while (counts < blink_counts);                    //wait until set time
      000E57                       4122 00408$:
      000E57 C3               [12] 4123 	clr	c
      000E58 E5 22            [12] 4124 	mov	a,_counts
      000E5A 95 27            [12] 4125 	subb	a,_blink_counts
      000E5C E5 23            [12] 4126 	mov	a,(_counts + 1)
      000E5E 95 28            [12] 4127 	subb	a,(_blink_counts + 1)
      000E60 40 F5            [24] 4128 	jc	00408$
                           000DEB  4129 	C$Lab2.c$883$3$161 ==.
                                   4130 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:883: if (PB0 == 0 && PB1 == 1 && PB2 == 1 && PB3 == 1)
      000E62 20 B1 1D         [24] 4131 	jb	_PB0,00412$
      000E65 30 B0 1A         [24] 4132 	jnb	_PB1,00412$
      000E68 30 A3 17         [24] 4133 	jnb	_PB2,00412$
      000E6B 30 A2 14         [24] 4134 	jnb	_PB3,00412$
                           000DF7  4135 	C$Lab2.c$885$4$168 ==.
                                   4136 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:885: debounce();
      000E6E 12 0E 9B         [24] 4137 	lcall	_debounce
                           000DFA  4138 	C$Lab2.c$886$4$168 ==.
                                   4139 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:886: player1turn = 1;
      000E71 75 33 01         [24] 4140 	mov	_player1turn,#0x01
      000E74 75 34 00         [24] 4141 	mov	(_player1turn + 1),#0x00
                           000E00  4142 	C$Lab2.c$887$4$168 ==.
                                   4143 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:887: Mode3Rounds++;
      000E77 05 39            [12] 4144 	inc	_Mode3Rounds
      000E79 E4               [12] 4145 	clr	a
      000E7A B5 39 02         [24] 4146 	cjne	a,_Mode3Rounds,01300$
      000E7D 05 3A            [12] 4147 	inc	(_Mode3Rounds + 1)
      000E7F                       4148 01300$:
                           000E08  4149 	C$Lab2.c$888$4$168 ==.
                                   4150 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:888: goto playerturn;
      000E7F 02 06 AB         [24] 4151 	ljmp	00101$
      000E82                       4152 00412$:
                           000E0B  4153 	C$Lab2.c$892$4$169 ==.
                                   4154 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:892: player2blink++;
      000E82 05 37            [12] 4155 	inc	_player2blink
      000E84 E4               [12] 4156 	clr	a
      000E85 B5 37 02         [24] 4157 	cjne	a,_player2blink,01301$
      000E88 05 38            [12] 4158 	inc	(_player2blink + 1)
      000E8A                       4159 01301$:
      000E8A 02 0D 88         [24] 4160 	ljmp	00417$
      000E8D                       4161 00423$:
                           000E16  4162 	C$Lab2.c$896$1$95 ==.
                           000E16  4163 	XG$Mode_3_Run$0$0 ==.
      000E8D 22               [24] 4164 	ret
                                   4165 ;------------------------------------------------------------
                                   4166 ;Allocation info for local variables in function 'turnOff'
                                   4167 ;------------------------------------------------------------
                           000E17  4168 	G$turnOff$0$0 ==.
                           000E17  4169 	C$Lab2.c$900$1$95 ==.
                                   4170 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:900: void turnOff(void)
                                   4171 ;	-----------------------------------------
                                   4172 ;	 function turnOff
                                   4173 ;	-----------------------------------------
      000E8E                       4174 _turnOff:
                           000E17  4175 	C$Lab2.c$902$1$171 ==.
                                   4176 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:902: LED0 = 1;
      000E8E D2 B6            [12] 4177 	setb	_LED0
                           000E19  4178 	C$Lab2.c$903$1$171 ==.
                                   4179 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:903: LED1 = 1;
      000E90 D2 B5            [12] 4180 	setb	_LED1
                           000E1B  4181 	C$Lab2.c$904$1$171 ==.
                                   4182 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:904: LED2 = 1;
      000E92 D2 B2            [12] 4183 	setb	_LED2
                           000E1D  4184 	C$Lab2.c$905$1$171 ==.
                                   4185 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:905: LED3 = 1;
      000E94 D2 A1            [12] 4186 	setb	_LED3
                           000E1F  4187 	C$Lab2.c$906$1$171 ==.
                                   4188 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:906: BILED1 = 1;
      000E96 D2 B3            [12] 4189 	setb	_BILED1
                           000E21  4190 	C$Lab2.c$907$1$171 ==.
                                   4191 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:907: BILED2 = 1;
      000E98 D2 B4            [12] 4192 	setb	_BILED2
                           000E23  4193 	C$Lab2.c$908$1$171 ==.
                           000E23  4194 	XG$turnOff$0$0 ==.
      000E9A 22               [24] 4195 	ret
                                   4196 ;------------------------------------------------------------
                                   4197 ;Allocation info for local variables in function 'debounce'
                                   4198 ;------------------------------------------------------------
                           000E24  4199 	G$debounce$0$0 ==.
                           000E24  4200 	C$Lab2.c$910$1$171 ==.
                                   4201 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:910: void debounce(void)
                                   4202 ;	-----------------------------------------
                                   4203 ;	 function debounce
                                   4204 ;	-----------------------------------------
      000E9B                       4205 _debounce:
                           000E24  4206 	C$Lab2.c$912$1$173 ==.
                                   4207 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:912: debounce_time = counts + 6.75;    //set 20 ms debounce time
      000E9B 85 22 82         [24] 4208 	mov	dpl,_counts
      000E9E 85 23 83         [24] 4209 	mov	dph,(_counts + 1)
      000EA1 12 11 AC         [24] 4210 	lcall	___uint2fs
      000EA4 AC 82            [24] 4211 	mov	r4,dpl
      000EA6 AD 83            [24] 4212 	mov	r5,dph
      000EA8 AE F0            [24] 4213 	mov	r6,b
      000EAA FF               [12] 4214 	mov	r7,a
      000EAB E4               [12] 4215 	clr	a
      000EAC C0 E0            [24] 4216 	push	acc
      000EAE C0 E0            [24] 4217 	push	acc
      000EB0 74 D8            [12] 4218 	mov	a,#0xd8
      000EB2 C0 E0            [24] 4219 	push	acc
      000EB4 74 40            [12] 4220 	mov	a,#0x40
      000EB6 C0 E0            [24] 4221 	push	acc
      000EB8 8C 82            [24] 4222 	mov	dpl,r4
      000EBA 8D 83            [24] 4223 	mov	dph,r5
      000EBC 8E F0            [24] 4224 	mov	b,r6
      000EBE EF               [12] 4225 	mov	a,r7
      000EBF 12 11 53         [24] 4226 	lcall	___fsadd
      000EC2 AC 82            [24] 4227 	mov	r4,dpl
      000EC4 AD 83            [24] 4228 	mov	r5,dph
      000EC6 AE F0            [24] 4229 	mov	r6,b
      000EC8 FF               [12] 4230 	mov	r7,a
      000EC9 E5 81            [12] 4231 	mov	a,sp
      000ECB 24 FC            [12] 4232 	add	a,#0xfc
      000ECD F5 81            [12] 4233 	mov	sp,a
      000ECF 8C 82            [24] 4234 	mov	dpl,r4
      000ED1 8D 83            [24] 4235 	mov	dph,r5
      000ED3 8E F0            [24] 4236 	mov	b,r6
      000ED5 EF               [12] 4237 	mov	a,r7
      000ED6 12 11 B8         [24] 4238 	lcall	___fs2uint
      000ED9 85 82 3B         [24] 4239 	mov	_debounce_time,dpl
      000EDC 85 83 3C         [24] 4240 	mov	(_debounce_time + 1),dph
                           000E68  4241 	C$Lab2.c$913$1$173 ==.
                                   4242 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:913: while (counts < debounce_time);    //debounce
      000EDF                       4243 00101$:
      000EDF C3               [12] 4244 	clr	c
      000EE0 E5 22            [12] 4245 	mov	a,_counts
      000EE2 95 3B            [12] 4246 	subb	a,_debounce_time
      000EE4 E5 23            [12] 4247 	mov	a,(_counts + 1)
      000EE6 95 3C            [12] 4248 	subb	a,(_debounce_time + 1)
      000EE8 40 F5            [24] 4249 	jc	00101$
                           000E73  4250 	C$Lab2.c$914$1$173 ==.
                           000E73  4251 	XG$debounce$0$0 ==.
      000EEA 22               [24] 4252 	ret
                                   4253 ;------------------------------------------------------------
                                   4254 ;Allocation info for local variables in function 'Port_Init'
                                   4255 ;------------------------------------------------------------
                           000E74  4256 	G$Port_Init$0$0 ==.
                           000E74  4257 	C$Lab2.c$917$1$173 ==.
                                   4258 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:917: void Port_Init(void)
                                   4259 ;	-----------------------------------------
                                   4260 ;	 function Port_Init
                                   4261 ;	-----------------------------------------
      000EEB                       4262 _Port_Init:
                           000E74  4263 	C$Lab2.c$919$1$175 ==.
                                   4264 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:919: P1MDIN &= ~0x02;    // Set P1.1 for analog input
      000EEB 53 BD FD         [24] 4265 	anl	_P1MDIN,#0xfd
                           000E77  4266 	C$Lab2.c$920$1$175 ==.
                                   4267 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:920: P1MDOUT &= ~0x02;    // Set P1.1 to open drain
      000EEE 53 A5 FD         [24] 4268 	anl	_P1MDOUT,#0xfd
                           000E7A  4269 	C$Lab2.c$921$1$175 ==.
                                   4270 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:921: P1 |= 0x02;            // Send logic 1 to input pin P1.1
      000EF1 43 90 02         [24] 4271 	orl	_P1,#0x02
                           000E7D  4272 	C$Lab2.c$923$1$175 ==.
                                   4273 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:923: P2MDOUT &= 0xD2;
      000EF4 53 A6 D2         [24] 4274 	anl	_P2MDOUT,#0xd2
                           000E80  4275 	C$Lab2.c$924$1$175 ==.
                                   4276 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:924: P2MDOUT |= 0x02;
      000EF7 43 A6 02         [24] 4277 	orl	_P2MDOUT,#0x02
                           000E83  4278 	C$Lab2.c$925$1$175 ==.
                                   4279 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:925: P2 |= ~0xD2;
      000EFA 43 A0 2D         [24] 4280 	orl	_P2,#0x2d
                           000E86  4281 	C$Lab2.c$927$1$175 ==.
                                   4282 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:927: P3MDOUT &= 0xFC;
      000EFD 53 A7 FC         [24] 4283 	anl	_P3MDOUT,#0xfc
                           000E89  4284 	C$Lab2.c$928$1$175 ==.
                                   4285 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:928: P3MDOUT |= 0x7C;
      000F00 43 A7 7C         [24] 4286 	orl	_P3MDOUT,#0x7c
                           000E8C  4287 	C$Lab2.c$929$1$175 ==.
                                   4288 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:929: P3 |= ~0xFC;
      000F03 43 B0 03         [24] 4289 	orl	_P3,#0x03
                           000E8F  4290 	C$Lab2.c$930$1$175 ==.
                           000E8F  4291 	XG$Port_Init$0$0 ==.
      000F06 22               [24] 4292 	ret
                                   4293 ;------------------------------------------------------------
                                   4294 ;Allocation info for local variables in function 'Interrupt_Init'
                                   4295 ;------------------------------------------------------------
                           000E90  4296 	G$Interrupt_Init$0$0 ==.
                           000E90  4297 	C$Lab2.c$932$1$175 ==.
                                   4298 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:932: void Interrupt_Init(void)
                                   4299 ;	-----------------------------------------
                                   4300 ;	 function Interrupt_Init
                                   4301 ;	-----------------------------------------
      000F07                       4302 _Interrupt_Init:
                           000E90  4303 	C$Lab2.c$934$1$177 ==.
                                   4304 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:934: IE |= 0x82;     //enable Timer0 Interrupt request
      000F07 43 A8 82         [24] 4305 	orl	_IE,#0x82
                           000E93  4306 	C$Lab2.c$935$1$177 ==.
                           000E93  4307 	XG$Interrupt_Init$0$0 ==.
      000F0A 22               [24] 4308 	ret
                                   4309 ;------------------------------------------------------------
                                   4310 ;Allocation info for local variables in function 'Timer_Init'
                                   4311 ;------------------------------------------------------------
                           000E94  4312 	G$Timer_Init$0$0 ==.
                           000E94  4313 	C$Lab2.c$937$1$177 ==.
                                   4314 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:937: void Timer_Init(void)
                                   4315 ;	-----------------------------------------
                                   4316 ;	 function Timer_Init
                                   4317 ;	-----------------------------------------
      000F0B                       4318 _Timer_Init:
                           000E94  4319 	C$Lab2.c$939$1$179 ==.
                                   4320 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:939: CKCON |= 0x08; //Timer0 uses SYSCLK as source
      000F0B 43 8E 08         [24] 4321 	orl	_CKCON,#0x08
                           000E97  4322 	C$Lab2.c$940$1$179 ==.
                                   4323 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:940: TMOD &= 0xF0;  //clear the 4 least significant bits
      000F0E 53 89 F0         [24] 4324 	anl	_TMOD,#0xf0
                           000E9A  4325 	C$Lab2.c$941$1$179 ==.
                                   4326 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:941: TMOD |= 0x01;  //Timer0 in mode 1, 16 bit
      000F11 43 89 01         [24] 4327 	orl	_TMOD,#0x01
                           000E9D  4328 	C$Lab2.c$942$1$179 ==.
                                   4329 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:942: TR0 = 0;        //stop Timer0
      000F14 C2 8C            [12] 4330 	clr	_TR0
                           000E9F  4331 	C$Lab2.c$943$1$179 ==.
                                   4332 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:943: TMR0 = 0;        //clear high & low byte of T0
      000F16 E4               [12] 4333 	clr	a
      000F17 F5 8A            [12] 4334 	mov	((_TMR0 >> 0) & 0xFF),a
      000F19 F5 8C            [12] 4335 	mov	((_TMR0 >> 8) & 0xFF),a
                           000EA4  4336 	C$Lab2.c$944$1$179 ==.
                           000EA4  4337 	XG$Timer_Init$0$0 ==.
      000F1B 22               [24] 4338 	ret
                                   4339 ;------------------------------------------------------------
                                   4340 ;Allocation info for local variables in function 'Timer0_ISR'
                                   4341 ;------------------------------------------------------------
                           000EA5  4342 	G$Timer0_ISR$0$0 ==.
                           000EA5  4343 	C$Lab2.c$946$1$179 ==.
                                   4344 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:946: void Timer0_ISR(void) __interrupt 1
                                   4345 ;	-----------------------------------------
                                   4346 ;	 function Timer0_ISR
                                   4347 ;	-----------------------------------------
      000F1C                       4348 _Timer0_ISR:
      000F1C C0 E0            [24] 4349 	push	acc
      000F1E C0 D0            [24] 4350 	push	psw
                           000EA9  4351 	C$Lab2.c$948$1$181 ==.
                                   4352 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:948: counts++;
      000F20 05 22            [12] 4353 	inc	_counts
      000F22 E4               [12] 4354 	clr	a
      000F23 B5 22 02         [24] 4355 	cjne	a,_counts,00103$
      000F26 05 23            [12] 4356 	inc	(_counts + 1)
      000F28                       4357 00103$:
      000F28 D0 D0            [24] 4358 	pop	psw
      000F2A D0 E0            [24] 4359 	pop	acc
                           000EB5  4360 	C$Lab2.c$949$1$181 ==.
                           000EB5  4361 	XG$Timer0_ISR$0$0 ==.
      000F2C 32               [24] 4362 	reti
                                   4363 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   4364 ;	eliminated unneeded push/pop dpl
                                   4365 ;	eliminated unneeded push/pop dph
                                   4366 ;	eliminated unneeded push/pop b
                                   4367 ;------------------------------------------------------------
                                   4368 ;Allocation info for local variables in function 'ADC_Init'
                                   4369 ;------------------------------------------------------------
                           000EB6  4370 	G$ADC_Init$0$0 ==.
                           000EB6  4371 	C$Lab2.c$951$1$181 ==.
                                   4372 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:951: void ADC_Init(void)
                                   4373 ;	-----------------------------------------
                                   4374 ;	 function ADC_Init
                                   4375 ;	-----------------------------------------
      000F2D                       4376 _ADC_Init:
                           000EB6  4377 	C$Lab2.c$953$1$183 ==.
                                   4378 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:953: REF0CN = 0x03;  //set VREF to internal pin not external
      000F2D 75 D1 03         [24] 4379 	mov	_REF0CN,#0x03
                           000EB9  4380 	C$Lab2.c$954$1$183 ==.
                                   4381 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:954: ADC1CN = 0x80;  //set ADC1 to active
      000F30 75 AA 80         [24] 4382 	mov	_ADC1CN,#0x80
                           000EBC  4383 	C$Lab2.c$955$1$183 ==.
                                   4384 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:955: ADC1CF |= 0x01; //set gain to 1
      000F33 43 AB 01         [24] 4385 	orl	_ADC1CF,#0x01
                           000EBF  4386 	C$Lab2.c$956$1$183 ==.
                           000EBF  4387 	XG$ADC_Init$0$0 ==.
      000F36 22               [24] 4388 	ret
                                   4389 ;------------------------------------------------------------
                                   4390 ;Allocation info for local variables in function 'read_AD_input'
                                   4391 ;------------------------------------------------------------
                                   4392 ;n                         Allocated to registers 
                                   4393 ;------------------------------------------------------------
                           000EC0  4394 	G$read_AD_input$0$0 ==.
                           000EC0  4395 	C$Lab2.c$958$1$183 ==.
                                   4396 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:958: unsigned char read_AD_input(unsigned char n)
                                   4397 ;	-----------------------------------------
                                   4398 ;	 function read_AD_input
                                   4399 ;	-----------------------------------------
      000F37                       4400 _read_AD_input:
      000F37 85 82 AC         [24] 4401 	mov	_AMX1SL,dpl
                           000EC3  4402 	C$Lab2.c$961$1$185 ==.
                                   4403 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:961: ADC1CN &= ~0x20;                  //clears conversion flag
      000F3A 53 AA DF         [24] 4404 	anl	_ADC1CN,#0xdf
                           000EC6  4405 	C$Lab2.c$962$1$185 ==.
                                   4406 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:962: ADC1CN |= 0x10;                  //initiate A/D conversion
      000F3D 43 AA 10         [24] 4407 	orl	_ADC1CN,#0x10
                           000EC9  4408 	C$Lab2.c$963$1$185 ==.
                                   4409 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:963: while ((ADC1CN & 0x20) == 0x00); //waits until the control register says conversion is complete
      000F40                       4410 00101$:
      000F40 E5 AA            [12] 4411 	mov	a,_ADC1CN
      000F42 30 E5 FB         [24] 4412 	jnb	acc.5,00101$
                           000ECE  4413 	C$Lab2.c$964$1$185 ==.
                                   4414 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 2\Lab2.c:964: return ADC1;                         //outputs conversion's value
      000F45 85 9C 82         [24] 4415 	mov	dpl,_ADC1
                           000ED1  4416 	C$Lab2.c$965$1$185 ==.
                           000ED1  4417 	XG$read_AD_input$0$0 ==.
      000F48 22               [24] 4418 	ret
                                   4419 	.area CSEG    (CODE)
                                   4420 	.area CONST   (CODE)
                           000000  4421 FLab2$__str_0$0$0 == .
      001930                       4422 ___str_0:
      001930 50 6C 61 79 65 72 20  4423 	.ascii "Player 1 presses: %d "
             31 20 70 72 65 73 73
             65 73 3A 20 25 64 20
      001945 0D                    4424 	.db 0x0d
      001946 0A                    4425 	.db 0x0a
      001947 00                    4426 	.db 0x00
                           000018  4427 FLab2$__str_1$0$0 == .
      001948                       4428 ___str_1:
      001948 50 6C 61 79 65 72 20  4429 	.ascii "Player 2 presses: %d "
             32 20 70 72 65 73 73
             65 73 3A 20 25 64 20
      00195D 0D                    4430 	.db 0x0d
      00195E 0A                    4431 	.db 0x0a
      00195F 00                    4432 	.db 0x00
                           000030  4433 FLab2$__str_2$0$0 == .
      001960                       4434 ___str_2:
      001960 50 6C 61 79 65 72 20  4435 	.ascii "Player 1 wins! "
             31 20 77 69 6E 73 21
             20
      00196F 0D                    4436 	.db 0x0d
      001970 0A                    4437 	.db 0x0a
      001971 00                    4438 	.db 0x00
                           000042  4439 FLab2$__str_3$0$0 == .
      001972                       4440 ___str_3:
      001972 50 6C 61 79 65 72 20  4441 	.ascii "Player 2 wins! "
             32 20 77 69 6E 73 21
             20
      001981 0D                    4442 	.db 0x0d
      001982 0A                    4443 	.db 0x0a
      001983 00                    4444 	.db 0x00
                           000054  4445 FLab2$__str_4$0$0 == .
      001984                       4446 ___str_4:
      001984 54 69 65 21 20        4447 	.ascii "Tie! "
      001989 0D                    4448 	.db 0x0d
      00198A 0A                    4449 	.db 0x0a
      00198B 00                    4450 	.db 0x00
                           00005C  4451 FLab2$__str_5$0$0 == .
      00198C                       4452 ___str_5:
      00198C 50 6C 61 79 65 72 20  4453 	.ascii "Player 1 wins because Player 2 went during the wrong turn. "
             31 20 77 69 6E 73 20
             62 65 63 61 75 73 65
             20 50 6C 61 79 65 72
             20 32 20 77 65 6E 74
             20 64 75 72 69 6E 67
             20 74 68 65 20 77 72
             6F 6E 67 20 74 75 72
             6E 2E 20
      0019C7 0D                    4454 	.db 0x0d
      0019C8 0A                    4455 	.db 0x0a
      0019C9 00                    4456 	.db 0x00
                           00009A  4457 FLab2$__str_6$0$0 == .
      0019CA                       4458 ___str_6:
      0019CA 50 6C 61 79 65 72 20  4459 	.ascii "Player 2 wins because Player 1 went during the wrong turn. "
             32 20 77 69 6E 73 20
             62 65 63 61 75 73 65
             20 50 6C 61 79 65 72
             20 31 20 77 65 6E 74
             20 64 75 72 69 6E 67
             20 74 68 65 20 77 72
             6F 6E 67 20 74 75 72
             6E 2E 20
      001A05 0D                    4460 	.db 0x0d
      001A06 0A                    4461 	.db 0x0a
      001A07 00                    4462 	.db 0x00
                           0000D8  4463 FLab2$__str_7$0$0 == .
      001A08                       4464 ___str_7:
      001A08 50 6C 61 79 65 72 20  4465 	.ascii "Player 1 misses: %d "
             31 20 6D 69 73 73 65
             73 3A 20 25 64 20
      001A1C 0D                    4466 	.db 0x0d
      001A1D 0A                    4467 	.db 0x0a
      001A1E 00                    4468 	.db 0x00
                           0000EF  4469 FLab2$__str_8$0$0 == .
      001A1F                       4470 ___str_8:
      001A1F 50 6C 61 79 65 72 20  4471 	.ascii "Player 2 misses: %d "
             32 20 6D 69 73 73 65
             73 3A 20 25 64 20
      001A33 0D                    4472 	.db 0x0d
      001A34 0A                    4473 	.db 0x0a
      001A35 00                    4474 	.db 0x00
                                   4475 	.area XINIT   (CODE)
                                   4476 	.area CABS    (ABS,CODE)
