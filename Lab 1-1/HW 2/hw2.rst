                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module hw2
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
                                    295 	.globl _number
                                    296 	.globl _input
                                    297 	.globl _Summer
                                    298 	.globl _Winter
                                    299 	.globl _Fall
                                    300 	.globl _Spring
                                    301 ;--------------------------------------------------------
                                    302 ; special function registers
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           000080   306 G$P0$0$0 == 0x0080
                           000080   307 _P0	=	0x0080
                           000081   308 G$SP$0$0 == 0x0081
                           000081   309 _SP	=	0x0081
                           000082   310 G$DPL$0$0 == 0x0082
                           000082   311 _DPL	=	0x0082
                           000083   312 G$DPH$0$0 == 0x0083
                           000083   313 _DPH	=	0x0083
                           000084   314 G$P4$0$0 == 0x0084
                           000084   315 _P4	=	0x0084
                           000085   316 G$P5$0$0 == 0x0085
                           000085   317 _P5	=	0x0085
                           000086   318 G$P6$0$0 == 0x0086
                           000086   319 _P6	=	0x0086
                           000087   320 G$PCON$0$0 == 0x0087
                           000087   321 _PCON	=	0x0087
                           000088   322 G$TCON$0$0 == 0x0088
                           000088   323 _TCON	=	0x0088
                           000089   324 G$TMOD$0$0 == 0x0089
                           000089   325 _TMOD	=	0x0089
                           00008A   326 G$TL0$0$0 == 0x008a
                           00008A   327 _TL0	=	0x008a
                           00008B   328 G$TL1$0$0 == 0x008b
                           00008B   329 _TL1	=	0x008b
                           00008C   330 G$TH0$0$0 == 0x008c
                           00008C   331 _TH0	=	0x008c
                           00008D   332 G$TH1$0$0 == 0x008d
                           00008D   333 _TH1	=	0x008d
                           00008E   334 G$CKCON$0$0 == 0x008e
                           00008E   335 _CKCON	=	0x008e
                           00008F   336 G$PSCTL$0$0 == 0x008f
                           00008F   337 _PSCTL	=	0x008f
                           000090   338 G$P1$0$0 == 0x0090
                           000090   339 _P1	=	0x0090
                           000091   340 G$TMR3CN$0$0 == 0x0091
                           000091   341 _TMR3CN	=	0x0091
                           000092   342 G$TMR3RLL$0$0 == 0x0092
                           000092   343 _TMR3RLL	=	0x0092
                           000093   344 G$TMR3RLH$0$0 == 0x0093
                           000093   345 _TMR3RLH	=	0x0093
                           000094   346 G$TMR3L$0$0 == 0x0094
                           000094   347 _TMR3L	=	0x0094
                           000095   348 G$TMR3H$0$0 == 0x0095
                           000095   349 _TMR3H	=	0x0095
                           000096   350 G$P7$0$0 == 0x0096
                           000096   351 _P7	=	0x0096
                           000098   352 G$SCON$0$0 == 0x0098
                           000098   353 _SCON	=	0x0098
                           000098   354 G$SCON0$0$0 == 0x0098
                           000098   355 _SCON0	=	0x0098
                           000099   356 G$SBUF$0$0 == 0x0099
                           000099   357 _SBUF	=	0x0099
                           000099   358 G$SBUF0$0$0 == 0x0099
                           000099   359 _SBUF0	=	0x0099
                           00009A   360 G$SPI0CFG$0$0 == 0x009a
                           00009A   361 _SPI0CFG	=	0x009a
                           00009B   362 G$SPI0DAT$0$0 == 0x009b
                           00009B   363 _SPI0DAT	=	0x009b
                           00009C   364 G$ADC1$0$0 == 0x009c
                           00009C   365 _ADC1	=	0x009c
                           00009D   366 G$SPI0CKR$0$0 == 0x009d
                           00009D   367 _SPI0CKR	=	0x009d
                           00009E   368 G$CPT0CN$0$0 == 0x009e
                           00009E   369 _CPT0CN	=	0x009e
                           00009F   370 G$CPT1CN$0$0 == 0x009f
                           00009F   371 _CPT1CN	=	0x009f
                           0000A0   372 G$P2$0$0 == 0x00a0
                           0000A0   373 _P2	=	0x00a0
                           0000A1   374 G$EMI0TC$0$0 == 0x00a1
                           0000A1   375 _EMI0TC	=	0x00a1
                           0000A3   376 G$EMI0CF$0$0 == 0x00a3
                           0000A3   377 _EMI0CF	=	0x00a3
                           0000A4   378 G$PRT0CF$0$0 == 0x00a4
                           0000A4   379 _PRT0CF	=	0x00a4
                           0000A4   380 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   381 _P0MDOUT	=	0x00a4
                           0000A5   382 G$PRT1CF$0$0 == 0x00a5
                           0000A5   383 _PRT1CF	=	0x00a5
                           0000A5   384 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   385 _P1MDOUT	=	0x00a5
                           0000A6   386 G$PRT2CF$0$0 == 0x00a6
                           0000A6   387 _PRT2CF	=	0x00a6
                           0000A6   388 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   389 _P2MDOUT	=	0x00a6
                           0000A7   390 G$PRT3CF$0$0 == 0x00a7
                           0000A7   391 _PRT3CF	=	0x00a7
                           0000A7   392 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   393 _P3MDOUT	=	0x00a7
                           0000A8   394 G$IE$0$0 == 0x00a8
                           0000A8   395 _IE	=	0x00a8
                           0000A9   396 G$SADDR0$0$0 == 0x00a9
                           0000A9   397 _SADDR0	=	0x00a9
                           0000AA   398 G$ADC1CN$0$0 == 0x00aa
                           0000AA   399 _ADC1CN	=	0x00aa
                           0000AB   400 G$ADC1CF$0$0 == 0x00ab
                           0000AB   401 _ADC1CF	=	0x00ab
                           0000AC   402 G$AMX1SL$0$0 == 0x00ac
                           0000AC   403 _AMX1SL	=	0x00ac
                           0000AD   404 G$P3IF$0$0 == 0x00ad
                           0000AD   405 _P3IF	=	0x00ad
                           0000AE   406 G$SADEN1$0$0 == 0x00ae
                           0000AE   407 _SADEN1	=	0x00ae
                           0000AF   408 G$EMI0CN$0$0 == 0x00af
                           0000AF   409 _EMI0CN	=	0x00af
                           0000AF   410 G$_XPAGE$0$0 == 0x00af
                           0000AF   411 __XPAGE	=	0x00af
                           0000B0   412 G$P3$0$0 == 0x00b0
                           0000B0   413 _P3	=	0x00b0
                           0000B1   414 G$OSCXCN$0$0 == 0x00b1
                           0000B1   415 _OSCXCN	=	0x00b1
                           0000B2   416 G$OSCICN$0$0 == 0x00b2
                           0000B2   417 _OSCICN	=	0x00b2
                           0000B5   418 G$P74OUT$0$0 == 0x00b5
                           0000B5   419 _P74OUT	=	0x00b5
                           0000B6   420 G$FLSCL$0$0 == 0x00b6
                           0000B6   421 _FLSCL	=	0x00b6
                           0000B7   422 G$FLACL$0$0 == 0x00b7
                           0000B7   423 _FLACL	=	0x00b7
                           0000B8   424 G$IP$0$0 == 0x00b8
                           0000B8   425 _IP	=	0x00b8
                           0000B9   426 G$SADEN0$0$0 == 0x00b9
                           0000B9   427 _SADEN0	=	0x00b9
                           0000BA   428 G$AMX0CF$0$0 == 0x00ba
                           0000BA   429 _AMX0CF	=	0x00ba
                           0000BB   430 G$AMX0SL$0$0 == 0x00bb
                           0000BB   431 _AMX0SL	=	0x00bb
                           0000BC   432 G$ADC0CF$0$0 == 0x00bc
                           0000BC   433 _ADC0CF	=	0x00bc
                           0000BD   434 G$P1MDIN$0$0 == 0x00bd
                           0000BD   435 _P1MDIN	=	0x00bd
                           0000BE   436 G$ADC0L$0$0 == 0x00be
                           0000BE   437 _ADC0L	=	0x00be
                           0000BF   438 G$ADC0H$0$0 == 0x00bf
                           0000BF   439 _ADC0H	=	0x00bf
                           0000C0   440 G$SMB0CN$0$0 == 0x00c0
                           0000C0   441 _SMB0CN	=	0x00c0
                           0000C1   442 G$SMB0STA$0$0 == 0x00c1
                           0000C1   443 _SMB0STA	=	0x00c1
                           0000C2   444 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   445 _SMB0DAT	=	0x00c2
                           0000C3   446 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   447 _SMB0ADR	=	0x00c3
                           0000C4   448 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   449 _ADC0GTL	=	0x00c4
                           0000C5   450 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   451 _ADC0GTH	=	0x00c5
                           0000C6   452 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   453 _ADC0LTL	=	0x00c6
                           0000C7   454 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   455 _ADC0LTH	=	0x00c7
                           0000C8   456 G$T2CON$0$0 == 0x00c8
                           0000C8   457 _T2CON	=	0x00c8
                           0000C9   458 G$T4CON$0$0 == 0x00c9
                           0000C9   459 _T4CON	=	0x00c9
                           0000CA   460 G$RCAP2L$0$0 == 0x00ca
                           0000CA   461 _RCAP2L	=	0x00ca
                           0000CB   462 G$RCAP2H$0$0 == 0x00cb
                           0000CB   463 _RCAP2H	=	0x00cb
                           0000CC   464 G$TL2$0$0 == 0x00cc
                           0000CC   465 _TL2	=	0x00cc
                           0000CD   466 G$TH2$0$0 == 0x00cd
                           0000CD   467 _TH2	=	0x00cd
                           0000CF   468 G$SMB0CR$0$0 == 0x00cf
                           0000CF   469 _SMB0CR	=	0x00cf
                           0000D0   470 G$PSW$0$0 == 0x00d0
                           0000D0   471 _PSW	=	0x00d0
                           0000D1   472 G$REF0CN$0$0 == 0x00d1
                           0000D1   473 _REF0CN	=	0x00d1
                           0000D2   474 G$DAC0L$0$0 == 0x00d2
                           0000D2   475 _DAC0L	=	0x00d2
                           0000D3   476 G$DAC0H$0$0 == 0x00d3
                           0000D3   477 _DAC0H	=	0x00d3
                           0000D4   478 G$DAC0CN$0$0 == 0x00d4
                           0000D4   479 _DAC0CN	=	0x00d4
                           0000D5   480 G$DAC1L$0$0 == 0x00d5
                           0000D5   481 _DAC1L	=	0x00d5
                           0000D6   482 G$DAC1H$0$0 == 0x00d6
                           0000D6   483 _DAC1H	=	0x00d6
                           0000D7   484 G$DAC1CN$0$0 == 0x00d7
                           0000D7   485 _DAC1CN	=	0x00d7
                           0000D8   486 G$PCA0CN$0$0 == 0x00d8
                           0000D8   487 _PCA0CN	=	0x00d8
                           0000D9   488 G$PCA0MD$0$0 == 0x00d9
                           0000D9   489 _PCA0MD	=	0x00d9
                           0000DA   490 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   491 _PCA0CPM0	=	0x00da
                           0000DB   492 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   493 _PCA0CPM1	=	0x00db
                           0000DC   494 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   495 _PCA0CPM2	=	0x00dc
                           0000DD   496 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   497 _PCA0CPM3	=	0x00dd
                           0000DE   498 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   499 _PCA0CPM4	=	0x00de
                           0000E0   500 G$ACC$0$0 == 0x00e0
                           0000E0   501 _ACC	=	0x00e0
                           0000E1   502 G$XBR0$0$0 == 0x00e1
                           0000E1   503 _XBR0	=	0x00e1
                           0000E2   504 G$XBR1$0$0 == 0x00e2
                           0000E2   505 _XBR1	=	0x00e2
                           0000E3   506 G$XBR2$0$0 == 0x00e3
                           0000E3   507 _XBR2	=	0x00e3
                           0000E4   508 G$RCAP4L$0$0 == 0x00e4
                           0000E4   509 _RCAP4L	=	0x00e4
                           0000E5   510 G$RCAP4H$0$0 == 0x00e5
                           0000E5   511 _RCAP4H	=	0x00e5
                           0000E6   512 G$EIE1$0$0 == 0x00e6
                           0000E6   513 _EIE1	=	0x00e6
                           0000E7   514 G$EIE2$0$0 == 0x00e7
                           0000E7   515 _EIE2	=	0x00e7
                           0000E8   516 G$ADC0CN$0$0 == 0x00e8
                           0000E8   517 _ADC0CN	=	0x00e8
                           0000E9   518 G$PCA0L$0$0 == 0x00e9
                           0000E9   519 _PCA0L	=	0x00e9
                           0000EA   520 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   521 _PCA0CPL0	=	0x00ea
                           0000EB   522 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   523 _PCA0CPL1	=	0x00eb
                           0000EC   524 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   525 _PCA0CPL2	=	0x00ec
                           0000ED   526 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   527 _PCA0CPL3	=	0x00ed
                           0000EE   528 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   529 _PCA0CPL4	=	0x00ee
                           0000EF   530 G$RSTSRC$0$0 == 0x00ef
                           0000EF   531 _RSTSRC	=	0x00ef
                           0000F0   532 G$B$0$0 == 0x00f0
                           0000F0   533 _B	=	0x00f0
                           0000F1   534 G$SCON1$0$0 == 0x00f1
                           0000F1   535 _SCON1	=	0x00f1
                           0000F2   536 G$SBUF1$0$0 == 0x00f2
                           0000F2   537 _SBUF1	=	0x00f2
                           0000F3   538 G$SADDR1$0$0 == 0x00f3
                           0000F3   539 _SADDR1	=	0x00f3
                           0000F4   540 G$TL4$0$0 == 0x00f4
                           0000F4   541 _TL4	=	0x00f4
                           0000F5   542 G$TH4$0$0 == 0x00f5
                           0000F5   543 _TH4	=	0x00f5
                           0000F6   544 G$EIP1$0$0 == 0x00f6
                           0000F6   545 _EIP1	=	0x00f6
                           0000F7   546 G$EIP2$0$0 == 0x00f7
                           0000F7   547 _EIP2	=	0x00f7
                           0000F8   548 G$SPI0CN$0$0 == 0x00f8
                           0000F8   549 _SPI0CN	=	0x00f8
                           0000F9   550 G$PCA0H$0$0 == 0x00f9
                           0000F9   551 _PCA0H	=	0x00f9
                           0000FA   552 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   553 _PCA0CPH0	=	0x00fa
                           0000FB   554 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   555 _PCA0CPH1	=	0x00fb
                           0000FC   556 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   557 _PCA0CPH2	=	0x00fc
                           0000FD   558 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   559 _PCA0CPH3	=	0x00fd
                           0000FE   560 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   561 _PCA0CPH4	=	0x00fe
                           0000FF   562 G$WDTCN$0$0 == 0x00ff
                           0000FF   563 _WDTCN	=	0x00ff
                           008C8A   564 G$TMR0$0$0 == 0x8c8a
                           008C8A   565 _TMR0	=	0x8c8a
                           008D8B   566 G$TMR1$0$0 == 0x8d8b
                           008D8B   567 _TMR1	=	0x8d8b
                           00CDCC   568 G$TMR2$0$0 == 0xcdcc
                           00CDCC   569 _TMR2	=	0xcdcc
                           00CBCA   570 G$RCAP2$0$0 == 0xcbca
                           00CBCA   571 _RCAP2	=	0xcbca
                           009594   572 G$TMR3$0$0 == 0x9594
                           009594   573 _TMR3	=	0x9594
                           009392   574 G$TMR3RL$0$0 == 0x9392
                           009392   575 _TMR3RL	=	0x9392
                           00F5F4   576 G$TMR4$0$0 == 0xf5f4
                           00F5F4   577 _TMR4	=	0xf5f4
                           00E5E4   578 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   579 _RCAP4	=	0xe5e4
                           00BFBE   580 G$ADC0$0$0 == 0xbfbe
                           00BFBE   581 _ADC0	=	0xbfbe
                           00C5C4   582 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   583 _ADC0GT	=	0xc5c4
                           00C7C6   584 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   585 _ADC0LT	=	0xc7c6
                           00D3D2   586 G$DAC0$0$0 == 0xd3d2
                           00D3D2   587 _DAC0	=	0xd3d2
                           00D6D5   588 G$DAC1$0$0 == 0xd6d5
                           00D6D5   589 _DAC1	=	0xd6d5
                           00F9E9   590 G$PCA0$0$0 == 0xf9e9
                           00F9E9   591 _PCA0	=	0xf9e9
                           00FAEA   592 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   593 _PCA0CP0	=	0xfaea
                           00FBEB   594 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   595 _PCA0CP1	=	0xfbeb
                           00FCEC   596 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   597 _PCA0CP2	=	0xfcec
                           00FDED   598 G$PCA0CP3$0$0 == 0xfded
                           00FDED   599 _PCA0CP3	=	0xfded
                           00FEEE   600 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   601 _PCA0CP4	=	0xfeee
                                    602 ;--------------------------------------------------------
                                    603 ; special function bits
                                    604 ;--------------------------------------------------------
                                    605 	.area RSEG    (ABS,DATA)
      000000                        606 	.org 0x0000
                           000080   607 G$P0_0$0$0 == 0x0080
                           000080   608 _P0_0	=	0x0080
                           000081   609 G$P0_1$0$0 == 0x0081
                           000081   610 _P0_1	=	0x0081
                           000082   611 G$P0_2$0$0 == 0x0082
                           000082   612 _P0_2	=	0x0082
                           000083   613 G$P0_3$0$0 == 0x0083
                           000083   614 _P0_3	=	0x0083
                           000084   615 G$P0_4$0$0 == 0x0084
                           000084   616 _P0_4	=	0x0084
                           000085   617 G$P0_5$0$0 == 0x0085
                           000085   618 _P0_5	=	0x0085
                           000086   619 G$P0_6$0$0 == 0x0086
                           000086   620 _P0_6	=	0x0086
                           000087   621 G$P0_7$0$0 == 0x0087
                           000087   622 _P0_7	=	0x0087
                           000088   623 G$IT0$0$0 == 0x0088
                           000088   624 _IT0	=	0x0088
                           000089   625 G$IE0$0$0 == 0x0089
                           000089   626 _IE0	=	0x0089
                           00008A   627 G$IT1$0$0 == 0x008a
                           00008A   628 _IT1	=	0x008a
                           00008B   629 G$IE1$0$0 == 0x008b
                           00008B   630 _IE1	=	0x008b
                           00008C   631 G$TR0$0$0 == 0x008c
                           00008C   632 _TR0	=	0x008c
                           00008D   633 G$TF0$0$0 == 0x008d
                           00008D   634 _TF0	=	0x008d
                           00008E   635 G$TR1$0$0 == 0x008e
                           00008E   636 _TR1	=	0x008e
                           00008F   637 G$TF1$0$0 == 0x008f
                           00008F   638 _TF1	=	0x008f
                           000090   639 G$P1_0$0$0 == 0x0090
                           000090   640 _P1_0	=	0x0090
                           000091   641 G$P1_1$0$0 == 0x0091
                           000091   642 _P1_1	=	0x0091
                           000092   643 G$P1_2$0$0 == 0x0092
                           000092   644 _P1_2	=	0x0092
                           000093   645 G$P1_3$0$0 == 0x0093
                           000093   646 _P1_3	=	0x0093
                           000094   647 G$P1_4$0$0 == 0x0094
                           000094   648 _P1_4	=	0x0094
                           000095   649 G$P1_5$0$0 == 0x0095
                           000095   650 _P1_5	=	0x0095
                           000096   651 G$P1_6$0$0 == 0x0096
                           000096   652 _P1_6	=	0x0096
                           000097   653 G$P1_7$0$0 == 0x0097
                           000097   654 _P1_7	=	0x0097
                           000098   655 G$RI$0$0 == 0x0098
                           000098   656 _RI	=	0x0098
                           000098   657 G$RI0$0$0 == 0x0098
                           000098   658 _RI0	=	0x0098
                           000099   659 G$TI$0$0 == 0x0099
                           000099   660 _TI	=	0x0099
                           000099   661 G$TI0$0$0 == 0x0099
                           000099   662 _TI0	=	0x0099
                           00009A   663 G$RB8$0$0 == 0x009a
                           00009A   664 _RB8	=	0x009a
                           00009A   665 G$RB80$0$0 == 0x009a
                           00009A   666 _RB80	=	0x009a
                           00009B   667 G$TB8$0$0 == 0x009b
                           00009B   668 _TB8	=	0x009b
                           00009B   669 G$TB80$0$0 == 0x009b
                           00009B   670 _TB80	=	0x009b
                           00009C   671 G$REN$0$0 == 0x009c
                           00009C   672 _REN	=	0x009c
                           00009C   673 G$REN0$0$0 == 0x009c
                           00009C   674 _REN0	=	0x009c
                           00009D   675 G$SM2$0$0 == 0x009d
                           00009D   676 _SM2	=	0x009d
                           00009D   677 G$SM20$0$0 == 0x009d
                           00009D   678 _SM20	=	0x009d
                           00009D   679 G$MCE0$0$0 == 0x009d
                           00009D   680 _MCE0	=	0x009d
                           00009E   681 G$SM1$0$0 == 0x009e
                           00009E   682 _SM1	=	0x009e
                           00009E   683 G$SM10$0$0 == 0x009e
                           00009E   684 _SM10	=	0x009e
                           00009F   685 G$SM0$0$0 == 0x009f
                           00009F   686 _SM0	=	0x009f
                           00009F   687 G$SM00$0$0 == 0x009f
                           00009F   688 _SM00	=	0x009f
                           00009F   689 G$S0MODE$0$0 == 0x009f
                           00009F   690 _S0MODE	=	0x009f
                           0000A0   691 G$P2_0$0$0 == 0x00a0
                           0000A0   692 _P2_0	=	0x00a0
                           0000A1   693 G$P2_1$0$0 == 0x00a1
                           0000A1   694 _P2_1	=	0x00a1
                           0000A2   695 G$P2_2$0$0 == 0x00a2
                           0000A2   696 _P2_2	=	0x00a2
                           0000A3   697 G$P2_3$0$0 == 0x00a3
                           0000A3   698 _P2_3	=	0x00a3
                           0000A4   699 G$P2_4$0$0 == 0x00a4
                           0000A4   700 _P2_4	=	0x00a4
                           0000A5   701 G$P2_5$0$0 == 0x00a5
                           0000A5   702 _P2_5	=	0x00a5
                           0000A6   703 G$P2_6$0$0 == 0x00a6
                           0000A6   704 _P2_6	=	0x00a6
                           0000A7   705 G$P2_7$0$0 == 0x00a7
                           0000A7   706 _P2_7	=	0x00a7
                           0000A8   707 G$EX0$0$0 == 0x00a8
                           0000A8   708 _EX0	=	0x00a8
                           0000A9   709 G$ET0$0$0 == 0x00a9
                           0000A9   710 _ET0	=	0x00a9
                           0000AA   711 G$EX1$0$0 == 0x00aa
                           0000AA   712 _EX1	=	0x00aa
                           0000AB   713 G$ET1$0$0 == 0x00ab
                           0000AB   714 _ET1	=	0x00ab
                           0000AC   715 G$ES0$0$0 == 0x00ac
                           0000AC   716 _ES0	=	0x00ac
                           0000AC   717 G$ES$0$0 == 0x00ac
                           0000AC   718 _ES	=	0x00ac
                           0000AD   719 G$ET2$0$0 == 0x00ad
                           0000AD   720 _ET2	=	0x00ad
                           0000AF   721 G$EA$0$0 == 0x00af
                           0000AF   722 _EA	=	0x00af
                           0000B0   723 G$P3_0$0$0 == 0x00b0
                           0000B0   724 _P3_0	=	0x00b0
                           0000B1   725 G$P3_1$0$0 == 0x00b1
                           0000B1   726 _P3_1	=	0x00b1
                           0000B2   727 G$P3_2$0$0 == 0x00b2
                           0000B2   728 _P3_2	=	0x00b2
                           0000B3   729 G$P3_3$0$0 == 0x00b3
                           0000B3   730 _P3_3	=	0x00b3
                           0000B4   731 G$P3_4$0$0 == 0x00b4
                           0000B4   732 _P3_4	=	0x00b4
                           0000B5   733 G$P3_5$0$0 == 0x00b5
                           0000B5   734 _P3_5	=	0x00b5
                           0000B6   735 G$P3_6$0$0 == 0x00b6
                           0000B6   736 _P3_6	=	0x00b6
                           0000B7   737 G$P3_7$0$0 == 0x00b7
                           0000B7   738 _P3_7	=	0x00b7
                           0000B8   739 G$PX0$0$0 == 0x00b8
                           0000B8   740 _PX0	=	0x00b8
                           0000B9   741 G$PT0$0$0 == 0x00b9
                           0000B9   742 _PT0	=	0x00b9
                           0000BA   743 G$PX1$0$0 == 0x00ba
                           0000BA   744 _PX1	=	0x00ba
                           0000BB   745 G$PT1$0$0 == 0x00bb
                           0000BB   746 _PT1	=	0x00bb
                           0000BC   747 G$PS0$0$0 == 0x00bc
                           0000BC   748 _PS0	=	0x00bc
                           0000BC   749 G$PS$0$0 == 0x00bc
                           0000BC   750 _PS	=	0x00bc
                           0000BD   751 G$PT2$0$0 == 0x00bd
                           0000BD   752 _PT2	=	0x00bd
                           0000C0   753 G$SMBTOE$0$0 == 0x00c0
                           0000C0   754 _SMBTOE	=	0x00c0
                           0000C1   755 G$SMBFTE$0$0 == 0x00c1
                           0000C1   756 _SMBFTE	=	0x00c1
                           0000C2   757 G$AA$0$0 == 0x00c2
                           0000C2   758 _AA	=	0x00c2
                           0000C3   759 G$SI$0$0 == 0x00c3
                           0000C3   760 _SI	=	0x00c3
                           0000C4   761 G$STO$0$0 == 0x00c4
                           0000C4   762 _STO	=	0x00c4
                           0000C5   763 G$STA$0$0 == 0x00c5
                           0000C5   764 _STA	=	0x00c5
                           0000C6   765 G$ENSMB$0$0 == 0x00c6
                           0000C6   766 _ENSMB	=	0x00c6
                           0000C7   767 G$BUSY$0$0 == 0x00c7
                           0000C7   768 _BUSY	=	0x00c7
                           0000C8   769 G$CPRL2$0$0 == 0x00c8
                           0000C8   770 _CPRL2	=	0x00c8
                           0000C9   771 G$CT2$0$0 == 0x00c9
                           0000C9   772 _CT2	=	0x00c9
                           0000CA   773 G$TR2$0$0 == 0x00ca
                           0000CA   774 _TR2	=	0x00ca
                           0000CB   775 G$EXEN2$0$0 == 0x00cb
                           0000CB   776 _EXEN2	=	0x00cb
                           0000CC   777 G$TCLK$0$0 == 0x00cc
                           0000CC   778 _TCLK	=	0x00cc
                           0000CD   779 G$RCLK$0$0 == 0x00cd
                           0000CD   780 _RCLK	=	0x00cd
                           0000CE   781 G$EXF2$0$0 == 0x00ce
                           0000CE   782 _EXF2	=	0x00ce
                           0000CF   783 G$TF2$0$0 == 0x00cf
                           0000CF   784 _TF2	=	0x00cf
                           0000D0   785 G$P$0$0 == 0x00d0
                           0000D0   786 _P	=	0x00d0
                           0000D1   787 G$F1$0$0 == 0x00d1
                           0000D1   788 _F1	=	0x00d1
                           0000D2   789 G$OV$0$0 == 0x00d2
                           0000D2   790 _OV	=	0x00d2
                           0000D3   791 G$RS0$0$0 == 0x00d3
                           0000D3   792 _RS0	=	0x00d3
                           0000D4   793 G$RS1$0$0 == 0x00d4
                           0000D4   794 _RS1	=	0x00d4
                           0000D5   795 G$F0$0$0 == 0x00d5
                           0000D5   796 _F0	=	0x00d5
                           0000D6   797 G$AC$0$0 == 0x00d6
                           0000D6   798 _AC	=	0x00d6
                           0000D7   799 G$CY$0$0 == 0x00d7
                           0000D7   800 _CY	=	0x00d7
                           0000D8   801 G$CCF0$0$0 == 0x00d8
                           0000D8   802 _CCF0	=	0x00d8
                           0000D9   803 G$CCF1$0$0 == 0x00d9
                           0000D9   804 _CCF1	=	0x00d9
                           0000DA   805 G$CCF2$0$0 == 0x00da
                           0000DA   806 _CCF2	=	0x00da
                           0000DB   807 G$CCF3$0$0 == 0x00db
                           0000DB   808 _CCF3	=	0x00db
                           0000DC   809 G$CCF4$0$0 == 0x00dc
                           0000DC   810 _CCF4	=	0x00dc
                           0000DE   811 G$CR$0$0 == 0x00de
                           0000DE   812 _CR	=	0x00de
                           0000DF   813 G$CF$0$0 == 0x00df
                           0000DF   814 _CF	=	0x00df
                           0000E8   815 G$ADLJST$0$0 == 0x00e8
                           0000E8   816 _ADLJST	=	0x00e8
                           0000E8   817 G$AD0LJST$0$0 == 0x00e8
                           0000E8   818 _AD0LJST	=	0x00e8
                           0000E9   819 G$ADWINT$0$0 == 0x00e9
                           0000E9   820 _ADWINT	=	0x00e9
                           0000E9   821 G$AD0WINT$0$0 == 0x00e9
                           0000E9   822 _AD0WINT	=	0x00e9
                           0000EA   823 G$ADSTM0$0$0 == 0x00ea
                           0000EA   824 _ADSTM0	=	0x00ea
                           0000EA   825 G$AD0CM0$0$0 == 0x00ea
                           0000EA   826 _AD0CM0	=	0x00ea
                           0000EB   827 G$ADSTM1$0$0 == 0x00eb
                           0000EB   828 _ADSTM1	=	0x00eb
                           0000EB   829 G$AD0CM1$0$0 == 0x00eb
                           0000EB   830 _AD0CM1	=	0x00eb
                           0000EC   831 G$ADBUSY$0$0 == 0x00ec
                           0000EC   832 _ADBUSY	=	0x00ec
                           0000EC   833 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   834 _AD0BUSY	=	0x00ec
                           0000ED   835 G$ADCINT$0$0 == 0x00ed
                           0000ED   836 _ADCINT	=	0x00ed
                           0000ED   837 G$AD0INT$0$0 == 0x00ed
                           0000ED   838 _AD0INT	=	0x00ed
                           0000EE   839 G$ADCTM$0$0 == 0x00ee
                           0000EE   840 _ADCTM	=	0x00ee
                           0000EE   841 G$AD0TM$0$0 == 0x00ee
                           0000EE   842 _AD0TM	=	0x00ee
                           0000EF   843 G$ADCEN$0$0 == 0x00ef
                           0000EF   844 _ADCEN	=	0x00ef
                           0000EF   845 G$AD0EN$0$0 == 0x00ef
                           0000EF   846 _AD0EN	=	0x00ef
                           0000F8   847 G$SPIEN$0$0 == 0x00f8
                           0000F8   848 _SPIEN	=	0x00f8
                           0000F9   849 G$MSTEN$0$0 == 0x00f9
                           0000F9   850 _MSTEN	=	0x00f9
                           0000FA   851 G$SLVSEL$0$0 == 0x00fa
                           0000FA   852 _SLVSEL	=	0x00fa
                           0000FB   853 G$TXBSY$0$0 == 0x00fb
                           0000FB   854 _TXBSY	=	0x00fb
                           0000FC   855 G$RXOVRN$0$0 == 0x00fc
                           0000FC   856 _RXOVRN	=	0x00fc
                           0000FD   857 G$MODF$0$0 == 0x00fd
                           0000FD   858 _MODF	=	0x00fd
                           0000FE   859 G$WCOL$0$0 == 0x00fe
                           0000FE   860 _WCOL	=	0x00fe
                           0000FF   861 G$SPIF$0$0 == 0x00ff
                           0000FF   862 _SPIF	=	0x00ff
                                    863 ;--------------------------------------------------------
                                    864 ; overlayable register banks
                                    865 ;--------------------------------------------------------
                                    866 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        867 	.ds 8
                                    868 ;--------------------------------------------------------
                                    869 ; internal ram data
                                    870 ;--------------------------------------------------------
                                    871 	.area DSEG    (DATA)
                           000000   872 G$input$0$0==.
      000008                        873 _input::
      000008                        874 	.ds 1
                           000001   875 G$number$0$0==.
      000009                        876 _number::
      000009                        877 	.ds 1
                                    878 ;--------------------------------------------------------
                                    879 ; overlayable items in internal ram 
                                    880 ;--------------------------------------------------------
                                    881 	.area	OSEG    (OVR,DATA)
                                    882 	.area	OSEG    (OVR,DATA)
                                    883 ;--------------------------------------------------------
                                    884 ; Stack segment in internal ram 
                                    885 ;--------------------------------------------------------
                                    886 	.area	SSEG
      00003C                        887 __start__stack:
      00003C                        888 	.ds	1
                                    889 
                                    890 ;--------------------------------------------------------
                                    891 ; indirectly addressable internal ram data
                                    892 ;--------------------------------------------------------
                                    893 	.area ISEG    (DATA)
                                    894 ;--------------------------------------------------------
                                    895 ; absolute internal ram data
                                    896 ;--------------------------------------------------------
                                    897 	.area IABS    (ABS,DATA)
                                    898 	.area IABS    (ABS,DATA)
                                    899 ;--------------------------------------------------------
                                    900 ; bit data
                                    901 ;--------------------------------------------------------
                                    902 	.area BSEG    (BIT)
                                    903 ;--------------------------------------------------------
                                    904 ; paged external ram data
                                    905 ;--------------------------------------------------------
                                    906 	.area PSEG    (PAG,XDATA)
                                    907 ;--------------------------------------------------------
                                    908 ; external ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area XSEG    (XDATA)
                                    911 ;--------------------------------------------------------
                                    912 ; absolute external ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area XABS    (ABS,XDATA)
                                    915 ;--------------------------------------------------------
                                    916 ; external initialized ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area XISEG   (XDATA)
                                    919 	.area HOME    (CODE)
                                    920 	.area GSINIT0 (CODE)
                                    921 	.area GSINIT1 (CODE)
                                    922 	.area GSINIT2 (CODE)
                                    923 	.area GSINIT3 (CODE)
                                    924 	.area GSINIT4 (CODE)
                                    925 	.area GSINIT5 (CODE)
                                    926 	.area GSINIT  (CODE)
                                    927 	.area GSFINAL (CODE)
                                    928 	.area CSEG    (CODE)
                                    929 ;--------------------------------------------------------
                                    930 ; interrupt vector 
                                    931 ;--------------------------------------------------------
                                    932 	.area HOME    (CODE)
      000000                        933 __interrupt_vect:
      000000 02 00 06         [24]  934 	ljmp	__sdcc_gsinit_startup
                                    935 ;--------------------------------------------------------
                                    936 ; global & static initialisations
                                    937 ;--------------------------------------------------------
                                    938 	.area HOME    (CODE)
                                    939 	.area GSINIT  (CODE)
                                    940 	.area GSFINAL (CODE)
                                    941 	.area GSINIT  (CODE)
                                    942 	.globl __sdcc_gsinit_startup
                                    943 	.globl __sdcc_program_startup
                                    944 	.globl __start__stack
                                    945 	.globl __mcs51_genXINIT
                                    946 	.globl __mcs51_genXRAMCLEAR
                                    947 	.globl __mcs51_genRAMCLEAR
                                    948 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  949 	ljmp	__sdcc_program_startup
                                    950 ;--------------------------------------------------------
                                    951 ; Home
                                    952 ;--------------------------------------------------------
                                    953 	.area HOME    (CODE)
                                    954 	.area HOME    (CODE)
      000003                        955 __sdcc_program_startup:
      000003 02 00 DD         [24]  956 	ljmp	_main
                                    957 ;	return from main will return to caller
                                    958 ;--------------------------------------------------------
                                    959 ; code
                                    960 ;--------------------------------------------------------
                                    961 	.area CSEG    (CODE)
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    964 ;------------------------------------------------------------
                                    965 ;i                         Allocated to registers r6 r7 
                                    966 ;------------------------------------------------------------
                           000000   967 	G$SYSCLK_Init$0$0 ==.
                           000000   968 	C$C8051_SDCC.h$62$0$0 ==.
                                    969 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:62: void SYSCLK_Init(void)
                                    970 ;	-----------------------------------------
                                    971 ;	 function SYSCLK_Init
                                    972 ;	-----------------------------------------
      000062                        973 _SYSCLK_Init:
                           000007   974 	ar7 = 0x07
                           000006   975 	ar6 = 0x06
                           000005   976 	ar5 = 0x05
                           000004   977 	ar4 = 0x04
                           000003   978 	ar3 = 0x03
                           000002   979 	ar2 = 0x02
                           000001   980 	ar1 = 0x01
                           000000   981 	ar0 = 0x00
                           000000   982 	C$C8051_SDCC.h$66$1$2 ==.
                                    983 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      000062 75 B1 67         [24]  984 	mov	_OSCXCN,#0x67
                           000003   985 	C$C8051_SDCC.h$69$1$2 ==.
                                    986 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000065 7E 00            [12]  987 	mov	r6,#0x00
      000067 7F 01            [12]  988 	mov	r7,#0x01
      000069                        989 00107$:
      000069 EE               [12]  990 	mov	a,r6
      00006A 24 FF            [12]  991 	add	a,#0xff
      00006C FC               [12]  992 	mov	r4,a
      00006D EF               [12]  993 	mov	a,r7
      00006E 34 FF            [12]  994 	addc	a,#0xff
      000070 FD               [12]  995 	mov	r5,a
      000071 8C 06            [24]  996 	mov	ar6,r4
      000073 8D 07            [24]  997 	mov	ar7,r5
      000075 EC               [12]  998 	mov	a,r4
      000076 4D               [12]  999 	orl	a,r5
      000077 70 F0            [24] 1000 	jnz	00107$
                           000017  1001 	C$C8051_SDCC.h$71$1$2 ==.
                                   1002 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000079                       1003 00102$:
      000079 E5 B1            [12] 1004 	mov	a,_OSCXCN
      00007B 30 E7 FB         [24] 1005 	jnb	acc.7,00102$
                           00001C  1006 	C$C8051_SDCC.h$73$1$2 ==.
                                   1007 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      00007E 75 B2 88         [24] 1008 	mov	_OSCICN,#0x88
                           00001F  1009 	C$C8051_SDCC.h$76$1$2 ==.
                           00001F  1010 	XG$SYSCLK_Init$0$0 ==.
      000081 22               [24] 1011 	ret
                                   1012 ;------------------------------------------------------------
                                   1013 ;Allocation info for local variables in function 'UART0_Init'
                                   1014 ;------------------------------------------------------------
                           000020  1015 	G$UART0_Init$0$0 ==.
                           000020  1016 	C$C8051_SDCC.h$84$1$2 ==.
                                   1017 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:84: void UART0_Init(void)
                                   1018 ;	-----------------------------------------
                                   1019 ;	 function UART0_Init
                                   1020 ;	-----------------------------------------
      000082                       1021 _UART0_Init:
                           000020  1022 	C$C8051_SDCC.h$86$1$4 ==.
                                   1023 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      000082 75 98 50         [24] 1024 	mov	_SCON0,#0x50
                           000023  1025 	C$C8051_SDCC.h$87$1$4 ==.
                                   1026 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000085 75 89 20         [24] 1027 	mov	_TMOD,#0x20
                           000026  1028 	C$C8051_SDCC.h$88$1$4 ==.
                                   1029 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000088 75 8D DC         [24] 1030 	mov	_TH1,#0xdc
                           000029  1031 	C$C8051_SDCC.h$89$1$4 ==.
                                   1032 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      00008B D2 8E            [12] 1033 	setb	_TR1
                           00002B  1034 	C$C8051_SDCC.h$90$1$4 ==.
                                   1035 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      00008D 43 8E 10         [24] 1036 	orl	_CKCON,#0x10
                           00002E  1037 	C$C8051_SDCC.h$91$1$4 ==.
                                   1038 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000090 43 87 80         [24] 1039 	orl	_PCON,#0x80
                           000031  1040 	C$C8051_SDCC.h$93$1$4 ==.
                                   1041 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000093 D2 99            [12] 1042 	setb	_TI0
                           000033  1043 	C$C8051_SDCC.h$94$1$4 ==.
                                   1044 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000095 43 A4 01         [24] 1045 	orl	_P0MDOUT,#0x01
                           000036  1046 	C$C8051_SDCC.h$95$1$4 ==.
                           000036  1047 	XG$UART0_Init$0$0 ==.
      000098 22               [24] 1048 	ret
                                   1049 ;------------------------------------------------------------
                                   1050 ;Allocation info for local variables in function 'Sys_Init'
                                   1051 ;------------------------------------------------------------
                           000037  1052 	G$Sys_Init$0$0 ==.
                           000037  1053 	C$C8051_SDCC.h$103$1$4 ==.
                                   1054 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:103: void Sys_Init(void)
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function Sys_Init
                                   1057 ;	-----------------------------------------
      000099                       1058 _Sys_Init:
                           000037  1059 	C$C8051_SDCC.h$105$1$6 ==.
                                   1060 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000099 75 FF DE         [24] 1061 	mov	_WDTCN,#0xde
                           00003A  1062 	C$C8051_SDCC.h$106$1$6 ==.
                                   1063 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:106: WDTCN = 0xad;
      00009C 75 FF AD         [24] 1064 	mov	_WDTCN,#0xad
                           00003D  1065 	C$C8051_SDCC.h$108$1$6 ==.
                                   1066 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00009F 12 00 62         [24] 1067 	lcall	_SYSCLK_Init
                           000040  1068 	C$C8051_SDCC.h$109$1$6 ==.
                                   1069 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000A2 12 00 82         [24] 1070 	lcall	_UART0_Init
                           000043  1071 	C$C8051_SDCC.h$111$1$6 ==.
                                   1072 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:111: XBR0 |= 0x04;
      0000A5 43 E1 04         [24] 1073 	orl	_XBR0,#0x04
                           000046  1074 	C$C8051_SDCC.h$112$1$6 ==.
                                   1075 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000A8 43 E3 40         [24] 1076 	orl	_XBR2,#0x40
                           000049  1077 	C$C8051_SDCC.h$113$1$6 ==.
                           000049  1078 	XG$Sys_Init$0$0 ==.
      0000AB 22               [24] 1079 	ret
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'putchar'
                                   1082 ;------------------------------------------------------------
                                   1083 ;c                         Allocated to registers r7 
                                   1084 ;------------------------------------------------------------
                           00004A  1085 	G$putchar$0$0 ==.
                           00004A  1086 	C$C8051_SDCC.h$129$1$6 ==.
                                   1087 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:129: void putchar(char c)
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function putchar
                                   1090 ;	-----------------------------------------
      0000AC                       1091 _putchar:
      0000AC AF 82            [24] 1092 	mov	r7,dpl
                           00004C  1093 	C$C8051_SDCC.h$132$1$8 ==.
                                   1094 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:132: while (!TI0); 
      0000AE                       1095 00101$:
                           00004C  1096 	C$C8051_SDCC.h$133$1$8 ==.
                                   1097 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:133: TI0 = 0;
      0000AE 10 99 02         [24] 1098 	jbc	_TI0,00112$
      0000B1 80 FB            [24] 1099 	sjmp	00101$
      0000B3                       1100 00112$:
                           000051  1101 	C$C8051_SDCC.h$134$1$8 ==.
                                   1102 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:134: SBUF0 = c;
      0000B3 8F 99            [24] 1103 	mov	_SBUF0,r7
                           000053  1104 	C$C8051_SDCC.h$135$1$8 ==.
                           000053  1105 	XG$putchar$0$0 ==.
      0000B5 22               [24] 1106 	ret
                                   1107 ;------------------------------------------------------------
                                   1108 ;Allocation info for local variables in function 'getchar'
                                   1109 ;------------------------------------------------------------
                                   1110 ;c                         Allocated to registers r7 
                                   1111 ;------------------------------------------------------------
                           000054  1112 	G$getchar$0$0 ==.
                           000054  1113 	C$C8051_SDCC.h$154$1$8 ==.
                                   1114 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:154: char getchar(void)
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function getchar
                                   1117 ;	-----------------------------------------
      0000B6                       1118 _getchar:
                           000054  1119 	C$C8051_SDCC.h$157$1$10 ==.
                                   1120 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:157: while (!RI0);
      0000B6                       1121 00101$:
                           000054  1122 	C$C8051_SDCC.h$158$1$10 ==.
                                   1123 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:158: RI0 = 0;
      0000B6 10 98 02         [24] 1124 	jbc	_RI0,00112$
      0000B9 80 FB            [24] 1125 	sjmp	00101$
      0000BB                       1126 00112$:
                           000059  1127 	C$C8051_SDCC.h$159$1$10 ==.
                                   1128 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:159: c = SBUF0;
      0000BB AF 99            [24] 1129 	mov	r7,_SBUF0
                           00005B  1130 	C$C8051_SDCC.h$160$1$10 ==.
                                   1131 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000BD 8F 82            [24] 1132 	mov	dpl,r7
      0000BF C0 07            [24] 1133 	push	ar7
      0000C1 12 00 AC         [24] 1134 	lcall	_putchar
      0000C4 D0 07            [24] 1135 	pop	ar7
                           000064  1136 	C$C8051_SDCC.h$161$1$10 ==.
                                   1137 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:161: return c;
      0000C6 8F 82            [24] 1138 	mov	dpl,r7
                           000066  1139 	C$C8051_SDCC.h$162$1$10 ==.
                           000066  1140 	XG$getchar$0$0 ==.
      0000C8 22               [24] 1141 	ret
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'getchar_nw'
                                   1144 ;------------------------------------------------------------
                                   1145 ;c                         Allocated to registers 
                                   1146 ;------------------------------------------------------------
                           000067  1147 	G$getchar_nw$0$0 ==.
                           000067  1148 	C$C8051_SDCC.h$168$1$10 ==.
                                   1149 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:168: char getchar_nw(void)
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function getchar_nw
                                   1152 ;	-----------------------------------------
      0000C9                       1153 _getchar_nw:
                           000067  1154 	C$C8051_SDCC.h$171$1$12 ==.
                                   1155 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000C9 20 98 05         [24] 1156 	jb	_RI0,00102$
      0000CC 75 82 FF         [24] 1157 	mov	dpl,#0xff
      0000CF 80 0B            [24] 1158 	sjmp	00104$
      0000D1                       1159 00102$:
                           00006F  1160 	C$C8051_SDCC.h$174$2$13 ==.
                                   1161 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:174: RI0 = 0;
      0000D1 C2 98            [12] 1162 	clr	_RI0
                           000071  1163 	C$C8051_SDCC.h$175$2$13 ==.
                                   1164 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:175: c = SBUF0;
      0000D3 85 99 82         [24] 1165 	mov	dpl,_SBUF0
                           000074  1166 	C$C8051_SDCC.h$176$2$13 ==.
                                   1167 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000D6 12 00 AC         [24] 1168 	lcall	_putchar
                           000077  1169 	C$C8051_SDCC.h$177$2$13 ==.
                                   1170 ;	C:/Program Files/SDCC/bin/../include/mcs51/C8051_SDCC.h:177: return SBUF0;
      0000D9 85 99 82         [24] 1171 	mov	dpl,_SBUF0
      0000DC                       1172 00104$:
                           00007A  1173 	C$C8051_SDCC.h$179$1$12 ==.
                           00007A  1174 	XG$getchar_nw$0$0 ==.
      0000DC 22               [24] 1175 	ret
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'main'
                                   1178 ;------------------------------------------------------------
                           00007B  1179 	G$main$0$0 ==.
                           00007B  1180 	C$hw2.c$36$1$12 ==.
                                   1181 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:36: void main(void) 	       			// Start main function
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function main
                                   1184 ;	-----------------------------------------
      0000DD                       1185 _main:
                           00007B  1186 	C$hw2.c$39$1$32 ==.
                                   1187 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:39: Sys_Init();   					// Initialize UART, System clock and crossbar
      0000DD 12 00 99         [24] 1188 	lcall	_Sys_Init
                           00007E  1189 	C$hw2.c$40$1$32 ==.
                                   1190 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:40: putchar(' '); 					// Do this because we tell you to 
      0000E0 75 82 20         [24] 1191 	mov	dpl,#0x20
      0000E3 12 00 AC         [24] 1192 	lcall	_putchar
                           000084  1193 	C$hw2.c$41$1$32 ==.
                                   1194 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:41: printf("LITEC Homework Assignment 2\r\n\n"); // Print start message
      0000E6 74 3E            [12] 1195 	mov	a,#___str_0
      0000E8 C0 E0            [24] 1196 	push	acc
      0000EA 74 08            [12] 1197 	mov	a,#(___str_0 >> 8)
      0000EC C0 E0            [24] 1198 	push	acc
      0000EE 74 80            [12] 1199 	mov	a,#0x80
      0000F0 C0 E0            [24] 1200 	push	acc
      0000F2 12 02 23         [24] 1201 	lcall	_printf
      0000F5 15 81            [12] 1202 	dec	sp
      0000F7 15 81            [12] 1203 	dec	sp
      0000F9 15 81            [12] 1204 	dec	sp
                           000099  1205 	C$hw2.c$44$1$32 ==.
                                   1206 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:44: while(10)      					// Begin infinite loop 
      0000FB                       1207 00111$:
                           000099  1208 	C$hw2.c$46$2$33 ==.
                                   1209 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:46: printf("What is your favorite seasoni Troy? \r\n");
      0000FB 74 5D            [12] 1210 	mov	a,#___str_1
      0000FD C0 E0            [24] 1211 	push	acc
      0000FF 74 08            [12] 1212 	mov	a,#(___str_1 >> 8)
      000101 C0 E0            [24] 1213 	push	acc
      000103 74 80            [12] 1214 	mov	a,#0x80
      000105 C0 E0            [24] 1215 	push	acc
      000107 12 02 23         [24] 1216 	lcall	_printf
      00010A 15 81            [12] 1217 	dec	sp
      00010C 15 81            [12] 1218 	dec	sp
      00010E 15 81            [12] 1219 	dec	sp
                           0000AE  1220 	C$hw2.c$47$2$33 ==.
                                   1221 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:47: printf("    Enter an 'S' for Summer\r\n");
      000110 74 84            [12] 1222 	mov	a,#___str_2
      000112 C0 E0            [24] 1223 	push	acc
      000114 74 08            [12] 1224 	mov	a,#(___str_2 >> 8)
      000116 C0 E0            [24] 1225 	push	acc
      000118 74 80            [12] 1226 	mov	a,#0x80
      00011A C0 E0            [24] 1227 	push	acc
      00011C 12 02 23         [24] 1228 	lcall	_printf
      00011F 15 81            [12] 1229 	dec	sp
      000121 15 81            [12] 1230 	dec	sp
      000123 15 81            [12] 1231 	dec	sp
                           0000C3  1232 	C$hw2.c$48$2$33 ==.
                                   1233 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:48: printf("    Enter an 'W' for Winter\r\n");
      000125 74 A2            [12] 1234 	mov	a,#___str_3
      000127 C0 E0            [24] 1235 	push	acc
      000129 74 08            [12] 1236 	mov	a,#(___str_3 >> 8)
      00012B C0 E0            [24] 1237 	push	acc
      00012D 74 80            [12] 1238 	mov	a,#0x80
      00012F C0 E0            [24] 1239 	push	acc
      000131 12 02 23         [24] 1240 	lcall	_printf
      000134 15 81            [12] 1241 	dec	sp
      000136 15 81            [12] 1242 	dec	sp
      000138 15 81            [12] 1243 	dec	sp
                           0000D8  1244 	C$hw2.c$49$2$33 ==.
                                   1245 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:49: printf("    Enter an 'F' for Fall\r\n");
      00013A 74 C0            [12] 1246 	mov	a,#___str_4
      00013C C0 E0            [24] 1247 	push	acc
      00013E 74 08            [12] 1248 	mov	a,#(___str_4 >> 8)
      000140 C0 E0            [24] 1249 	push	acc
      000142 74 80            [12] 1250 	mov	a,#0x80
      000144 C0 E0            [24] 1251 	push	acc
      000146 12 02 23         [24] 1252 	lcall	_printf
      000149 15 81            [12] 1253 	dec	sp
      00014B 15 81            [12] 1254 	dec	sp
      00014D 15 81            [12] 1255 	dec	sp
                           0000ED  1256 	C$hw2.c$50$2$33 ==.
                                   1257 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:50: input = getchar();      	// Get keyboard input
      00014F 12 00 B6         [24] 1258 	lcall	_getchar
      000152 85 82 08         [24] 1259 	mov	_input,dpl
                           0000F3  1260 	C$hw2.c$53$2$33 ==.
                                   1261 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:53: if (input == 'S')			// MANE department chosen
      000155 74 53            [12] 1262 	mov	a,#0x53
      000157 B5 08 05         [24] 1263 	cjne	a,_input,00108$
                           0000F8  1264 	C$hw2.c$55$3$34 ==.
                                   1265 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:55: Summer();
      00015A 12 01 92         [24] 1266 	lcall	_Summer
      00015D 80 17            [24] 1267 	sjmp	00109$
      00015F                       1268 00108$:
                           0000FD  1269 	C$hw2.c$57$2$33 ==.
                                   1270 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:57: else if (input == 'F')		// ECSE department chosen, Error 2. changed = to ==
      00015F 74 46            [12] 1271 	mov	a,#0x46
      000161 B5 08 05         [24] 1272 	cjne	a,_input,00105$
                           000102  1273 	C$hw2.c$59$3$35 ==.
                                   1274 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:59: Fall();
      000164 12 01 BE         [24] 1275 	lcall	_Fall
      000167 80 0D            [24] 1276 	sjmp	00109$
      000169                       1277 00105$:
                           000107  1278 	C$hw2.c$61$2$33 ==.
                                   1279 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:61: else if (input == 'W')
      000169 74 57            [12] 1280 	mov	a,#0x57
      00016B B5 08 05         [24] 1281 	cjne	a,_input,00102$
                           00010C  1282 	C$hw2.c$63$3$36 ==.
                                   1283 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:63: Winter();
      00016E 12 01 A8         [24] 1284 	lcall	_Winter
      000171 80 03            [24] 1285 	sjmp	00109$
      000173                       1286 00102$:
                           000111  1287 	C$hw2.c$67$3$37 ==.
                                   1288 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:67: Spring();
      000173 12 01 D4         [24] 1289 	lcall	_Spring
      000176                       1290 00109$:
                           000114  1291 	C$hw2.c$70$2$33 ==.
                                   1292 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:70: printf("Press any key to pick a different season \r\n");
      000176 74 DC            [12] 1293 	mov	a,#___str_5
      000178 C0 E0            [24] 1294 	push	acc
      00017A 74 08            [12] 1295 	mov	a,#(___str_5 >> 8)
      00017C C0 E0            [24] 1296 	push	acc
      00017E 74 80            [12] 1297 	mov	a,#0x80
      000180 C0 E0            [24] 1298 	push	acc
      000182 12 02 23         [24] 1299 	lcall	_printf
      000185 15 81            [12] 1300 	dec	sp
      000187 15 81            [12] 1301 	dec	sp
      000189 15 81            [12] 1302 	dec	sp
                           000129  1303 	C$hw2.c$71$2$33 ==.
                                   1304 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:71: getchar();
      00018B 12 00 B6         [24] 1305 	lcall	_getchar
      00018E 02 00 FB         [24] 1306 	ljmp	00111$
                           00012F  1307 	C$hw2.c$73$1$32 ==.
                           00012F  1308 	XG$main$0$0 ==.
      000191 22               [24] 1309 	ret
                                   1310 ;------------------------------------------------------------
                                   1311 ;Allocation info for local variables in function 'Summer'
                                   1312 ;------------------------------------------------------------
                           000130  1313 	G$Summer$0$0 ==.
                           000130  1314 	C$hw2.c$78$1$32 ==.
                                   1315 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:78: void Summer(void)
                                   1316 ;	-----------------------------------------
                                   1317 ;	 function Summer
                                   1318 ;	-----------------------------------------
      000192                       1319 _Summer:
                           000130  1320 	C$hw2.c$80$1$39 ==.
                                   1321 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:80: printf("Great time for hiking. \r\n"); // Error 3. missing double quote after printf input
      000192 74 08            [12] 1322 	mov	a,#___str_6
      000194 C0 E0            [24] 1323 	push	acc
      000196 74 09            [12] 1324 	mov	a,#(___str_6 >> 8)
      000198 C0 E0            [24] 1325 	push	acc
      00019A 74 80            [12] 1326 	mov	a,#0x80
      00019C C0 E0            [24] 1327 	push	acc
      00019E 12 02 23         [24] 1328 	lcall	_printf
      0001A1 15 81            [12] 1329 	dec	sp
      0001A3 15 81            [12] 1330 	dec	sp
      0001A5 15 81            [12] 1331 	dec	sp
                           000145  1332 	C$hw2.c$81$1$39 ==.
                           000145  1333 	XG$Summer$0$0 ==.
      0001A7 22               [24] 1334 	ret
                                   1335 ;------------------------------------------------------------
                                   1336 ;Allocation info for local variables in function 'Winter'
                                   1337 ;------------------------------------------------------------
                           000146  1338 	G$Winter$0$0 ==.
                           000146  1339 	C$hw2.c$83$1$39 ==.
                                   1340 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:83: void Winter(void)
                                   1341 ;	-----------------------------------------
                                   1342 ;	 function Winter
                                   1343 ;	-----------------------------------------
      0001A8                       1344 _Winter:
                           000146  1345 	C$hw2.c$85$1$41 ==.
                                   1346 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:85: printf("You must like skiing. \r\n");
      0001A8 74 22            [12] 1347 	mov	a,#___str_7
      0001AA C0 E0            [24] 1348 	push	acc
      0001AC 74 09            [12] 1349 	mov	a,#(___str_7 >> 8)
      0001AE C0 E0            [24] 1350 	push	acc
      0001B0 74 80            [12] 1351 	mov	a,#0x80
      0001B2 C0 E0            [24] 1352 	push	acc
      0001B4 12 02 23         [24] 1353 	lcall	_printf
      0001B7 15 81            [12] 1354 	dec	sp
      0001B9 15 81            [12] 1355 	dec	sp
      0001BB 15 81            [12] 1356 	dec	sp
                           00015B  1357 	C$hw2.c$87$1$41 ==.
                           00015B  1358 	XG$Winter$0$0 ==.
      0001BD 22               [24] 1359 	ret
                                   1360 ;------------------------------------------------------------
                                   1361 ;Allocation info for local variables in function 'Fall'
                                   1362 ;------------------------------------------------------------
                           00015C  1363 	G$Fall$0$0 ==.
                           00015C  1364 	C$hw2.c$89$1$41 ==.
                                   1365 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:89: void Fall(void)
                                   1366 ;	-----------------------------------------
                                   1367 ;	 function Fall
                                   1368 ;	-----------------------------------------
      0001BE                       1369 _Fall:
                           00015C  1370 	C$hw2.c$91$1$43 ==.
                                   1371 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:91: printf("It must be the leaves changing color \r\n");
      0001BE 74 3B            [12] 1372 	mov	a,#___str_8
      0001C0 C0 E0            [24] 1373 	push	acc
      0001C2 74 09            [12] 1374 	mov	a,#(___str_8 >> 8)
      0001C4 C0 E0            [24] 1375 	push	acc
      0001C6 74 80            [12] 1376 	mov	a,#0x80
      0001C8 C0 E0            [24] 1377 	push	acc
      0001CA 12 02 23         [24] 1378 	lcall	_printf
      0001CD 15 81            [12] 1379 	dec	sp
      0001CF 15 81            [12] 1380 	dec	sp
      0001D1 15 81            [12] 1381 	dec	sp
                           000171  1382 	C$hw2.c$93$1$43 ==.
                           000171  1383 	XG$Fall$0$0 ==.
      0001D3 22               [24] 1384 	ret
                                   1385 ;------------------------------------------------------------
                                   1386 ;Allocation info for local variables in function 'Spring'
                                   1387 ;------------------------------------------------------------
                           000172  1388 	G$Spring$0$0 ==.
                           000172  1389 	C$hw2.c$95$1$43 ==.
                                   1390 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:95: void Spring(void)             // Error 4. fixed the spelling for the "void" in the function Spring
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function Spring
                                   1393 ;	-----------------------------------------
      0001D4                       1394 _Spring:
                           000172  1395 	C$hw2.c$97$1$45 ==.
                                   1396 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:97: printf("No surprise. \r\n");
      0001D4 74 63            [12] 1397 	mov	a,#___str_9
      0001D6 C0 E0            [24] 1398 	push	acc
      0001D8 74 09            [12] 1399 	mov	a,#(___str_9 >> 8)
      0001DA C0 E0            [24] 1400 	push	acc
      0001DC 74 80            [12] 1401 	mov	a,#0x80
      0001DE C0 E0            [24] 1402 	push	acc
      0001E0 12 02 23         [24] 1403 	lcall	_printf
      0001E3 15 81            [12] 1404 	dec	sp
      0001E5 15 81            [12] 1405 	dec	sp
      0001E7 15 81            [12] 1406 	dec	sp
                           000187  1407 	C$hw2.c$98$1$45 ==.
                                   1408 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\2\hw2.c:98: printf("    Everyone likes spring \r\n");
      0001E9 74 73            [12] 1409 	mov	a,#___str_10
      0001EB C0 E0            [24] 1410 	push	acc
      0001ED 74 09            [12] 1411 	mov	a,#(___str_10 >> 8)
      0001EF C0 E0            [24] 1412 	push	acc
      0001F1 74 80            [12] 1413 	mov	a,#0x80
      0001F3 C0 E0            [24] 1414 	push	acc
      0001F5 12 02 23         [24] 1415 	lcall	_printf
      0001F8 15 81            [12] 1416 	dec	sp
      0001FA 15 81            [12] 1417 	dec	sp
      0001FC 15 81            [12] 1418 	dec	sp
                           00019C  1419 	C$hw2.c$99$1$45 ==.
                           00019C  1420 	XG$Spring$0$0 ==.
      0001FE 22               [24] 1421 	ret
                                   1422 	.area CSEG    (CODE)
                                   1423 	.area CONST   (CODE)
                           000000  1424 Fhw2$__str_0$0$0 == .
      00083E                       1425 ___str_0:
      00083E 4C 49 54 45 43 20 48  1426 	.ascii "LITEC Homework Assignment 2"
             6F 6D 65 77 6F 72 6B
             20 41 73 73 69 67 6E
             6D 65 6E 74 20 32
      000859 0D                    1427 	.db 0x0d
      00085A 0A                    1428 	.db 0x0a
      00085B 0A                    1429 	.db 0x0a
      00085C 00                    1430 	.db 0x00
                           00001F  1431 Fhw2$__str_1$0$0 == .
      00085D                       1432 ___str_1:
      00085D 57 68 61 74 20 69 73  1433 	.ascii "What is your favorite seasoni Troy? "
             20 79 6F 75 72 20 66
             61 76 6F 72 69 74 65
             20 73 65 61 73 6F 6E
             69 20 54 72 6F 79 3F
             20
      000881 0D                    1434 	.db 0x0d
      000882 0A                    1435 	.db 0x0a
      000883 00                    1436 	.db 0x00
                           000046  1437 Fhw2$__str_2$0$0 == .
      000884                       1438 ___str_2:
      000884 20 20 20 20 45 6E 74  1439 	.ascii "    Enter an 'S' for Summer"
             65 72 20 61 6E 20 27
             53 27 20 66 6F 72 20
             53 75 6D 6D 65 72
      00089F 0D                    1440 	.db 0x0d
      0008A0 0A                    1441 	.db 0x0a
      0008A1 00                    1442 	.db 0x00
                           000064  1443 Fhw2$__str_3$0$0 == .
      0008A2                       1444 ___str_3:
      0008A2 20 20 20 20 45 6E 74  1445 	.ascii "    Enter an 'W' for Winter"
             65 72 20 61 6E 20 27
             57 27 20 66 6F 72 20
             57 69 6E 74 65 72
      0008BD 0D                    1446 	.db 0x0d
      0008BE 0A                    1447 	.db 0x0a
      0008BF 00                    1448 	.db 0x00
                           000082  1449 Fhw2$__str_4$0$0 == .
      0008C0                       1450 ___str_4:
      0008C0 20 20 20 20 45 6E 74  1451 	.ascii "    Enter an 'F' for Fall"
             65 72 20 61 6E 20 27
             46 27 20 66 6F 72 20
             46 61 6C 6C
      0008D9 0D                    1452 	.db 0x0d
      0008DA 0A                    1453 	.db 0x0a
      0008DB 00                    1454 	.db 0x00
                           00009E  1455 Fhw2$__str_5$0$0 == .
      0008DC                       1456 ___str_5:
      0008DC 50 72 65 73 73 20 61  1457 	.ascii "Press any key to pick a different season "
             6E 79 20 6B 65 79 20
             74 6F 20 70 69 63 6B
             20 61 20 64 69 66 66
             65 72 65 6E 74 20 73
             65 61 73 6F 6E 20
      000905 0D                    1458 	.db 0x0d
      000906 0A                    1459 	.db 0x0a
      000907 00                    1460 	.db 0x00
                           0000CA  1461 Fhw2$__str_6$0$0 == .
      000908                       1462 ___str_6:
      000908 47 72 65 61 74 20 74  1463 	.ascii "Great time for hiking. "
             69 6D 65 20 66 6F 72
             20 68 69 6B 69 6E 67
             2E 20
      00091F 0D                    1464 	.db 0x0d
      000920 0A                    1465 	.db 0x0a
      000921 00                    1466 	.db 0x00
                           0000E4  1467 Fhw2$__str_7$0$0 == .
      000922                       1468 ___str_7:
      000922 59 6F 75 20 6D 75 73  1469 	.ascii "You must like skiing. "
             74 20 6C 69 6B 65 20
             73 6B 69 69 6E 67 2E
             20
      000938 0D                    1470 	.db 0x0d
      000939 0A                    1471 	.db 0x0a
      00093A 00                    1472 	.db 0x00
                           0000FD  1473 Fhw2$__str_8$0$0 == .
      00093B                       1474 ___str_8:
      00093B 49 74 20 6D 75 73 74  1475 	.ascii "It must be the leaves changing color "
             20 62 65 20 74 68 65
             20 6C 65 61 76 65 73
             20 63 68 61 6E 67 69
             6E 67 20 63 6F 6C 6F
             72 20
      000960 0D                    1476 	.db 0x0d
      000961 0A                    1477 	.db 0x0a
      000962 00                    1478 	.db 0x00
                           000125  1479 Fhw2$__str_9$0$0 == .
      000963                       1480 ___str_9:
      000963 4E 6F 20 73 75 72 70  1481 	.ascii "No surprise. "
             72 69 73 65 2E 20
      000970 0D                    1482 	.db 0x0d
      000971 0A                    1483 	.db 0x0a
      000972 00                    1484 	.db 0x00
                           000135  1485 Fhw2$__str_10$0$0 == .
      000973                       1486 ___str_10:
      000973 20 20 20 20 45 76 65  1487 	.ascii "    Everyone likes spring "
             72 79 6F 6E 65 20 6C
             69 6B 65 73 20 73 70
             72 69 6E 67 20
      00098D 0D                    1488 	.db 0x0d
      00098E 0A                    1489 	.db 0x0a
      00098F 00                    1490 	.db 0x00
                                   1491 	.area XINIT   (CODE)
                                   1492 	.area CABS    (ABS,CODE)
