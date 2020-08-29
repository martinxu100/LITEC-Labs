                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module hw5
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _putchar
                                     13 	.globl _getchar
                                     14 	.globl _printf
                                     15 	.globl _getchar_nw
                                     16 	.globl _Sys_Init
                                     17 	.globl _UART0_Init
                                     18 	.globl _SYSCLK_Init
                                     19 	.globl _SPIF
                                     20 	.globl _WCOL
                                     21 	.globl _MODF
                                     22 	.globl _RXOVRN
                                     23 	.globl _TXBSY
                                     24 	.globl _SLVSEL
                                     25 	.globl _MSTEN
                                     26 	.globl _SPIEN
                                     27 	.globl _AD0EN
                                     28 	.globl _ADCEN
                                     29 	.globl _AD0TM
                                     30 	.globl _ADCTM
                                     31 	.globl _AD0INT
                                     32 	.globl _ADCINT
                                     33 	.globl _AD0BUSY
                                     34 	.globl _ADBUSY
                                     35 	.globl _AD0CM1
                                     36 	.globl _ADSTM1
                                     37 	.globl _AD0CM0
                                     38 	.globl _ADSTM0
                                     39 	.globl _AD0WINT
                                     40 	.globl _ADWINT
                                     41 	.globl _AD0LJST
                                     42 	.globl _ADLJST
                                     43 	.globl _CF
                                     44 	.globl _CR
                                     45 	.globl _CCF4
                                     46 	.globl _CCF3
                                     47 	.globl _CCF2
                                     48 	.globl _CCF1
                                     49 	.globl _CCF0
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _TF2
                                     59 	.globl _EXF2
                                     60 	.globl _RCLK
                                     61 	.globl _TCLK
                                     62 	.globl _EXEN2
                                     63 	.globl _TR2
                                     64 	.globl _CT2
                                     65 	.globl _CPRL2
                                     66 	.globl _BUSY
                                     67 	.globl _ENSMB
                                     68 	.globl _STA
                                     69 	.globl _STO
                                     70 	.globl _SI
                                     71 	.globl _AA
                                     72 	.globl _SMBFTE
                                     73 	.globl _SMBTOE
                                     74 	.globl _PT2
                                     75 	.globl _PS
                                     76 	.globl _PS0
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ET2
                                     91 	.globl _ES
                                     92 	.globl _ES0
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _S0MODE
                                    106 	.globl _SM00
                                    107 	.globl _SM0
                                    108 	.globl _SM10
                                    109 	.globl _SM1
                                    110 	.globl _MCE0
                                    111 	.globl _SM20
                                    112 	.globl _SM2
                                    113 	.globl _REN0
                                    114 	.globl _REN
                                    115 	.globl _TB80
                                    116 	.globl _TB8
                                    117 	.globl _RB80
                                    118 	.globl _RB8
                                    119 	.globl _TI0
                                    120 	.globl _TI
                                    121 	.globl _RI0
                                    122 	.globl _RI
                                    123 	.globl _P1_7
                                    124 	.globl _P1_6
                                    125 	.globl _P1_5
                                    126 	.globl _P1_4
                                    127 	.globl _P1_3
                                    128 	.globl _P1_2
                                    129 	.globl _P1_1
                                    130 	.globl _P1_0
                                    131 	.globl _TF1
                                    132 	.globl _TR1
                                    133 	.globl _TF0
                                    134 	.globl _TR0
                                    135 	.globl _IE1
                                    136 	.globl _IT1
                                    137 	.globl _IE0
                                    138 	.globl _IT0
                                    139 	.globl _P0_7
                                    140 	.globl _P0_6
                                    141 	.globl _P0_5
                                    142 	.globl _P0_4
                                    143 	.globl _P0_3
                                    144 	.globl _P0_2
                                    145 	.globl _P0_1
                                    146 	.globl _P0_0
                                    147 	.globl _PCA0CP4
                                    148 	.globl _PCA0CP3
                                    149 	.globl _PCA0CP2
                                    150 	.globl _PCA0CP1
                                    151 	.globl _PCA0CP0
                                    152 	.globl _PCA0
                                    153 	.globl _DAC1
                                    154 	.globl _DAC0
                                    155 	.globl _ADC0LT
                                    156 	.globl _ADC0GT
                                    157 	.globl _ADC0
                                    158 	.globl _RCAP4
                                    159 	.globl _TMR4
                                    160 	.globl _TMR3RL
                                    161 	.globl _TMR3
                                    162 	.globl _RCAP2
                                    163 	.globl _TMR2
                                    164 	.globl _TMR1
                                    165 	.globl _TMR0
                                    166 	.globl _WDTCN
                                    167 	.globl _PCA0CPH4
                                    168 	.globl _PCA0CPH3
                                    169 	.globl _PCA0CPH2
                                    170 	.globl _PCA0CPH1
                                    171 	.globl _PCA0CPH0
                                    172 	.globl _PCA0H
                                    173 	.globl _SPI0CN
                                    174 	.globl _EIP2
                                    175 	.globl _EIP1
                                    176 	.globl _TH4
                                    177 	.globl _TL4
                                    178 	.globl _SADDR1
                                    179 	.globl _SBUF1
                                    180 	.globl _SCON1
                                    181 	.globl _B
                                    182 	.globl _RSTSRC
                                    183 	.globl _PCA0CPL4
                                    184 	.globl _PCA0CPL3
                                    185 	.globl _PCA0CPL2
                                    186 	.globl _PCA0CPL1
                                    187 	.globl _PCA0CPL0
                                    188 	.globl _PCA0L
                                    189 	.globl _ADC0CN
                                    190 	.globl _EIE2
                                    191 	.globl _EIE1
                                    192 	.globl _RCAP4H
                                    193 	.globl _RCAP4L
                                    194 	.globl _XBR2
                                    195 	.globl _XBR1
                                    196 	.globl _XBR0
                                    197 	.globl _ACC
                                    198 	.globl _PCA0CPM4
                                    199 	.globl _PCA0CPM3
                                    200 	.globl _PCA0CPM2
                                    201 	.globl _PCA0CPM1
                                    202 	.globl _PCA0CPM0
                                    203 	.globl _PCA0MD
                                    204 	.globl _PCA0CN
                                    205 	.globl _DAC1CN
                                    206 	.globl _DAC1H
                                    207 	.globl _DAC1L
                                    208 	.globl _DAC0CN
                                    209 	.globl _DAC0H
                                    210 	.globl _DAC0L
                                    211 	.globl _REF0CN
                                    212 	.globl _PSW
                                    213 	.globl _SMB0CR
                                    214 	.globl _TH2
                                    215 	.globl _TL2
                                    216 	.globl _RCAP2H
                                    217 	.globl _RCAP2L
                                    218 	.globl _T4CON
                                    219 	.globl _T2CON
                                    220 	.globl _ADC0LTH
                                    221 	.globl _ADC0LTL
                                    222 	.globl _ADC0GTH
                                    223 	.globl _ADC0GTL
                                    224 	.globl _SMB0ADR
                                    225 	.globl _SMB0DAT
                                    226 	.globl _SMB0STA
                                    227 	.globl _SMB0CN
                                    228 	.globl _ADC0H
                                    229 	.globl _ADC0L
                                    230 	.globl _P1MDIN
                                    231 	.globl _ADC0CF
                                    232 	.globl _AMX0SL
                                    233 	.globl _AMX0CF
                                    234 	.globl _SADEN0
                                    235 	.globl _IP
                                    236 	.globl _FLACL
                                    237 	.globl _FLSCL
                                    238 	.globl _P74OUT
                                    239 	.globl _OSCICN
                                    240 	.globl _OSCXCN
                                    241 	.globl _P3
                                    242 	.globl __XPAGE
                                    243 	.globl _EMI0CN
                                    244 	.globl _SADEN1
                                    245 	.globl _P3IF
                                    246 	.globl _AMX1SL
                                    247 	.globl _ADC1CF
                                    248 	.globl _ADC1CN
                                    249 	.globl _SADDR0
                                    250 	.globl _IE
                                    251 	.globl _P3MDOUT
                                    252 	.globl _PRT3CF
                                    253 	.globl _P2MDOUT
                                    254 	.globl _PRT2CF
                                    255 	.globl _P1MDOUT
                                    256 	.globl _PRT1CF
                                    257 	.globl _P0MDOUT
                                    258 	.globl _PRT0CF
                                    259 	.globl _EMI0CF
                                    260 	.globl _EMI0TC
                                    261 	.globl _P2
                                    262 	.globl _CPT1CN
                                    263 	.globl _CPT0CN
                                    264 	.globl _SPI0CKR
                                    265 	.globl _ADC1
                                    266 	.globl _SPI0DAT
                                    267 	.globl _SPI0CFG
                                    268 	.globl _SBUF0
                                    269 	.globl _SBUF
                                    270 	.globl _SCON0
                                    271 	.globl _SCON
                                    272 	.globl _P7
                                    273 	.globl _TMR3H
                                    274 	.globl _TMR3L
                                    275 	.globl _TMR3RLH
                                    276 	.globl _TMR3RLL
                                    277 	.globl _TMR3CN
                                    278 	.globl _P1
                                    279 	.globl _PSCTL
                                    280 	.globl _CKCON
                                    281 	.globl _TH1
                                    282 	.globl _TH0
                                    283 	.globl _TL1
                                    284 	.globl _TL0
                                    285 	.globl _TMOD
                                    286 	.globl _TCON
                                    287 	.globl _PCON
                                    288 	.globl _P6
                                    289 	.globl _P5
                                    290 	.globl _P4
                                    291 	.globl _DPH
                                    292 	.globl _DPL
                                    293 	.globl _SP
                                    294 	.globl _P0
                                    295 	.globl _counts
                                    296 	.globl _input
                                    297 	.globl _Interrupt_Init
                                    298 	.globl _Timer_Init
                                    299 	.globl _Timer0_ISR
                                    300 ;--------------------------------------------------------
                                    301 ; special function registers
                                    302 ;--------------------------------------------------------
                                    303 	.area RSEG    (ABS,DATA)
      000000                        304 	.org 0x0000
                           000080   305 G$P0$0$0 == 0x0080
                           000080   306 _P0	=	0x0080
                           000081   307 G$SP$0$0 == 0x0081
                           000081   308 _SP	=	0x0081
                           000082   309 G$DPL$0$0 == 0x0082
                           000082   310 _DPL	=	0x0082
                           000083   311 G$DPH$0$0 == 0x0083
                           000083   312 _DPH	=	0x0083
                           000084   313 G$P4$0$0 == 0x0084
                           000084   314 _P4	=	0x0084
                           000085   315 G$P5$0$0 == 0x0085
                           000085   316 _P5	=	0x0085
                           000086   317 G$P6$0$0 == 0x0086
                           000086   318 _P6	=	0x0086
                           000087   319 G$PCON$0$0 == 0x0087
                           000087   320 _PCON	=	0x0087
                           000088   321 G$TCON$0$0 == 0x0088
                           000088   322 _TCON	=	0x0088
                           000089   323 G$TMOD$0$0 == 0x0089
                           000089   324 _TMOD	=	0x0089
                           00008A   325 G$TL0$0$0 == 0x008a
                           00008A   326 _TL0	=	0x008a
                           00008B   327 G$TL1$0$0 == 0x008b
                           00008B   328 _TL1	=	0x008b
                           00008C   329 G$TH0$0$0 == 0x008c
                           00008C   330 _TH0	=	0x008c
                           00008D   331 G$TH1$0$0 == 0x008d
                           00008D   332 _TH1	=	0x008d
                           00008E   333 G$CKCON$0$0 == 0x008e
                           00008E   334 _CKCON	=	0x008e
                           00008F   335 G$PSCTL$0$0 == 0x008f
                           00008F   336 _PSCTL	=	0x008f
                           000090   337 G$P1$0$0 == 0x0090
                           000090   338 _P1	=	0x0090
                           000091   339 G$TMR3CN$0$0 == 0x0091
                           000091   340 _TMR3CN	=	0x0091
                           000092   341 G$TMR3RLL$0$0 == 0x0092
                           000092   342 _TMR3RLL	=	0x0092
                           000093   343 G$TMR3RLH$0$0 == 0x0093
                           000093   344 _TMR3RLH	=	0x0093
                           000094   345 G$TMR3L$0$0 == 0x0094
                           000094   346 _TMR3L	=	0x0094
                           000095   347 G$TMR3H$0$0 == 0x0095
                           000095   348 _TMR3H	=	0x0095
                           000096   349 G$P7$0$0 == 0x0096
                           000096   350 _P7	=	0x0096
                           000098   351 G$SCON$0$0 == 0x0098
                           000098   352 _SCON	=	0x0098
                           000098   353 G$SCON0$0$0 == 0x0098
                           000098   354 _SCON0	=	0x0098
                           000099   355 G$SBUF$0$0 == 0x0099
                           000099   356 _SBUF	=	0x0099
                           000099   357 G$SBUF0$0$0 == 0x0099
                           000099   358 _SBUF0	=	0x0099
                           00009A   359 G$SPI0CFG$0$0 == 0x009a
                           00009A   360 _SPI0CFG	=	0x009a
                           00009B   361 G$SPI0DAT$0$0 == 0x009b
                           00009B   362 _SPI0DAT	=	0x009b
                           00009C   363 G$ADC1$0$0 == 0x009c
                           00009C   364 _ADC1	=	0x009c
                           00009D   365 G$SPI0CKR$0$0 == 0x009d
                           00009D   366 _SPI0CKR	=	0x009d
                           00009E   367 G$CPT0CN$0$0 == 0x009e
                           00009E   368 _CPT0CN	=	0x009e
                           00009F   369 G$CPT1CN$0$0 == 0x009f
                           00009F   370 _CPT1CN	=	0x009f
                           0000A0   371 G$P2$0$0 == 0x00a0
                           0000A0   372 _P2	=	0x00a0
                           0000A1   373 G$EMI0TC$0$0 == 0x00a1
                           0000A1   374 _EMI0TC	=	0x00a1
                           0000A3   375 G$EMI0CF$0$0 == 0x00a3
                           0000A3   376 _EMI0CF	=	0x00a3
                           0000A4   377 G$PRT0CF$0$0 == 0x00a4
                           0000A4   378 _PRT0CF	=	0x00a4
                           0000A4   379 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   380 _P0MDOUT	=	0x00a4
                           0000A5   381 G$PRT1CF$0$0 == 0x00a5
                           0000A5   382 _PRT1CF	=	0x00a5
                           0000A5   383 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   384 _P1MDOUT	=	0x00a5
                           0000A6   385 G$PRT2CF$0$0 == 0x00a6
                           0000A6   386 _PRT2CF	=	0x00a6
                           0000A6   387 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   388 _P2MDOUT	=	0x00a6
                           0000A7   389 G$PRT3CF$0$0 == 0x00a7
                           0000A7   390 _PRT3CF	=	0x00a7
                           0000A7   391 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   392 _P3MDOUT	=	0x00a7
                           0000A8   393 G$IE$0$0 == 0x00a8
                           0000A8   394 _IE	=	0x00a8
                           0000A9   395 G$SADDR0$0$0 == 0x00a9
                           0000A9   396 _SADDR0	=	0x00a9
                           0000AA   397 G$ADC1CN$0$0 == 0x00aa
                           0000AA   398 _ADC1CN	=	0x00aa
                           0000AB   399 G$ADC1CF$0$0 == 0x00ab
                           0000AB   400 _ADC1CF	=	0x00ab
                           0000AC   401 G$AMX1SL$0$0 == 0x00ac
                           0000AC   402 _AMX1SL	=	0x00ac
                           0000AD   403 G$P3IF$0$0 == 0x00ad
                           0000AD   404 _P3IF	=	0x00ad
                           0000AE   405 G$SADEN1$0$0 == 0x00ae
                           0000AE   406 _SADEN1	=	0x00ae
                           0000AF   407 G$EMI0CN$0$0 == 0x00af
                           0000AF   408 _EMI0CN	=	0x00af
                           0000AF   409 G$_XPAGE$0$0 == 0x00af
                           0000AF   410 __XPAGE	=	0x00af
                           0000B0   411 G$P3$0$0 == 0x00b0
                           0000B0   412 _P3	=	0x00b0
                           0000B1   413 G$OSCXCN$0$0 == 0x00b1
                           0000B1   414 _OSCXCN	=	0x00b1
                           0000B2   415 G$OSCICN$0$0 == 0x00b2
                           0000B2   416 _OSCICN	=	0x00b2
                           0000B5   417 G$P74OUT$0$0 == 0x00b5
                           0000B5   418 _P74OUT	=	0x00b5
                           0000B6   419 G$FLSCL$0$0 == 0x00b6
                           0000B6   420 _FLSCL	=	0x00b6
                           0000B7   421 G$FLACL$0$0 == 0x00b7
                           0000B7   422 _FLACL	=	0x00b7
                           0000B8   423 G$IP$0$0 == 0x00b8
                           0000B8   424 _IP	=	0x00b8
                           0000B9   425 G$SADEN0$0$0 == 0x00b9
                           0000B9   426 _SADEN0	=	0x00b9
                           0000BA   427 G$AMX0CF$0$0 == 0x00ba
                           0000BA   428 _AMX0CF	=	0x00ba
                           0000BB   429 G$AMX0SL$0$0 == 0x00bb
                           0000BB   430 _AMX0SL	=	0x00bb
                           0000BC   431 G$ADC0CF$0$0 == 0x00bc
                           0000BC   432 _ADC0CF	=	0x00bc
                           0000BD   433 G$P1MDIN$0$0 == 0x00bd
                           0000BD   434 _P1MDIN	=	0x00bd
                           0000BE   435 G$ADC0L$0$0 == 0x00be
                           0000BE   436 _ADC0L	=	0x00be
                           0000BF   437 G$ADC0H$0$0 == 0x00bf
                           0000BF   438 _ADC0H	=	0x00bf
                           0000C0   439 G$SMB0CN$0$0 == 0x00c0
                           0000C0   440 _SMB0CN	=	0x00c0
                           0000C1   441 G$SMB0STA$0$0 == 0x00c1
                           0000C1   442 _SMB0STA	=	0x00c1
                           0000C2   443 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   444 _SMB0DAT	=	0x00c2
                           0000C3   445 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   446 _SMB0ADR	=	0x00c3
                           0000C4   447 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   448 _ADC0GTL	=	0x00c4
                           0000C5   449 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   450 _ADC0GTH	=	0x00c5
                           0000C6   451 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   452 _ADC0LTL	=	0x00c6
                           0000C7   453 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   454 _ADC0LTH	=	0x00c7
                           0000C8   455 G$T2CON$0$0 == 0x00c8
                           0000C8   456 _T2CON	=	0x00c8
                           0000C9   457 G$T4CON$0$0 == 0x00c9
                           0000C9   458 _T4CON	=	0x00c9
                           0000CA   459 G$RCAP2L$0$0 == 0x00ca
                           0000CA   460 _RCAP2L	=	0x00ca
                           0000CB   461 G$RCAP2H$0$0 == 0x00cb
                           0000CB   462 _RCAP2H	=	0x00cb
                           0000CC   463 G$TL2$0$0 == 0x00cc
                           0000CC   464 _TL2	=	0x00cc
                           0000CD   465 G$TH2$0$0 == 0x00cd
                           0000CD   466 _TH2	=	0x00cd
                           0000CF   467 G$SMB0CR$0$0 == 0x00cf
                           0000CF   468 _SMB0CR	=	0x00cf
                           0000D0   469 G$PSW$0$0 == 0x00d0
                           0000D0   470 _PSW	=	0x00d0
                           0000D1   471 G$REF0CN$0$0 == 0x00d1
                           0000D1   472 _REF0CN	=	0x00d1
                           0000D2   473 G$DAC0L$0$0 == 0x00d2
                           0000D2   474 _DAC0L	=	0x00d2
                           0000D3   475 G$DAC0H$0$0 == 0x00d3
                           0000D3   476 _DAC0H	=	0x00d3
                           0000D4   477 G$DAC0CN$0$0 == 0x00d4
                           0000D4   478 _DAC0CN	=	0x00d4
                           0000D5   479 G$DAC1L$0$0 == 0x00d5
                           0000D5   480 _DAC1L	=	0x00d5
                           0000D6   481 G$DAC1H$0$0 == 0x00d6
                           0000D6   482 _DAC1H	=	0x00d6
                           0000D7   483 G$DAC1CN$0$0 == 0x00d7
                           0000D7   484 _DAC1CN	=	0x00d7
                           0000D8   485 G$PCA0CN$0$0 == 0x00d8
                           0000D8   486 _PCA0CN	=	0x00d8
                           0000D9   487 G$PCA0MD$0$0 == 0x00d9
                           0000D9   488 _PCA0MD	=	0x00d9
                           0000DA   489 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   490 _PCA0CPM0	=	0x00da
                           0000DB   491 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   492 _PCA0CPM1	=	0x00db
                           0000DC   493 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   494 _PCA0CPM2	=	0x00dc
                           0000DD   495 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   496 _PCA0CPM3	=	0x00dd
                           0000DE   497 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   498 _PCA0CPM4	=	0x00de
                           0000E0   499 G$ACC$0$0 == 0x00e0
                           0000E0   500 _ACC	=	0x00e0
                           0000E1   501 G$XBR0$0$0 == 0x00e1
                           0000E1   502 _XBR0	=	0x00e1
                           0000E2   503 G$XBR1$0$0 == 0x00e2
                           0000E2   504 _XBR1	=	0x00e2
                           0000E3   505 G$XBR2$0$0 == 0x00e3
                           0000E3   506 _XBR2	=	0x00e3
                           0000E4   507 G$RCAP4L$0$0 == 0x00e4
                           0000E4   508 _RCAP4L	=	0x00e4
                           0000E5   509 G$RCAP4H$0$0 == 0x00e5
                           0000E5   510 _RCAP4H	=	0x00e5
                           0000E6   511 G$EIE1$0$0 == 0x00e6
                           0000E6   512 _EIE1	=	0x00e6
                           0000E7   513 G$EIE2$0$0 == 0x00e7
                           0000E7   514 _EIE2	=	0x00e7
                           0000E8   515 G$ADC0CN$0$0 == 0x00e8
                           0000E8   516 _ADC0CN	=	0x00e8
                           0000E9   517 G$PCA0L$0$0 == 0x00e9
                           0000E9   518 _PCA0L	=	0x00e9
                           0000EA   519 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   520 _PCA0CPL0	=	0x00ea
                           0000EB   521 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   522 _PCA0CPL1	=	0x00eb
                           0000EC   523 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   524 _PCA0CPL2	=	0x00ec
                           0000ED   525 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   526 _PCA0CPL3	=	0x00ed
                           0000EE   527 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   528 _PCA0CPL4	=	0x00ee
                           0000EF   529 G$RSTSRC$0$0 == 0x00ef
                           0000EF   530 _RSTSRC	=	0x00ef
                           0000F0   531 G$B$0$0 == 0x00f0
                           0000F0   532 _B	=	0x00f0
                           0000F1   533 G$SCON1$0$0 == 0x00f1
                           0000F1   534 _SCON1	=	0x00f1
                           0000F2   535 G$SBUF1$0$0 == 0x00f2
                           0000F2   536 _SBUF1	=	0x00f2
                           0000F3   537 G$SADDR1$0$0 == 0x00f3
                           0000F3   538 _SADDR1	=	0x00f3
                           0000F4   539 G$TL4$0$0 == 0x00f4
                           0000F4   540 _TL4	=	0x00f4
                           0000F5   541 G$TH4$0$0 == 0x00f5
                           0000F5   542 _TH4	=	0x00f5
                           0000F6   543 G$EIP1$0$0 == 0x00f6
                           0000F6   544 _EIP1	=	0x00f6
                           0000F7   545 G$EIP2$0$0 == 0x00f7
                           0000F7   546 _EIP2	=	0x00f7
                           0000F8   547 G$SPI0CN$0$0 == 0x00f8
                           0000F8   548 _SPI0CN	=	0x00f8
                           0000F9   549 G$PCA0H$0$0 == 0x00f9
                           0000F9   550 _PCA0H	=	0x00f9
                           0000FA   551 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   552 _PCA0CPH0	=	0x00fa
                           0000FB   553 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   554 _PCA0CPH1	=	0x00fb
                           0000FC   555 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   556 _PCA0CPH2	=	0x00fc
                           0000FD   557 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   558 _PCA0CPH3	=	0x00fd
                           0000FE   559 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   560 _PCA0CPH4	=	0x00fe
                           0000FF   561 G$WDTCN$0$0 == 0x00ff
                           0000FF   562 _WDTCN	=	0x00ff
                           008C8A   563 G$TMR0$0$0 == 0x8c8a
                           008C8A   564 _TMR0	=	0x8c8a
                           008D8B   565 G$TMR1$0$0 == 0x8d8b
                           008D8B   566 _TMR1	=	0x8d8b
                           00CDCC   567 G$TMR2$0$0 == 0xcdcc
                           00CDCC   568 _TMR2	=	0xcdcc
                           00CBCA   569 G$RCAP2$0$0 == 0xcbca
                           00CBCA   570 _RCAP2	=	0xcbca
                           009594   571 G$TMR3$0$0 == 0x9594
                           009594   572 _TMR3	=	0x9594
                           009392   573 G$TMR3RL$0$0 == 0x9392
                           009392   574 _TMR3RL	=	0x9392
                           00F5F4   575 G$TMR4$0$0 == 0xf5f4
                           00F5F4   576 _TMR4	=	0xf5f4
                           00E5E4   577 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   578 _RCAP4	=	0xe5e4
                           00BFBE   579 G$ADC0$0$0 == 0xbfbe
                           00BFBE   580 _ADC0	=	0xbfbe
                           00C5C4   581 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   582 _ADC0GT	=	0xc5c4
                           00C7C6   583 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   584 _ADC0LT	=	0xc7c6
                           00D3D2   585 G$DAC0$0$0 == 0xd3d2
                           00D3D2   586 _DAC0	=	0xd3d2
                           00D6D5   587 G$DAC1$0$0 == 0xd6d5
                           00D6D5   588 _DAC1	=	0xd6d5
                           00F9E9   589 G$PCA0$0$0 == 0xf9e9
                           00F9E9   590 _PCA0	=	0xf9e9
                           00FAEA   591 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   592 _PCA0CP0	=	0xfaea
                           00FBEB   593 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   594 _PCA0CP1	=	0xfbeb
                           00FCEC   595 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   596 _PCA0CP2	=	0xfcec
                           00FDED   597 G$PCA0CP3$0$0 == 0xfded
                           00FDED   598 _PCA0CP3	=	0xfded
                           00FEEE   599 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   600 _PCA0CP4	=	0xfeee
                                    601 ;--------------------------------------------------------
                                    602 ; special function bits
                                    603 ;--------------------------------------------------------
                                    604 	.area RSEG    (ABS,DATA)
      000000                        605 	.org 0x0000
                           000080   606 G$P0_0$0$0 == 0x0080
                           000080   607 _P0_0	=	0x0080
                           000081   608 G$P0_1$0$0 == 0x0081
                           000081   609 _P0_1	=	0x0081
                           000082   610 G$P0_2$0$0 == 0x0082
                           000082   611 _P0_2	=	0x0082
                           000083   612 G$P0_3$0$0 == 0x0083
                           000083   613 _P0_3	=	0x0083
                           000084   614 G$P0_4$0$0 == 0x0084
                           000084   615 _P0_4	=	0x0084
                           000085   616 G$P0_5$0$0 == 0x0085
                           000085   617 _P0_5	=	0x0085
                           000086   618 G$P0_6$0$0 == 0x0086
                           000086   619 _P0_6	=	0x0086
                           000087   620 G$P0_7$0$0 == 0x0087
                           000087   621 _P0_7	=	0x0087
                           000088   622 G$IT0$0$0 == 0x0088
                           000088   623 _IT0	=	0x0088
                           000089   624 G$IE0$0$0 == 0x0089
                           000089   625 _IE0	=	0x0089
                           00008A   626 G$IT1$0$0 == 0x008a
                           00008A   627 _IT1	=	0x008a
                           00008B   628 G$IE1$0$0 == 0x008b
                           00008B   629 _IE1	=	0x008b
                           00008C   630 G$TR0$0$0 == 0x008c
                           00008C   631 _TR0	=	0x008c
                           00008D   632 G$TF0$0$0 == 0x008d
                           00008D   633 _TF0	=	0x008d
                           00008E   634 G$TR1$0$0 == 0x008e
                           00008E   635 _TR1	=	0x008e
                           00008F   636 G$TF1$0$0 == 0x008f
                           00008F   637 _TF1	=	0x008f
                           000090   638 G$P1_0$0$0 == 0x0090
                           000090   639 _P1_0	=	0x0090
                           000091   640 G$P1_1$0$0 == 0x0091
                           000091   641 _P1_1	=	0x0091
                           000092   642 G$P1_2$0$0 == 0x0092
                           000092   643 _P1_2	=	0x0092
                           000093   644 G$P1_3$0$0 == 0x0093
                           000093   645 _P1_3	=	0x0093
                           000094   646 G$P1_4$0$0 == 0x0094
                           000094   647 _P1_4	=	0x0094
                           000095   648 G$P1_5$0$0 == 0x0095
                           000095   649 _P1_5	=	0x0095
                           000096   650 G$P1_6$0$0 == 0x0096
                           000096   651 _P1_6	=	0x0096
                           000097   652 G$P1_7$0$0 == 0x0097
                           000097   653 _P1_7	=	0x0097
                           000098   654 G$RI$0$0 == 0x0098
                           000098   655 _RI	=	0x0098
                           000098   656 G$RI0$0$0 == 0x0098
                           000098   657 _RI0	=	0x0098
                           000099   658 G$TI$0$0 == 0x0099
                           000099   659 _TI	=	0x0099
                           000099   660 G$TI0$0$0 == 0x0099
                           000099   661 _TI0	=	0x0099
                           00009A   662 G$RB8$0$0 == 0x009a
                           00009A   663 _RB8	=	0x009a
                           00009A   664 G$RB80$0$0 == 0x009a
                           00009A   665 _RB80	=	0x009a
                           00009B   666 G$TB8$0$0 == 0x009b
                           00009B   667 _TB8	=	0x009b
                           00009B   668 G$TB80$0$0 == 0x009b
                           00009B   669 _TB80	=	0x009b
                           00009C   670 G$REN$0$0 == 0x009c
                           00009C   671 _REN	=	0x009c
                           00009C   672 G$REN0$0$0 == 0x009c
                           00009C   673 _REN0	=	0x009c
                           00009D   674 G$SM2$0$0 == 0x009d
                           00009D   675 _SM2	=	0x009d
                           00009D   676 G$SM20$0$0 == 0x009d
                           00009D   677 _SM20	=	0x009d
                           00009D   678 G$MCE0$0$0 == 0x009d
                           00009D   679 _MCE0	=	0x009d
                           00009E   680 G$SM1$0$0 == 0x009e
                           00009E   681 _SM1	=	0x009e
                           00009E   682 G$SM10$0$0 == 0x009e
                           00009E   683 _SM10	=	0x009e
                           00009F   684 G$SM0$0$0 == 0x009f
                           00009F   685 _SM0	=	0x009f
                           00009F   686 G$SM00$0$0 == 0x009f
                           00009F   687 _SM00	=	0x009f
                           00009F   688 G$S0MODE$0$0 == 0x009f
                           00009F   689 _S0MODE	=	0x009f
                           0000A0   690 G$P2_0$0$0 == 0x00a0
                           0000A0   691 _P2_0	=	0x00a0
                           0000A1   692 G$P2_1$0$0 == 0x00a1
                           0000A1   693 _P2_1	=	0x00a1
                           0000A2   694 G$P2_2$0$0 == 0x00a2
                           0000A2   695 _P2_2	=	0x00a2
                           0000A3   696 G$P2_3$0$0 == 0x00a3
                           0000A3   697 _P2_3	=	0x00a3
                           0000A4   698 G$P2_4$0$0 == 0x00a4
                           0000A4   699 _P2_4	=	0x00a4
                           0000A5   700 G$P2_5$0$0 == 0x00a5
                           0000A5   701 _P2_5	=	0x00a5
                           0000A6   702 G$P2_6$0$0 == 0x00a6
                           0000A6   703 _P2_6	=	0x00a6
                           0000A7   704 G$P2_7$0$0 == 0x00a7
                           0000A7   705 _P2_7	=	0x00a7
                           0000A8   706 G$EX0$0$0 == 0x00a8
                           0000A8   707 _EX0	=	0x00a8
                           0000A9   708 G$ET0$0$0 == 0x00a9
                           0000A9   709 _ET0	=	0x00a9
                           0000AA   710 G$EX1$0$0 == 0x00aa
                           0000AA   711 _EX1	=	0x00aa
                           0000AB   712 G$ET1$0$0 == 0x00ab
                           0000AB   713 _ET1	=	0x00ab
                           0000AC   714 G$ES0$0$0 == 0x00ac
                           0000AC   715 _ES0	=	0x00ac
                           0000AC   716 G$ES$0$0 == 0x00ac
                           0000AC   717 _ES	=	0x00ac
                           0000AD   718 G$ET2$0$0 == 0x00ad
                           0000AD   719 _ET2	=	0x00ad
                           0000AF   720 G$EA$0$0 == 0x00af
                           0000AF   721 _EA	=	0x00af
                           0000B0   722 G$P3_0$0$0 == 0x00b0
                           0000B0   723 _P3_0	=	0x00b0
                           0000B1   724 G$P3_1$0$0 == 0x00b1
                           0000B1   725 _P3_1	=	0x00b1
                           0000B2   726 G$P3_2$0$0 == 0x00b2
                           0000B2   727 _P3_2	=	0x00b2
                           0000B3   728 G$P3_3$0$0 == 0x00b3
                           0000B3   729 _P3_3	=	0x00b3
                           0000B4   730 G$P3_4$0$0 == 0x00b4
                           0000B4   731 _P3_4	=	0x00b4
                           0000B5   732 G$P3_5$0$0 == 0x00b5
                           0000B5   733 _P3_5	=	0x00b5
                           0000B6   734 G$P3_6$0$0 == 0x00b6
                           0000B6   735 _P3_6	=	0x00b6
                           0000B7   736 G$P3_7$0$0 == 0x00b7
                           0000B7   737 _P3_7	=	0x00b7
                           0000B8   738 G$PX0$0$0 == 0x00b8
                           0000B8   739 _PX0	=	0x00b8
                           0000B9   740 G$PT0$0$0 == 0x00b9
                           0000B9   741 _PT0	=	0x00b9
                           0000BA   742 G$PX1$0$0 == 0x00ba
                           0000BA   743 _PX1	=	0x00ba
                           0000BB   744 G$PT1$0$0 == 0x00bb
                           0000BB   745 _PT1	=	0x00bb
                           0000BC   746 G$PS0$0$0 == 0x00bc
                           0000BC   747 _PS0	=	0x00bc
                           0000BC   748 G$PS$0$0 == 0x00bc
                           0000BC   749 _PS	=	0x00bc
                           0000BD   750 G$PT2$0$0 == 0x00bd
                           0000BD   751 _PT2	=	0x00bd
                           0000C0   752 G$SMBTOE$0$0 == 0x00c0
                           0000C0   753 _SMBTOE	=	0x00c0
                           0000C1   754 G$SMBFTE$0$0 == 0x00c1
                           0000C1   755 _SMBFTE	=	0x00c1
                           0000C2   756 G$AA$0$0 == 0x00c2
                           0000C2   757 _AA	=	0x00c2
                           0000C3   758 G$SI$0$0 == 0x00c3
                           0000C3   759 _SI	=	0x00c3
                           0000C4   760 G$STO$0$0 == 0x00c4
                           0000C4   761 _STO	=	0x00c4
                           0000C5   762 G$STA$0$0 == 0x00c5
                           0000C5   763 _STA	=	0x00c5
                           0000C6   764 G$ENSMB$0$0 == 0x00c6
                           0000C6   765 _ENSMB	=	0x00c6
                           0000C7   766 G$BUSY$0$0 == 0x00c7
                           0000C7   767 _BUSY	=	0x00c7
                           0000C8   768 G$CPRL2$0$0 == 0x00c8
                           0000C8   769 _CPRL2	=	0x00c8
                           0000C9   770 G$CT2$0$0 == 0x00c9
                           0000C9   771 _CT2	=	0x00c9
                           0000CA   772 G$TR2$0$0 == 0x00ca
                           0000CA   773 _TR2	=	0x00ca
                           0000CB   774 G$EXEN2$0$0 == 0x00cb
                           0000CB   775 _EXEN2	=	0x00cb
                           0000CC   776 G$TCLK$0$0 == 0x00cc
                           0000CC   777 _TCLK	=	0x00cc
                           0000CD   778 G$RCLK$0$0 == 0x00cd
                           0000CD   779 _RCLK	=	0x00cd
                           0000CE   780 G$EXF2$0$0 == 0x00ce
                           0000CE   781 _EXF2	=	0x00ce
                           0000CF   782 G$TF2$0$0 == 0x00cf
                           0000CF   783 _TF2	=	0x00cf
                           0000D0   784 G$P$0$0 == 0x00d0
                           0000D0   785 _P	=	0x00d0
                           0000D1   786 G$F1$0$0 == 0x00d1
                           0000D1   787 _F1	=	0x00d1
                           0000D2   788 G$OV$0$0 == 0x00d2
                           0000D2   789 _OV	=	0x00d2
                           0000D3   790 G$RS0$0$0 == 0x00d3
                           0000D3   791 _RS0	=	0x00d3
                           0000D4   792 G$RS1$0$0 == 0x00d4
                           0000D4   793 _RS1	=	0x00d4
                           0000D5   794 G$F0$0$0 == 0x00d5
                           0000D5   795 _F0	=	0x00d5
                           0000D6   796 G$AC$0$0 == 0x00d6
                           0000D6   797 _AC	=	0x00d6
                           0000D7   798 G$CY$0$0 == 0x00d7
                           0000D7   799 _CY	=	0x00d7
                           0000D8   800 G$CCF0$0$0 == 0x00d8
                           0000D8   801 _CCF0	=	0x00d8
                           0000D9   802 G$CCF1$0$0 == 0x00d9
                           0000D9   803 _CCF1	=	0x00d9
                           0000DA   804 G$CCF2$0$0 == 0x00da
                           0000DA   805 _CCF2	=	0x00da
                           0000DB   806 G$CCF3$0$0 == 0x00db
                           0000DB   807 _CCF3	=	0x00db
                           0000DC   808 G$CCF4$0$0 == 0x00dc
                           0000DC   809 _CCF4	=	0x00dc
                           0000DE   810 G$CR$0$0 == 0x00de
                           0000DE   811 _CR	=	0x00de
                           0000DF   812 G$CF$0$0 == 0x00df
                           0000DF   813 _CF	=	0x00df
                           0000E8   814 G$ADLJST$0$0 == 0x00e8
                           0000E8   815 _ADLJST	=	0x00e8
                           0000E8   816 G$AD0LJST$0$0 == 0x00e8
                           0000E8   817 _AD0LJST	=	0x00e8
                           0000E9   818 G$ADWINT$0$0 == 0x00e9
                           0000E9   819 _ADWINT	=	0x00e9
                           0000E9   820 G$AD0WINT$0$0 == 0x00e9
                           0000E9   821 _AD0WINT	=	0x00e9
                           0000EA   822 G$ADSTM0$0$0 == 0x00ea
                           0000EA   823 _ADSTM0	=	0x00ea
                           0000EA   824 G$AD0CM0$0$0 == 0x00ea
                           0000EA   825 _AD0CM0	=	0x00ea
                           0000EB   826 G$ADSTM1$0$0 == 0x00eb
                           0000EB   827 _ADSTM1	=	0x00eb
                           0000EB   828 G$AD0CM1$0$0 == 0x00eb
                           0000EB   829 _AD0CM1	=	0x00eb
                           0000EC   830 G$ADBUSY$0$0 == 0x00ec
                           0000EC   831 _ADBUSY	=	0x00ec
                           0000EC   832 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   833 _AD0BUSY	=	0x00ec
                           0000ED   834 G$ADCINT$0$0 == 0x00ed
                           0000ED   835 _ADCINT	=	0x00ed
                           0000ED   836 G$AD0INT$0$0 == 0x00ed
                           0000ED   837 _AD0INT	=	0x00ed
                           0000EE   838 G$ADCTM$0$0 == 0x00ee
                           0000EE   839 _ADCTM	=	0x00ee
                           0000EE   840 G$AD0TM$0$0 == 0x00ee
                           0000EE   841 _AD0TM	=	0x00ee
                           0000EF   842 G$ADCEN$0$0 == 0x00ef
                           0000EF   843 _ADCEN	=	0x00ef
                           0000EF   844 G$AD0EN$0$0 == 0x00ef
                           0000EF   845 _AD0EN	=	0x00ef
                           0000F8   846 G$SPIEN$0$0 == 0x00f8
                           0000F8   847 _SPIEN	=	0x00f8
                           0000F9   848 G$MSTEN$0$0 == 0x00f9
                           0000F9   849 _MSTEN	=	0x00f9
                           0000FA   850 G$SLVSEL$0$0 == 0x00fa
                           0000FA   851 _SLVSEL	=	0x00fa
                           0000FB   852 G$TXBSY$0$0 == 0x00fb
                           0000FB   853 _TXBSY	=	0x00fb
                           0000FC   854 G$RXOVRN$0$0 == 0x00fc
                           0000FC   855 _RXOVRN	=	0x00fc
                           0000FD   856 G$MODF$0$0 == 0x00fd
                           0000FD   857 _MODF	=	0x00fd
                           0000FE   858 G$WCOL$0$0 == 0x00fe
                           0000FE   859 _WCOL	=	0x00fe
                           0000FF   860 G$SPIF$0$0 == 0x00ff
                           0000FF   861 _SPIF	=	0x00ff
                                    862 ;--------------------------------------------------------
                                    863 ; overlayable register banks
                                    864 ;--------------------------------------------------------
                                    865 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        866 	.ds 8
                                    867 ;--------------------------------------------------------
                                    868 ; internal ram data
                                    869 ;--------------------------------------------------------
                                    870 	.area DSEG    (DATA)
                           000000   871 G$input$0$0==.
      000008                        872 _input::
      000008                        873 	.ds 1
                           000001   874 G$counts$0$0==.
      000009                        875 _counts::
      000009                        876 	.ds 4
                                    877 ;--------------------------------------------------------
                                    878 ; overlayable items in internal ram 
                                    879 ;--------------------------------------------------------
                                    880 	.area	OSEG    (OVR,DATA)
                                    881 	.area	OSEG    (OVR,DATA)
                                    882 ;--------------------------------------------------------
                                    883 ; Stack segment in internal ram 
                                    884 ;--------------------------------------------------------
                                    885 	.area	SSEG
      00003C                        886 __start__stack:
      00003C                        887 	.ds	1
                                    888 
                                    889 ;--------------------------------------------------------
                                    890 ; indirectly addressable internal ram data
                                    891 ;--------------------------------------------------------
                                    892 	.area ISEG    (DATA)
                                    893 ;--------------------------------------------------------
                                    894 ; absolute internal ram data
                                    895 ;--------------------------------------------------------
                                    896 	.area IABS    (ABS,DATA)
                                    897 	.area IABS    (ABS,DATA)
                                    898 ;--------------------------------------------------------
                                    899 ; bit data
                                    900 ;--------------------------------------------------------
                                    901 	.area BSEG    (BIT)
                                    902 ;--------------------------------------------------------
                                    903 ; paged external ram data
                                    904 ;--------------------------------------------------------
                                    905 	.area PSEG    (PAG,XDATA)
                                    906 ;--------------------------------------------------------
                                    907 ; external ram data
                                    908 ;--------------------------------------------------------
                                    909 	.area XSEG    (XDATA)
                                    910 ;--------------------------------------------------------
                                    911 ; absolute external ram data
                                    912 ;--------------------------------------------------------
                                    913 	.area XABS    (ABS,XDATA)
                                    914 ;--------------------------------------------------------
                                    915 ; external initialized ram data
                                    916 ;--------------------------------------------------------
                                    917 	.area XISEG   (XDATA)
                                    918 	.area HOME    (CODE)
                                    919 	.area GSINIT0 (CODE)
                                    920 	.area GSINIT1 (CODE)
                                    921 	.area GSINIT2 (CODE)
                                    922 	.area GSINIT3 (CODE)
                                    923 	.area GSINIT4 (CODE)
                                    924 	.area GSINIT5 (CODE)
                                    925 	.area GSINIT  (CODE)
                                    926 	.area GSFINAL (CODE)
                                    927 	.area CSEG    (CODE)
                                    928 ;--------------------------------------------------------
                                    929 ; interrupt vector 
                                    930 ;--------------------------------------------------------
                                    931 	.area HOME    (CODE)
      000000                        932 __interrupt_vect:
      000000 02 00 11         [24]  933 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  934 	reti
      000004                        935 	.ds	7
      00000B 02 01 D6         [24]  936 	ljmp	_Timer0_ISR
                                    937 ;--------------------------------------------------------
                                    938 ; global & static initialisations
                                    939 ;--------------------------------------------------------
                                    940 	.area HOME    (CODE)
                                    941 	.area GSINIT  (CODE)
                                    942 	.area GSFINAL (CODE)
                                    943 	.area GSINIT  (CODE)
                                    944 	.globl __sdcc_gsinit_startup
                                    945 	.globl __sdcc_program_startup
                                    946 	.globl __start__stack
                                    947 	.globl __mcs51_genXINIT
                                    948 	.globl __mcs51_genXRAMCLEAR
                                    949 	.globl __mcs51_genRAMCLEAR
                                    950 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  951 	ljmp	__sdcc_program_startup
                                    952 ;--------------------------------------------------------
                                    953 ; Home
                                    954 ;--------------------------------------------------------
                                    955 	.area HOME    (CODE)
                                    956 	.area HOME    (CODE)
      00000E                        957 __sdcc_program_startup:
      00000E 02 00 E8         [24]  958 	ljmp	_main
                                    959 ;	return from main will return to caller
                                    960 ;--------------------------------------------------------
                                    961 ; code
                                    962 ;--------------------------------------------------------
                                    963 	.area CSEG    (CODE)
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    966 ;------------------------------------------------------------
                                    967 ;i                         Allocated to registers r6 r7 
                                    968 ;------------------------------------------------------------
                           000000   969 	G$SYSCLK_Init$0$0 ==.
                           000000   970 	C$c8051_SDCC.h$62$0$0 ==.
                                    971 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                    972 ;	-----------------------------------------
                                    973 ;	 function SYSCLK_Init
                                    974 ;	-----------------------------------------
      00006D                        975 _SYSCLK_Init:
                           000007   976 	ar7 = 0x07
                           000006   977 	ar6 = 0x06
                           000005   978 	ar5 = 0x05
                           000004   979 	ar4 = 0x04
                           000003   980 	ar3 = 0x03
                           000002   981 	ar2 = 0x02
                           000001   982 	ar1 = 0x01
                           000000   983 	ar0 = 0x00
                           000000   984 	C$c8051_SDCC.h$66$1$2 ==.
                                    985 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      00006D 75 B1 67         [24]  986 	mov	_OSCXCN,#0x67
                           000003   987 	C$c8051_SDCC.h$69$1$2 ==.
                                    988 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000070 7E 00            [12]  989 	mov	r6,#0x00
      000072 7F 01            [12]  990 	mov	r7,#0x01
      000074                        991 00107$:
      000074 EE               [12]  992 	mov	a,r6
      000075 24 FF            [12]  993 	add	a,#0xff
      000077 FC               [12]  994 	mov	r4,a
      000078 EF               [12]  995 	mov	a,r7
      000079 34 FF            [12]  996 	addc	a,#0xff
      00007B FD               [12]  997 	mov	r5,a
      00007C 8C 06            [24]  998 	mov	ar6,r4
      00007E 8D 07            [24]  999 	mov	ar7,r5
      000080 EC               [12] 1000 	mov	a,r4
      000081 4D               [12] 1001 	orl	a,r5
      000082 70 F0            [24] 1002 	jnz	00107$
                           000017  1003 	C$c8051_SDCC.h$71$1$2 ==.
                                   1004 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000084                       1005 00102$:
      000084 E5 B1            [12] 1006 	mov	a,_OSCXCN
      000086 30 E7 FB         [24] 1007 	jnb	acc.7,00102$
                           00001C  1008 	C$c8051_SDCC.h$73$1$2 ==.
                                   1009 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      000089 75 B2 88         [24] 1010 	mov	_OSCICN,#0x88
                           00001F  1011 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1012 	XG$SYSCLK_Init$0$0 ==.
      00008C 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'UART0_Init'
                                   1016 ;------------------------------------------------------------
                           000020  1017 	G$UART0_Init$0$0 ==.
                           000020  1018 	C$c8051_SDCC.h$84$1$2 ==.
                                   1019 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1020 ;	-----------------------------------------
                                   1021 ;	 function UART0_Init
                                   1022 ;	-----------------------------------------
      00008D                       1023 _UART0_Init:
                           000020  1024 	C$c8051_SDCC.h$86$1$4 ==.
                                   1025 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      00008D 75 98 50         [24] 1026 	mov	_SCON0,#0x50
                           000023  1027 	C$c8051_SDCC.h$87$1$4 ==.
                                   1028 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000090 75 89 20         [24] 1029 	mov	_TMOD,#0x20
                           000026  1030 	C$c8051_SDCC.h$88$1$4 ==.
                                   1031 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000093 75 8D DC         [24] 1032 	mov	_TH1,#0xdc
                           000029  1033 	C$c8051_SDCC.h$89$1$4 ==.
                                   1034 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      000096 D2 8E            [12] 1035 	setb	_TR1
                           00002B  1036 	C$c8051_SDCC.h$90$1$4 ==.
                                   1037 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      000098 43 8E 10         [24] 1038 	orl	_CKCON,#0x10
                           00002E  1039 	C$c8051_SDCC.h$91$1$4 ==.
                                   1040 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      00009B 43 87 80         [24] 1041 	orl	_PCON,#0x80
                           000031  1042 	C$c8051_SDCC.h$93$1$4 ==.
                                   1043 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      00009E D2 99            [12] 1044 	setb	_TI0
                           000033  1045 	C$c8051_SDCC.h$94$1$4 ==.
                                   1046 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000A0 43 A4 01         [24] 1047 	orl	_P0MDOUT,#0x01
                           000036  1048 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1049 	XG$UART0_Init$0$0 ==.
      0000A3 22               [24] 1050 	ret
                                   1051 ;------------------------------------------------------------
                                   1052 ;Allocation info for local variables in function 'Sys_Init'
                                   1053 ;------------------------------------------------------------
                           000037  1054 	G$Sys_Init$0$0 ==.
                           000037  1055 	C$c8051_SDCC.h$103$1$4 ==.
                                   1056 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function Sys_Init
                                   1059 ;	-----------------------------------------
      0000A4                       1060 _Sys_Init:
                           000037  1061 	C$c8051_SDCC.h$105$1$6 ==.
                                   1062 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000A4 75 FF DE         [24] 1063 	mov	_WDTCN,#0xde
                           00003A  1064 	C$c8051_SDCC.h$106$1$6 ==.
                                   1065 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000A7 75 FF AD         [24] 1066 	mov	_WDTCN,#0xad
                           00003D  1067 	C$c8051_SDCC.h$108$1$6 ==.
                                   1068 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000AA 12 00 6D         [24] 1069 	lcall	_SYSCLK_Init
                           000040  1070 	C$c8051_SDCC.h$109$1$6 ==.
                                   1071 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000AD 12 00 8D         [24] 1072 	lcall	_UART0_Init
                           000043  1073 	C$c8051_SDCC.h$111$1$6 ==.
                                   1074 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000B0 43 E1 04         [24] 1075 	orl	_XBR0,#0x04
                           000046  1076 	C$c8051_SDCC.h$112$1$6 ==.
                                   1077 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000B3 43 E3 40         [24] 1078 	orl	_XBR2,#0x40
                           000049  1079 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1080 	XG$Sys_Init$0$0 ==.
      0000B6 22               [24] 1081 	ret
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'putchar'
                                   1084 ;------------------------------------------------------------
                                   1085 ;c                         Allocated to registers r7 
                                   1086 ;------------------------------------------------------------
                           00004A  1087 	G$putchar$0$0 ==.
                           00004A  1088 	C$c8051_SDCC.h$129$1$6 ==.
                                   1089 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function putchar
                                   1092 ;	-----------------------------------------
      0000B7                       1093 _putchar:
      0000B7 AF 82            [24] 1094 	mov	r7,dpl
                           00004C  1095 	C$c8051_SDCC.h$132$1$8 ==.
                                   1096 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000B9                       1097 00101$:
                           00004C  1098 	C$c8051_SDCC.h$133$1$8 ==.
                                   1099 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000B9 10 99 02         [24] 1100 	jbc	_TI0,00112$
      0000BC 80 FB            [24] 1101 	sjmp	00101$
      0000BE                       1102 00112$:
                           000051  1103 	C$c8051_SDCC.h$134$1$8 ==.
                                   1104 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000BE 8F 99            [24] 1105 	mov	_SBUF0,r7
                           000053  1106 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1107 	XG$putchar$0$0 ==.
      0000C0 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'getchar'
                                   1111 ;------------------------------------------------------------
                                   1112 ;c                         Allocated to registers r7 
                                   1113 ;------------------------------------------------------------
                           000054  1114 	G$getchar$0$0 ==.
                           000054  1115 	C$c8051_SDCC.h$154$1$8 ==.
                                   1116 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1117 ;	-----------------------------------------
                                   1118 ;	 function getchar
                                   1119 ;	-----------------------------------------
      0000C1                       1120 _getchar:
                           000054  1121 	C$c8051_SDCC.h$157$1$10 ==.
                                   1122 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000C1                       1123 00101$:
                           000054  1124 	C$c8051_SDCC.h$158$1$10 ==.
                                   1125 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000C1 10 98 02         [24] 1126 	jbc	_RI0,00112$
      0000C4 80 FB            [24] 1127 	sjmp	00101$
      0000C6                       1128 00112$:
                           000059  1129 	C$c8051_SDCC.h$159$1$10 ==.
                                   1130 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000C6 AF 99            [24] 1131 	mov	r7,_SBUF0
                           00005B  1132 	C$c8051_SDCC.h$160$1$10 ==.
                                   1133 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000C8 8F 82            [24] 1134 	mov	dpl,r7
      0000CA C0 07            [24] 1135 	push	ar7
      0000CC 12 00 B7         [24] 1136 	lcall	_putchar
      0000CF D0 07            [24] 1137 	pop	ar7
                           000064  1138 	C$c8051_SDCC.h$161$1$10 ==.
                                   1139 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000D1 8F 82            [24] 1140 	mov	dpl,r7
                           000066  1141 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1142 	XG$getchar$0$0 ==.
      0000D3 22               [24] 1143 	ret
                                   1144 ;------------------------------------------------------------
                                   1145 ;Allocation info for local variables in function 'getchar_nw'
                                   1146 ;------------------------------------------------------------
                                   1147 ;c                         Allocated to registers 
                                   1148 ;------------------------------------------------------------
                           000067  1149 	G$getchar_nw$0$0 ==.
                           000067  1150 	C$c8051_SDCC.h$168$1$10 ==.
                                   1151 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function getchar_nw
                                   1154 ;	-----------------------------------------
      0000D4                       1155 _getchar_nw:
                           000067  1156 	C$c8051_SDCC.h$171$1$12 ==.
                                   1157 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000D4 20 98 05         [24] 1158 	jb	_RI0,00102$
      0000D7 75 82 FF         [24] 1159 	mov	dpl,#0xff
      0000DA 80 0B            [24] 1160 	sjmp	00104$
      0000DC                       1161 00102$:
                           00006F  1162 	C$c8051_SDCC.h$174$2$13 ==.
                                   1163 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000DC C2 98            [12] 1164 	clr	_RI0
                           000071  1165 	C$c8051_SDCC.h$175$2$13 ==.
                                   1166 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000DE 85 99 82         [24] 1167 	mov	dpl,_SBUF0
                           000074  1168 	C$c8051_SDCC.h$176$2$13 ==.
                                   1169 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000E1 12 00 B7         [24] 1170 	lcall	_putchar
                           000077  1171 	C$c8051_SDCC.h$177$2$13 ==.
                                   1172 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000E4 85 99 82         [24] 1173 	mov	dpl,_SBUF0
      0000E7                       1174 00104$:
                           00007A  1175 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1176 	XG$getchar_nw$0$0 ==.
      0000E7 22               [24] 1177 	ret
                                   1178 ;------------------------------------------------------------
                                   1179 ;Allocation info for local variables in function 'main'
                                   1180 ;------------------------------------------------------------
                           00007B  1181 	G$main$0$0 ==.
                           00007B  1182 	C$hw5.c$36$1$12 ==.
                                   1183 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:36: void main(void)
                                   1184 ;	-----------------------------------------
                                   1185 ;	 function main
                                   1186 ;	-----------------------------------------
      0000E8                       1187 _main:
                           00007B  1188 	C$hw5.c$38$1$31 ==.
                                   1189 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:38: Sys_Init();      // System Initialization
      0000E8 12 00 A4         [24] 1190 	lcall	_Sys_Init
                           00007E  1191 	C$hw5.c$39$1$31 ==.
                                   1192 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:39: putchar(' ');    
      0000EB 75 82 20         [24] 1193 	mov	dpl,#0x20
      0000EE 12 00 B7         [24] 1194 	lcall	_putchar
                           000084  1195 	C$hw5.c$40$1$31 ==.
                                   1196 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:40: Interrupt_Init();
      0000F1 12 01 BE         [24] 1197 	lcall	_Interrupt_Init
                           000087  1198 	C$hw5.c$41$1$31 ==.
                                   1199 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:41: Timer_Init();    // Initialize Timer 0 
      0000F4 12 01 C4         [24] 1200 	lcall	_Timer_Init
                           00008A  1201 	C$hw5.c$43$1$31 ==.
                                   1202 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:43: while (1) /* the following loop waits until a key is pressed on the
      0000F7                       1203 00108$:
                           00008A  1204 	C$hw5.c$47$2$32 ==.
                                   1205 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:47: printf("Hit any key on the keyboard to start \r\n");
      0000F7 74 30            [12] 1206 	mov	a,#___str_0
      0000F9 C0 E0            [24] 1207 	push	acc
      0000FB 74 08            [12] 1208 	mov	a,#(___str_0 >> 8)
      0000FD C0 E0            [24] 1209 	push	acc
      0000FF 74 80            [12] 1210 	mov	a,#0x80
      000101 C0 E0            [24] 1211 	push	acc
      000103 12 02 15         [24] 1212 	lcall	_printf
      000106 15 81            [12] 1213 	dec	sp
      000108 15 81            [12] 1214 	dec	sp
      00010A 15 81            [12] 1215 	dec	sp
                           00009F  1216 	C$hw5.c$48$2$32 ==.
                                   1217 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:48: input = getchar();
      00010C 12 00 C1         [24] 1218 	lcall	_getchar
      00010F 85 82 08         [24] 1219 	mov	_input,dpl
                           0000A5  1220 	C$hw5.c$51$2$32 ==.
                                   1221 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:51: TL0 = 0;
      000112 75 8A 00         [24] 1222 	mov	_TL0,#0x00
                           0000A8  1223 	C$hw5.c$52$2$32 ==.
                                   1224 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:52: TH0 = 0;
      000115 75 8C 00         [24] 1225 	mov	_TH0,#0x00
                           0000AB  1226 	C$hw5.c$53$2$32 ==.
                                   1227 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:53: TR0 = 1;
      000118 D2 8C            [12] 1228 	setb	_TR0
                           0000AD  1229 	C$hw5.c$55$2$32 ==.
                                   1230 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:55: counts = 0;
      00011A E4               [12] 1231 	clr	a
      00011B F5 09            [12] 1232 	mov	_counts,a
      00011D F5 0A            [12] 1233 	mov	(_counts + 1),a
      00011F F5 0B            [12] 1234 	mov	(_counts + 2),a
      000121 F5 0C            [12] 1235 	mov	(_counts + 3),a
                           0000B6  1236 	C$hw5.c$57$2$32 ==.
                                   1237 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:57: while (counts < 6750);
      000123                       1238 00101$:
      000123 C3               [12] 1239 	clr	c
      000124 E5 09            [12] 1240 	mov	a,_counts
      000126 94 5E            [12] 1241 	subb	a,#0x5e
      000128 E5 0A            [12] 1242 	mov	a,(_counts + 1)
      00012A 94 1A            [12] 1243 	subb	a,#0x1a
      00012C E5 0B            [12] 1244 	mov	a,(_counts + 2)
      00012E 94 00            [12] 1245 	subb	a,#0x00
      000130 E5 0C            [12] 1246 	mov	a,(_counts + 3)
      000132 64 80            [12] 1247 	xrl	a,#0x80
      000134 94 80            [12] 1248 	subb	a,#0x80
      000136 40 EB            [24] 1249 	jc	00101$
                           0000CB  1250 	C$hw5.c$59$2$32 ==.
                                   1251 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:59: printf("2.5 seconds have passed. \r\n");  	//print that the time has elapsed
      000138 74 58            [12] 1252 	mov	a,#___str_1
      00013A C0 E0            [24] 1253 	push	acc
      00013C 74 08            [12] 1254 	mov	a,#(___str_1 >> 8)
      00013E C0 E0            [24] 1255 	push	acc
      000140 74 80            [12] 1256 	mov	a,#0x80
      000142 C0 E0            [24] 1257 	push	acc
      000144 12 02 15         [24] 1258 	lcall	_printf
      000147 15 81            [12] 1259 	dec	sp
      000149 15 81            [12] 1260 	dec	sp
      00014B 15 81            [12] 1261 	dec	sp
                           0000E0  1262 	C$hw5.c$61$2$32 ==.
                                   1263 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:61: printf("Number of overflows = %1d. \r\n", counts);	// print number of overflows using count variable
      00014D C0 09            [24] 1264 	push	_counts
      00014F C0 0A            [24] 1265 	push	(_counts + 1)
      000151 C0 0B            [24] 1266 	push	(_counts + 2)
      000153 C0 0C            [24] 1267 	push	(_counts + 3)
      000155 74 74            [12] 1268 	mov	a,#___str_2
      000157 C0 E0            [24] 1269 	push	acc
      000159 74 08            [12] 1270 	mov	a,#(___str_2 >> 8)
      00015B C0 E0            [24] 1271 	push	acc
      00015D 74 80            [12] 1272 	mov	a,#0x80
      00015F C0 E0            [24] 1273 	push	acc
      000161 12 02 15         [24] 1274 	lcall	_printf
      000164 E5 81            [12] 1275 	mov	a,sp
      000166 24 F9            [12] 1276 	add	a,#0xf9
      000168 F5 81            [12] 1277 	mov	sp,a
                           0000FD  1278 	C$hw5.c$63$2$32 ==.
                                   1279 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:63: counts = 0;
      00016A E4               [12] 1280 	clr	a
      00016B F5 09            [12] 1281 	mov	_counts,a
      00016D F5 0A            [12] 1282 	mov	(_counts + 1),a
      00016F F5 0B            [12] 1283 	mov	(_counts + 2),a
      000171 F5 0C            [12] 1284 	mov	(_counts + 3),a
                           000106  1285 	C$hw5.c$65$2$32 ==.
                                   1286 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:65: while (counts < 8100);
      000173                       1287 00104$:
      000173 C3               [12] 1288 	clr	c
      000174 E5 09            [12] 1289 	mov	a,_counts
      000176 94 A4            [12] 1290 	subb	a,#0xa4
      000178 E5 0A            [12] 1291 	mov	a,(_counts + 1)
      00017A 94 1F            [12] 1292 	subb	a,#0x1f
      00017C E5 0B            [12] 1293 	mov	a,(_counts + 2)
      00017E 94 00            [12] 1294 	subb	a,#0x00
      000180 E5 0C            [12] 1295 	mov	a,(_counts + 3)
      000182 64 80            [12] 1296 	xrl	a,#0x80
      000184 94 80            [12] 1297 	subb	a,#0x80
      000186 40 EB            [24] 1298 	jc	00104$
                           00011B  1299 	C$hw5.c$67$2$32 ==.
                                   1300 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:67: printf("3 seconds have passed. \r\n");  	//print that the time has elapsed
      000188 74 92            [12] 1301 	mov	a,#___str_3
      00018A C0 E0            [24] 1302 	push	acc
      00018C 74 08            [12] 1303 	mov	a,#(___str_3 >> 8)
      00018E C0 E0            [24] 1304 	push	acc
      000190 74 80            [12] 1305 	mov	a,#0x80
      000192 C0 E0            [24] 1306 	push	acc
      000194 12 02 15         [24] 1307 	lcall	_printf
      000197 15 81            [12] 1308 	dec	sp
      000199 15 81            [12] 1309 	dec	sp
      00019B 15 81            [12] 1310 	dec	sp
                           000130  1311 	C$hw5.c$69$2$32 ==.
                                   1312 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:69: printf("Number of overflows = %1d. \r\n", counts);	// print number of overflows using count variable
      00019D C0 09            [24] 1313 	push	_counts
      00019F C0 0A            [24] 1314 	push	(_counts + 1)
      0001A1 C0 0B            [24] 1315 	push	(_counts + 2)
      0001A3 C0 0C            [24] 1316 	push	(_counts + 3)
      0001A5 74 74            [12] 1317 	mov	a,#___str_2
      0001A7 C0 E0            [24] 1318 	push	acc
      0001A9 74 08            [12] 1319 	mov	a,#(___str_2 >> 8)
      0001AB C0 E0            [24] 1320 	push	acc
      0001AD 74 80            [12] 1321 	mov	a,#0x80
      0001AF C0 E0            [24] 1322 	push	acc
      0001B1 12 02 15         [24] 1323 	lcall	_printf
      0001B4 E5 81            [12] 1324 	mov	a,sp
      0001B6 24 F9            [12] 1325 	add	a,#0xf9
      0001B8 F5 81            [12] 1326 	mov	sp,a
      0001BA 02 00 F7         [24] 1327 	ljmp	00108$
                           000150  1328 	C$hw5.c$72$1$31 ==.
                           000150  1329 	XG$main$0$0 ==.
      0001BD 22               [24] 1330 	ret
                                   1331 ;------------------------------------------------------------
                                   1332 ;Allocation info for local variables in function 'Interrupt_Init'
                                   1333 ;------------------------------------------------------------
                           000151  1334 	G$Interrupt_Init$0$0 ==.
                           000151  1335 	C$hw5.c$76$1$31 ==.
                                   1336 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:76: void Interrupt_Init(void)
                                   1337 ;	-----------------------------------------
                                   1338 ;	 function Interrupt_Init
                                   1339 ;	-----------------------------------------
      0001BE                       1340 _Interrupt_Init:
                           000151  1341 	C$hw5.c$78$1$34 ==.
                                   1342 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:78: ET0 = 1;      // enable Timer0 Interrupt request using sbit variable 
      0001BE D2 A9            [12] 1343 	setb	_ET0
                           000153  1344 	C$hw5.c$79$1$34 ==.
                                   1345 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:79: IE |= 0x80;       // enable global interrupts using bit masking
      0001C0 43 A8 80         [24] 1346 	orl	_IE,#0x80
                           000156  1347 	C$hw5.c$80$1$34 ==.
                           000156  1348 	XG$Interrupt_Init$0$0 ==.
      0001C3 22               [24] 1349 	ret
                                   1350 ;------------------------------------------------------------
                                   1351 ;Allocation info for local variables in function 'Timer_Init'
                                   1352 ;------------------------------------------------------------
                           000157  1353 	G$Timer_Init$0$0 ==.
                           000157  1354 	C$hw5.c$82$1$34 ==.
                                   1355 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:82: void Timer_Init(void)
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function Timer_Init
                                   1358 ;	-----------------------------------------
      0001C4                       1359 _Timer_Init:
                           000157  1360 	C$hw5.c$85$1$36 ==.
                                   1361 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:85: CKCON |= 0x08;  // Timer0 uses SYSCLK or SYSCLK/12
      0001C4 43 8E 08         [24] 1362 	orl	_CKCON,#0x08
                           00015A  1363 	C$hw5.c$86$1$36 ==.
                                   1364 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:86: TMOD &= 0xF0;   // clear the 4 least significant bits
      0001C7 53 89 F0         [24] 1365 	anl	_TMOD,#0xf0
                           00015D  1366 	C$hw5.c$87$1$36 ==.
                                   1367 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:87: TMOD |= 0x00;   // Timer0 mode setting
      0001CA 85 89 89         [24] 1368 	mov	_TMOD,_TMOD
                           000160  1369 	C$hw5.c$88$1$36 ==.
                                   1370 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:88: TR0 = 0;         // Stop Timer0
      0001CD C2 8C            [12] 1371 	clr	_TR0
                           000162  1372 	C$hw5.c$89$1$36 ==.
                                   1373 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:89: TL0 = 0;         // Clear low byte of register T0
      0001CF 75 8A 00         [24] 1374 	mov	_TL0,#0x00
                           000165  1375 	C$hw5.c$90$1$36 ==.
                                   1376 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:90: TH0 = 0;         // Clear high byte of register T0
      0001D2 75 8C 00         [24] 1377 	mov	_TH0,#0x00
                           000168  1378 	C$hw5.c$92$1$36 ==.
                           000168  1379 	XG$Timer_Init$0$0 ==.
      0001D5 22               [24] 1380 	ret
                                   1381 ;------------------------------------------------------------
                                   1382 ;Allocation info for local variables in function 'Timer0_ISR'
                                   1383 ;------------------------------------------------------------
                           000169  1384 	G$Timer0_ISR$0$0 ==.
                           000169  1385 	C$hw5.c$96$1$36 ==.
                                   1386 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:96: void Timer0_ISR(void) __interrupt 1
                                   1387 ;	-----------------------------------------
                                   1388 ;	 function Timer0_ISR
                                   1389 ;	-----------------------------------------
      0001D6                       1390 _Timer0_ISR:
      0001D6 C0 E0            [24] 1391 	push	acc
      0001D8 C0 D0            [24] 1392 	push	psw
                           00016D  1393 	C$hw5.c$98$1$38 ==.
                                   1394 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Labs\Lab 1-2\hw5.c:98: counts ++;
      0001DA 05 09            [12] 1395 	inc	_counts
      0001DC E4               [12] 1396 	clr	a
      0001DD B5 09 0C         [24] 1397 	cjne	a,_counts,00103$
      0001E0 05 0A            [12] 1398 	inc	(_counts + 1)
      0001E2 B5 0A 07         [24] 1399 	cjne	a,(_counts + 1),00103$
      0001E5 05 0B            [12] 1400 	inc	(_counts + 2)
      0001E7 B5 0B 02         [24] 1401 	cjne	a,(_counts + 2),00103$
      0001EA 05 0C            [12] 1402 	inc	(_counts + 3)
      0001EC                       1403 00103$:
      0001EC D0 D0            [24] 1404 	pop	psw
      0001EE D0 E0            [24] 1405 	pop	acc
                           000183  1406 	C$hw5.c$99$1$38 ==.
                           000183  1407 	XG$Timer0_ISR$0$0 ==.
      0001F0 32               [24] 1408 	reti
                                   1409 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1410 ;	eliminated unneeded push/pop dpl
                                   1411 ;	eliminated unneeded push/pop dph
                                   1412 ;	eliminated unneeded push/pop b
                                   1413 	.area CSEG    (CODE)
                                   1414 	.area CONST   (CODE)
                           000000  1415 Fhw5$__str_0$0$0 == .
      000830                       1416 ___str_0:
      000830 48 69 74 20 61 6E 79  1417 	.ascii "Hit any key on the keyboard to start "
             20 6B 65 79 20 6F 6E
             20 74 68 65 20 6B 65
             79 62 6F 61 72 64 20
             74 6F 20 73 74 61 72
             74 20
      000855 0D                    1418 	.db 0x0d
      000856 0A                    1419 	.db 0x0a
      000857 00                    1420 	.db 0x00
                           000028  1421 Fhw5$__str_1$0$0 == .
      000858                       1422 ___str_1:
      000858 32 2E 35 20 73 65 63  1423 	.ascii "2.5 seconds have passed. "
             6F 6E 64 73 20 68 61
             76 65 20 70 61 73 73
             65 64 2E 20
      000871 0D                    1424 	.db 0x0d
      000872 0A                    1425 	.db 0x0a
      000873 00                    1426 	.db 0x00
                           000044  1427 Fhw5$__str_2$0$0 == .
      000874                       1428 ___str_2:
      000874 4E 75 6D 62 65 72 20  1429 	.ascii "Number of overflows = %1d. "
             6F 66 20 6F 76 65 72
             66 6C 6F 77 73 20 3D
             20 25 31 64 2E 20
      00088F 0D                    1430 	.db 0x0d
      000890 0A                    1431 	.db 0x0a
      000891 00                    1432 	.db 0x00
                           000062  1433 Fhw5$__str_3$0$0 == .
      000892                       1434 ___str_3:
      000892 33 20 73 65 63 6F 6E  1435 	.ascii "3 seconds have passed. "
             64 73 20 68 61 76 65
             20 70 61 73 73 65 64
             2E 20
      0008A9 0D                    1436 	.db 0x0d
      0008AA 0A                    1437 	.db 0x0a
      0008AB 00                    1438 	.db 0x00
                                   1439 	.area XINIT   (CODE)
                                   1440 	.area CABS    (ABS,CODE)
