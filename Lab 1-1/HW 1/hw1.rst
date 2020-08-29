                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module hw1
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
                                    295 	.globl _input
                                    296 	.globl _count
                                    297 	.globl _i
                                    298 	.globl _imax
                                    299 	.globl _get_keyboard
                                    300 	.globl _set_count18
                                    301 	.globl _set_count270
                                    302 	.globl _output_count
                                    303 ;--------------------------------------------------------
                                    304 ; special function registers
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           000080   308 G$P0$0$0 == 0x0080
                           000080   309 _P0	=	0x0080
                           000081   310 G$SP$0$0 == 0x0081
                           000081   311 _SP	=	0x0081
                           000082   312 G$DPL$0$0 == 0x0082
                           000082   313 _DPL	=	0x0082
                           000083   314 G$DPH$0$0 == 0x0083
                           000083   315 _DPH	=	0x0083
                           000084   316 G$P4$0$0 == 0x0084
                           000084   317 _P4	=	0x0084
                           000085   318 G$P5$0$0 == 0x0085
                           000085   319 _P5	=	0x0085
                           000086   320 G$P6$0$0 == 0x0086
                           000086   321 _P6	=	0x0086
                           000087   322 G$PCON$0$0 == 0x0087
                           000087   323 _PCON	=	0x0087
                           000088   324 G$TCON$0$0 == 0x0088
                           000088   325 _TCON	=	0x0088
                           000089   326 G$TMOD$0$0 == 0x0089
                           000089   327 _TMOD	=	0x0089
                           00008A   328 G$TL0$0$0 == 0x008a
                           00008A   329 _TL0	=	0x008a
                           00008B   330 G$TL1$0$0 == 0x008b
                           00008B   331 _TL1	=	0x008b
                           00008C   332 G$TH0$0$0 == 0x008c
                           00008C   333 _TH0	=	0x008c
                           00008D   334 G$TH1$0$0 == 0x008d
                           00008D   335 _TH1	=	0x008d
                           00008E   336 G$CKCON$0$0 == 0x008e
                           00008E   337 _CKCON	=	0x008e
                           00008F   338 G$PSCTL$0$0 == 0x008f
                           00008F   339 _PSCTL	=	0x008f
                           000090   340 G$P1$0$0 == 0x0090
                           000090   341 _P1	=	0x0090
                           000091   342 G$TMR3CN$0$0 == 0x0091
                           000091   343 _TMR3CN	=	0x0091
                           000092   344 G$TMR3RLL$0$0 == 0x0092
                           000092   345 _TMR3RLL	=	0x0092
                           000093   346 G$TMR3RLH$0$0 == 0x0093
                           000093   347 _TMR3RLH	=	0x0093
                           000094   348 G$TMR3L$0$0 == 0x0094
                           000094   349 _TMR3L	=	0x0094
                           000095   350 G$TMR3H$0$0 == 0x0095
                           000095   351 _TMR3H	=	0x0095
                           000096   352 G$P7$0$0 == 0x0096
                           000096   353 _P7	=	0x0096
                           000098   354 G$SCON$0$0 == 0x0098
                           000098   355 _SCON	=	0x0098
                           000098   356 G$SCON0$0$0 == 0x0098
                           000098   357 _SCON0	=	0x0098
                           000099   358 G$SBUF$0$0 == 0x0099
                           000099   359 _SBUF	=	0x0099
                           000099   360 G$SBUF0$0$0 == 0x0099
                           000099   361 _SBUF0	=	0x0099
                           00009A   362 G$SPI0CFG$0$0 == 0x009a
                           00009A   363 _SPI0CFG	=	0x009a
                           00009B   364 G$SPI0DAT$0$0 == 0x009b
                           00009B   365 _SPI0DAT	=	0x009b
                           00009C   366 G$ADC1$0$0 == 0x009c
                           00009C   367 _ADC1	=	0x009c
                           00009D   368 G$SPI0CKR$0$0 == 0x009d
                           00009D   369 _SPI0CKR	=	0x009d
                           00009E   370 G$CPT0CN$0$0 == 0x009e
                           00009E   371 _CPT0CN	=	0x009e
                           00009F   372 G$CPT1CN$0$0 == 0x009f
                           00009F   373 _CPT1CN	=	0x009f
                           0000A0   374 G$P2$0$0 == 0x00a0
                           0000A0   375 _P2	=	0x00a0
                           0000A1   376 G$EMI0TC$0$0 == 0x00a1
                           0000A1   377 _EMI0TC	=	0x00a1
                           0000A3   378 G$EMI0CF$0$0 == 0x00a3
                           0000A3   379 _EMI0CF	=	0x00a3
                           0000A4   380 G$PRT0CF$0$0 == 0x00a4
                           0000A4   381 _PRT0CF	=	0x00a4
                           0000A4   382 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   383 _P0MDOUT	=	0x00a4
                           0000A5   384 G$PRT1CF$0$0 == 0x00a5
                           0000A5   385 _PRT1CF	=	0x00a5
                           0000A5   386 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   387 _P1MDOUT	=	0x00a5
                           0000A6   388 G$PRT2CF$0$0 == 0x00a6
                           0000A6   389 _PRT2CF	=	0x00a6
                           0000A6   390 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   391 _P2MDOUT	=	0x00a6
                           0000A7   392 G$PRT3CF$0$0 == 0x00a7
                           0000A7   393 _PRT3CF	=	0x00a7
                           0000A7   394 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   395 _P3MDOUT	=	0x00a7
                           0000A8   396 G$IE$0$0 == 0x00a8
                           0000A8   397 _IE	=	0x00a8
                           0000A9   398 G$SADDR0$0$0 == 0x00a9
                           0000A9   399 _SADDR0	=	0x00a9
                           0000AA   400 G$ADC1CN$0$0 == 0x00aa
                           0000AA   401 _ADC1CN	=	0x00aa
                           0000AB   402 G$ADC1CF$0$0 == 0x00ab
                           0000AB   403 _ADC1CF	=	0x00ab
                           0000AC   404 G$AMX1SL$0$0 == 0x00ac
                           0000AC   405 _AMX1SL	=	0x00ac
                           0000AD   406 G$P3IF$0$0 == 0x00ad
                           0000AD   407 _P3IF	=	0x00ad
                           0000AE   408 G$SADEN1$0$0 == 0x00ae
                           0000AE   409 _SADEN1	=	0x00ae
                           0000AF   410 G$EMI0CN$0$0 == 0x00af
                           0000AF   411 _EMI0CN	=	0x00af
                           0000AF   412 G$_XPAGE$0$0 == 0x00af
                           0000AF   413 __XPAGE	=	0x00af
                           0000B0   414 G$P3$0$0 == 0x00b0
                           0000B0   415 _P3	=	0x00b0
                           0000B1   416 G$OSCXCN$0$0 == 0x00b1
                           0000B1   417 _OSCXCN	=	0x00b1
                           0000B2   418 G$OSCICN$0$0 == 0x00b2
                           0000B2   419 _OSCICN	=	0x00b2
                           0000B5   420 G$P74OUT$0$0 == 0x00b5
                           0000B5   421 _P74OUT	=	0x00b5
                           0000B6   422 G$FLSCL$0$0 == 0x00b6
                           0000B6   423 _FLSCL	=	0x00b6
                           0000B7   424 G$FLACL$0$0 == 0x00b7
                           0000B7   425 _FLACL	=	0x00b7
                           0000B8   426 G$IP$0$0 == 0x00b8
                           0000B8   427 _IP	=	0x00b8
                           0000B9   428 G$SADEN0$0$0 == 0x00b9
                           0000B9   429 _SADEN0	=	0x00b9
                           0000BA   430 G$AMX0CF$0$0 == 0x00ba
                           0000BA   431 _AMX0CF	=	0x00ba
                           0000BB   432 G$AMX0SL$0$0 == 0x00bb
                           0000BB   433 _AMX0SL	=	0x00bb
                           0000BC   434 G$ADC0CF$0$0 == 0x00bc
                           0000BC   435 _ADC0CF	=	0x00bc
                           0000BD   436 G$P1MDIN$0$0 == 0x00bd
                           0000BD   437 _P1MDIN	=	0x00bd
                           0000BE   438 G$ADC0L$0$0 == 0x00be
                           0000BE   439 _ADC0L	=	0x00be
                           0000BF   440 G$ADC0H$0$0 == 0x00bf
                           0000BF   441 _ADC0H	=	0x00bf
                           0000C0   442 G$SMB0CN$0$0 == 0x00c0
                           0000C0   443 _SMB0CN	=	0x00c0
                           0000C1   444 G$SMB0STA$0$0 == 0x00c1
                           0000C1   445 _SMB0STA	=	0x00c1
                           0000C2   446 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   447 _SMB0DAT	=	0x00c2
                           0000C3   448 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   449 _SMB0ADR	=	0x00c3
                           0000C4   450 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   451 _ADC0GTL	=	0x00c4
                           0000C5   452 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   453 _ADC0GTH	=	0x00c5
                           0000C6   454 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   455 _ADC0LTL	=	0x00c6
                           0000C7   456 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   457 _ADC0LTH	=	0x00c7
                           0000C8   458 G$T2CON$0$0 == 0x00c8
                           0000C8   459 _T2CON	=	0x00c8
                           0000C9   460 G$T4CON$0$0 == 0x00c9
                           0000C9   461 _T4CON	=	0x00c9
                           0000CA   462 G$RCAP2L$0$0 == 0x00ca
                           0000CA   463 _RCAP2L	=	0x00ca
                           0000CB   464 G$RCAP2H$0$0 == 0x00cb
                           0000CB   465 _RCAP2H	=	0x00cb
                           0000CC   466 G$TL2$0$0 == 0x00cc
                           0000CC   467 _TL2	=	0x00cc
                           0000CD   468 G$TH2$0$0 == 0x00cd
                           0000CD   469 _TH2	=	0x00cd
                           0000CF   470 G$SMB0CR$0$0 == 0x00cf
                           0000CF   471 _SMB0CR	=	0x00cf
                           0000D0   472 G$PSW$0$0 == 0x00d0
                           0000D0   473 _PSW	=	0x00d0
                           0000D1   474 G$REF0CN$0$0 == 0x00d1
                           0000D1   475 _REF0CN	=	0x00d1
                           0000D2   476 G$DAC0L$0$0 == 0x00d2
                           0000D2   477 _DAC0L	=	0x00d2
                           0000D3   478 G$DAC0H$0$0 == 0x00d3
                           0000D3   479 _DAC0H	=	0x00d3
                           0000D4   480 G$DAC0CN$0$0 == 0x00d4
                           0000D4   481 _DAC0CN	=	0x00d4
                           0000D5   482 G$DAC1L$0$0 == 0x00d5
                           0000D5   483 _DAC1L	=	0x00d5
                           0000D6   484 G$DAC1H$0$0 == 0x00d6
                           0000D6   485 _DAC1H	=	0x00d6
                           0000D7   486 G$DAC1CN$0$0 == 0x00d7
                           0000D7   487 _DAC1CN	=	0x00d7
                           0000D8   488 G$PCA0CN$0$0 == 0x00d8
                           0000D8   489 _PCA0CN	=	0x00d8
                           0000D9   490 G$PCA0MD$0$0 == 0x00d9
                           0000D9   491 _PCA0MD	=	0x00d9
                           0000DA   492 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   493 _PCA0CPM0	=	0x00da
                           0000DB   494 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   495 _PCA0CPM1	=	0x00db
                           0000DC   496 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   497 _PCA0CPM2	=	0x00dc
                           0000DD   498 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   499 _PCA0CPM3	=	0x00dd
                           0000DE   500 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   501 _PCA0CPM4	=	0x00de
                           0000E0   502 G$ACC$0$0 == 0x00e0
                           0000E0   503 _ACC	=	0x00e0
                           0000E1   504 G$XBR0$0$0 == 0x00e1
                           0000E1   505 _XBR0	=	0x00e1
                           0000E2   506 G$XBR1$0$0 == 0x00e2
                           0000E2   507 _XBR1	=	0x00e2
                           0000E3   508 G$XBR2$0$0 == 0x00e3
                           0000E3   509 _XBR2	=	0x00e3
                           0000E4   510 G$RCAP4L$0$0 == 0x00e4
                           0000E4   511 _RCAP4L	=	0x00e4
                           0000E5   512 G$RCAP4H$0$0 == 0x00e5
                           0000E5   513 _RCAP4H	=	0x00e5
                           0000E6   514 G$EIE1$0$0 == 0x00e6
                           0000E6   515 _EIE1	=	0x00e6
                           0000E7   516 G$EIE2$0$0 == 0x00e7
                           0000E7   517 _EIE2	=	0x00e7
                           0000E8   518 G$ADC0CN$0$0 == 0x00e8
                           0000E8   519 _ADC0CN	=	0x00e8
                           0000E9   520 G$PCA0L$0$0 == 0x00e9
                           0000E9   521 _PCA0L	=	0x00e9
                           0000EA   522 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   523 _PCA0CPL0	=	0x00ea
                           0000EB   524 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   525 _PCA0CPL1	=	0x00eb
                           0000EC   526 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   527 _PCA0CPL2	=	0x00ec
                           0000ED   528 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   529 _PCA0CPL3	=	0x00ed
                           0000EE   530 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   531 _PCA0CPL4	=	0x00ee
                           0000EF   532 G$RSTSRC$0$0 == 0x00ef
                           0000EF   533 _RSTSRC	=	0x00ef
                           0000F0   534 G$B$0$0 == 0x00f0
                           0000F0   535 _B	=	0x00f0
                           0000F1   536 G$SCON1$0$0 == 0x00f1
                           0000F1   537 _SCON1	=	0x00f1
                           0000F2   538 G$SBUF1$0$0 == 0x00f2
                           0000F2   539 _SBUF1	=	0x00f2
                           0000F3   540 G$SADDR1$0$0 == 0x00f3
                           0000F3   541 _SADDR1	=	0x00f3
                           0000F4   542 G$TL4$0$0 == 0x00f4
                           0000F4   543 _TL4	=	0x00f4
                           0000F5   544 G$TH4$0$0 == 0x00f5
                           0000F5   545 _TH4	=	0x00f5
                           0000F6   546 G$EIP1$0$0 == 0x00f6
                           0000F6   547 _EIP1	=	0x00f6
                           0000F7   548 G$EIP2$0$0 == 0x00f7
                           0000F7   549 _EIP2	=	0x00f7
                           0000F8   550 G$SPI0CN$0$0 == 0x00f8
                           0000F8   551 _SPI0CN	=	0x00f8
                           0000F9   552 G$PCA0H$0$0 == 0x00f9
                           0000F9   553 _PCA0H	=	0x00f9
                           0000FA   554 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   555 _PCA0CPH0	=	0x00fa
                           0000FB   556 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   557 _PCA0CPH1	=	0x00fb
                           0000FC   558 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   559 _PCA0CPH2	=	0x00fc
                           0000FD   560 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   561 _PCA0CPH3	=	0x00fd
                           0000FE   562 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   563 _PCA0CPH4	=	0x00fe
                           0000FF   564 G$WDTCN$0$0 == 0x00ff
                           0000FF   565 _WDTCN	=	0x00ff
                           008C8A   566 G$TMR0$0$0 == 0x8c8a
                           008C8A   567 _TMR0	=	0x8c8a
                           008D8B   568 G$TMR1$0$0 == 0x8d8b
                           008D8B   569 _TMR1	=	0x8d8b
                           00CDCC   570 G$TMR2$0$0 == 0xcdcc
                           00CDCC   571 _TMR2	=	0xcdcc
                           00CBCA   572 G$RCAP2$0$0 == 0xcbca
                           00CBCA   573 _RCAP2	=	0xcbca
                           009594   574 G$TMR3$0$0 == 0x9594
                           009594   575 _TMR3	=	0x9594
                           009392   576 G$TMR3RL$0$0 == 0x9392
                           009392   577 _TMR3RL	=	0x9392
                           00F5F4   578 G$TMR4$0$0 == 0xf5f4
                           00F5F4   579 _TMR4	=	0xf5f4
                           00E5E4   580 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   581 _RCAP4	=	0xe5e4
                           00BFBE   582 G$ADC0$0$0 == 0xbfbe
                           00BFBE   583 _ADC0	=	0xbfbe
                           00C5C4   584 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   585 _ADC0GT	=	0xc5c4
                           00C7C6   586 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   587 _ADC0LT	=	0xc7c6
                           00D3D2   588 G$DAC0$0$0 == 0xd3d2
                           00D3D2   589 _DAC0	=	0xd3d2
                           00D6D5   590 G$DAC1$0$0 == 0xd6d5
                           00D6D5   591 _DAC1	=	0xd6d5
                           00F9E9   592 G$PCA0$0$0 == 0xf9e9
                           00F9E9   593 _PCA0	=	0xf9e9
                           00FAEA   594 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   595 _PCA0CP0	=	0xfaea
                           00FBEB   596 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   597 _PCA0CP1	=	0xfbeb
                           00FCEC   598 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   599 _PCA0CP2	=	0xfcec
                           00FDED   600 G$PCA0CP3$0$0 == 0xfded
                           00FDED   601 _PCA0CP3	=	0xfded
                           00FEEE   602 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   603 _PCA0CP4	=	0xfeee
                                    604 ;--------------------------------------------------------
                                    605 ; special function bits
                                    606 ;--------------------------------------------------------
                                    607 	.area RSEG    (ABS,DATA)
      000000                        608 	.org 0x0000
                           000080   609 G$P0_0$0$0 == 0x0080
                           000080   610 _P0_0	=	0x0080
                           000081   611 G$P0_1$0$0 == 0x0081
                           000081   612 _P0_1	=	0x0081
                           000082   613 G$P0_2$0$0 == 0x0082
                           000082   614 _P0_2	=	0x0082
                           000083   615 G$P0_3$0$0 == 0x0083
                           000083   616 _P0_3	=	0x0083
                           000084   617 G$P0_4$0$0 == 0x0084
                           000084   618 _P0_4	=	0x0084
                           000085   619 G$P0_5$0$0 == 0x0085
                           000085   620 _P0_5	=	0x0085
                           000086   621 G$P0_6$0$0 == 0x0086
                           000086   622 _P0_6	=	0x0086
                           000087   623 G$P0_7$0$0 == 0x0087
                           000087   624 _P0_7	=	0x0087
                           000088   625 G$IT0$0$0 == 0x0088
                           000088   626 _IT0	=	0x0088
                           000089   627 G$IE0$0$0 == 0x0089
                           000089   628 _IE0	=	0x0089
                           00008A   629 G$IT1$0$0 == 0x008a
                           00008A   630 _IT1	=	0x008a
                           00008B   631 G$IE1$0$0 == 0x008b
                           00008B   632 _IE1	=	0x008b
                           00008C   633 G$TR0$0$0 == 0x008c
                           00008C   634 _TR0	=	0x008c
                           00008D   635 G$TF0$0$0 == 0x008d
                           00008D   636 _TF0	=	0x008d
                           00008E   637 G$TR1$0$0 == 0x008e
                           00008E   638 _TR1	=	0x008e
                           00008F   639 G$TF1$0$0 == 0x008f
                           00008F   640 _TF1	=	0x008f
                           000090   641 G$P1_0$0$0 == 0x0090
                           000090   642 _P1_0	=	0x0090
                           000091   643 G$P1_1$0$0 == 0x0091
                           000091   644 _P1_1	=	0x0091
                           000092   645 G$P1_2$0$0 == 0x0092
                           000092   646 _P1_2	=	0x0092
                           000093   647 G$P1_3$0$0 == 0x0093
                           000093   648 _P1_3	=	0x0093
                           000094   649 G$P1_4$0$0 == 0x0094
                           000094   650 _P1_4	=	0x0094
                           000095   651 G$P1_5$0$0 == 0x0095
                           000095   652 _P1_5	=	0x0095
                           000096   653 G$P1_6$0$0 == 0x0096
                           000096   654 _P1_6	=	0x0096
                           000097   655 G$P1_7$0$0 == 0x0097
                           000097   656 _P1_7	=	0x0097
                           000098   657 G$RI$0$0 == 0x0098
                           000098   658 _RI	=	0x0098
                           000098   659 G$RI0$0$0 == 0x0098
                           000098   660 _RI0	=	0x0098
                           000099   661 G$TI$0$0 == 0x0099
                           000099   662 _TI	=	0x0099
                           000099   663 G$TI0$0$0 == 0x0099
                           000099   664 _TI0	=	0x0099
                           00009A   665 G$RB8$0$0 == 0x009a
                           00009A   666 _RB8	=	0x009a
                           00009A   667 G$RB80$0$0 == 0x009a
                           00009A   668 _RB80	=	0x009a
                           00009B   669 G$TB8$0$0 == 0x009b
                           00009B   670 _TB8	=	0x009b
                           00009B   671 G$TB80$0$0 == 0x009b
                           00009B   672 _TB80	=	0x009b
                           00009C   673 G$REN$0$0 == 0x009c
                           00009C   674 _REN	=	0x009c
                           00009C   675 G$REN0$0$0 == 0x009c
                           00009C   676 _REN0	=	0x009c
                           00009D   677 G$SM2$0$0 == 0x009d
                           00009D   678 _SM2	=	0x009d
                           00009D   679 G$SM20$0$0 == 0x009d
                           00009D   680 _SM20	=	0x009d
                           00009D   681 G$MCE0$0$0 == 0x009d
                           00009D   682 _MCE0	=	0x009d
                           00009E   683 G$SM1$0$0 == 0x009e
                           00009E   684 _SM1	=	0x009e
                           00009E   685 G$SM10$0$0 == 0x009e
                           00009E   686 _SM10	=	0x009e
                           00009F   687 G$SM0$0$0 == 0x009f
                           00009F   688 _SM0	=	0x009f
                           00009F   689 G$SM00$0$0 == 0x009f
                           00009F   690 _SM00	=	0x009f
                           00009F   691 G$S0MODE$0$0 == 0x009f
                           00009F   692 _S0MODE	=	0x009f
                           0000A0   693 G$P2_0$0$0 == 0x00a0
                           0000A0   694 _P2_0	=	0x00a0
                           0000A1   695 G$P2_1$0$0 == 0x00a1
                           0000A1   696 _P2_1	=	0x00a1
                           0000A2   697 G$P2_2$0$0 == 0x00a2
                           0000A2   698 _P2_2	=	0x00a2
                           0000A3   699 G$P2_3$0$0 == 0x00a3
                           0000A3   700 _P2_3	=	0x00a3
                           0000A4   701 G$P2_4$0$0 == 0x00a4
                           0000A4   702 _P2_4	=	0x00a4
                           0000A5   703 G$P2_5$0$0 == 0x00a5
                           0000A5   704 _P2_5	=	0x00a5
                           0000A6   705 G$P2_6$0$0 == 0x00a6
                           0000A6   706 _P2_6	=	0x00a6
                           0000A7   707 G$P2_7$0$0 == 0x00a7
                           0000A7   708 _P2_7	=	0x00a7
                           0000A8   709 G$EX0$0$0 == 0x00a8
                           0000A8   710 _EX0	=	0x00a8
                           0000A9   711 G$ET0$0$0 == 0x00a9
                           0000A9   712 _ET0	=	0x00a9
                           0000AA   713 G$EX1$0$0 == 0x00aa
                           0000AA   714 _EX1	=	0x00aa
                           0000AB   715 G$ET1$0$0 == 0x00ab
                           0000AB   716 _ET1	=	0x00ab
                           0000AC   717 G$ES0$0$0 == 0x00ac
                           0000AC   718 _ES0	=	0x00ac
                           0000AC   719 G$ES$0$0 == 0x00ac
                           0000AC   720 _ES	=	0x00ac
                           0000AD   721 G$ET2$0$0 == 0x00ad
                           0000AD   722 _ET2	=	0x00ad
                           0000AF   723 G$EA$0$0 == 0x00af
                           0000AF   724 _EA	=	0x00af
                           0000B0   725 G$P3_0$0$0 == 0x00b0
                           0000B0   726 _P3_0	=	0x00b0
                           0000B1   727 G$P3_1$0$0 == 0x00b1
                           0000B1   728 _P3_1	=	0x00b1
                           0000B2   729 G$P3_2$0$0 == 0x00b2
                           0000B2   730 _P3_2	=	0x00b2
                           0000B3   731 G$P3_3$0$0 == 0x00b3
                           0000B3   732 _P3_3	=	0x00b3
                           0000B4   733 G$P3_4$0$0 == 0x00b4
                           0000B4   734 _P3_4	=	0x00b4
                           0000B5   735 G$P3_5$0$0 == 0x00b5
                           0000B5   736 _P3_5	=	0x00b5
                           0000B6   737 G$P3_6$0$0 == 0x00b6
                           0000B6   738 _P3_6	=	0x00b6
                           0000B7   739 G$P3_7$0$0 == 0x00b7
                           0000B7   740 _P3_7	=	0x00b7
                           0000B8   741 G$PX0$0$0 == 0x00b8
                           0000B8   742 _PX0	=	0x00b8
                           0000B9   743 G$PT0$0$0 == 0x00b9
                           0000B9   744 _PT0	=	0x00b9
                           0000BA   745 G$PX1$0$0 == 0x00ba
                           0000BA   746 _PX1	=	0x00ba
                           0000BB   747 G$PT1$0$0 == 0x00bb
                           0000BB   748 _PT1	=	0x00bb
                           0000BC   749 G$PS0$0$0 == 0x00bc
                           0000BC   750 _PS0	=	0x00bc
                           0000BC   751 G$PS$0$0 == 0x00bc
                           0000BC   752 _PS	=	0x00bc
                           0000BD   753 G$PT2$0$0 == 0x00bd
                           0000BD   754 _PT2	=	0x00bd
                           0000C0   755 G$SMBTOE$0$0 == 0x00c0
                           0000C0   756 _SMBTOE	=	0x00c0
                           0000C1   757 G$SMBFTE$0$0 == 0x00c1
                           0000C1   758 _SMBFTE	=	0x00c1
                           0000C2   759 G$AA$0$0 == 0x00c2
                           0000C2   760 _AA	=	0x00c2
                           0000C3   761 G$SI$0$0 == 0x00c3
                           0000C3   762 _SI	=	0x00c3
                           0000C4   763 G$STO$0$0 == 0x00c4
                           0000C4   764 _STO	=	0x00c4
                           0000C5   765 G$STA$0$0 == 0x00c5
                           0000C5   766 _STA	=	0x00c5
                           0000C6   767 G$ENSMB$0$0 == 0x00c6
                           0000C6   768 _ENSMB	=	0x00c6
                           0000C7   769 G$BUSY$0$0 == 0x00c7
                           0000C7   770 _BUSY	=	0x00c7
                           0000C8   771 G$CPRL2$0$0 == 0x00c8
                           0000C8   772 _CPRL2	=	0x00c8
                           0000C9   773 G$CT2$0$0 == 0x00c9
                           0000C9   774 _CT2	=	0x00c9
                           0000CA   775 G$TR2$0$0 == 0x00ca
                           0000CA   776 _TR2	=	0x00ca
                           0000CB   777 G$EXEN2$0$0 == 0x00cb
                           0000CB   778 _EXEN2	=	0x00cb
                           0000CC   779 G$TCLK$0$0 == 0x00cc
                           0000CC   780 _TCLK	=	0x00cc
                           0000CD   781 G$RCLK$0$0 == 0x00cd
                           0000CD   782 _RCLK	=	0x00cd
                           0000CE   783 G$EXF2$0$0 == 0x00ce
                           0000CE   784 _EXF2	=	0x00ce
                           0000CF   785 G$TF2$0$0 == 0x00cf
                           0000CF   786 _TF2	=	0x00cf
                           0000D0   787 G$P$0$0 == 0x00d0
                           0000D0   788 _P	=	0x00d0
                           0000D1   789 G$F1$0$0 == 0x00d1
                           0000D1   790 _F1	=	0x00d1
                           0000D2   791 G$OV$0$0 == 0x00d2
                           0000D2   792 _OV	=	0x00d2
                           0000D3   793 G$RS0$0$0 == 0x00d3
                           0000D3   794 _RS0	=	0x00d3
                           0000D4   795 G$RS1$0$0 == 0x00d4
                           0000D4   796 _RS1	=	0x00d4
                           0000D5   797 G$F0$0$0 == 0x00d5
                           0000D5   798 _F0	=	0x00d5
                           0000D6   799 G$AC$0$0 == 0x00d6
                           0000D6   800 _AC	=	0x00d6
                           0000D7   801 G$CY$0$0 == 0x00d7
                           0000D7   802 _CY	=	0x00d7
                           0000D8   803 G$CCF0$0$0 == 0x00d8
                           0000D8   804 _CCF0	=	0x00d8
                           0000D9   805 G$CCF1$0$0 == 0x00d9
                           0000D9   806 _CCF1	=	0x00d9
                           0000DA   807 G$CCF2$0$0 == 0x00da
                           0000DA   808 _CCF2	=	0x00da
                           0000DB   809 G$CCF3$0$0 == 0x00db
                           0000DB   810 _CCF3	=	0x00db
                           0000DC   811 G$CCF4$0$0 == 0x00dc
                           0000DC   812 _CCF4	=	0x00dc
                           0000DE   813 G$CR$0$0 == 0x00de
                           0000DE   814 _CR	=	0x00de
                           0000DF   815 G$CF$0$0 == 0x00df
                           0000DF   816 _CF	=	0x00df
                           0000E8   817 G$ADLJST$0$0 == 0x00e8
                           0000E8   818 _ADLJST	=	0x00e8
                           0000E8   819 G$AD0LJST$0$0 == 0x00e8
                           0000E8   820 _AD0LJST	=	0x00e8
                           0000E9   821 G$ADWINT$0$0 == 0x00e9
                           0000E9   822 _ADWINT	=	0x00e9
                           0000E9   823 G$AD0WINT$0$0 == 0x00e9
                           0000E9   824 _AD0WINT	=	0x00e9
                           0000EA   825 G$ADSTM0$0$0 == 0x00ea
                           0000EA   826 _ADSTM0	=	0x00ea
                           0000EA   827 G$AD0CM0$0$0 == 0x00ea
                           0000EA   828 _AD0CM0	=	0x00ea
                           0000EB   829 G$ADSTM1$0$0 == 0x00eb
                           0000EB   830 _ADSTM1	=	0x00eb
                           0000EB   831 G$AD0CM1$0$0 == 0x00eb
                           0000EB   832 _AD0CM1	=	0x00eb
                           0000EC   833 G$ADBUSY$0$0 == 0x00ec
                           0000EC   834 _ADBUSY	=	0x00ec
                           0000EC   835 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   836 _AD0BUSY	=	0x00ec
                           0000ED   837 G$ADCINT$0$0 == 0x00ed
                           0000ED   838 _ADCINT	=	0x00ed
                           0000ED   839 G$AD0INT$0$0 == 0x00ed
                           0000ED   840 _AD0INT	=	0x00ed
                           0000EE   841 G$ADCTM$0$0 == 0x00ee
                           0000EE   842 _ADCTM	=	0x00ee
                           0000EE   843 G$AD0TM$0$0 == 0x00ee
                           0000EE   844 _AD0TM	=	0x00ee
                           0000EF   845 G$ADCEN$0$0 == 0x00ef
                           0000EF   846 _ADCEN	=	0x00ef
                           0000EF   847 G$AD0EN$0$0 == 0x00ef
                           0000EF   848 _AD0EN	=	0x00ef
                           0000F8   849 G$SPIEN$0$0 == 0x00f8
                           0000F8   850 _SPIEN	=	0x00f8
                           0000F9   851 G$MSTEN$0$0 == 0x00f9
                           0000F9   852 _MSTEN	=	0x00f9
                           0000FA   853 G$SLVSEL$0$0 == 0x00fa
                           0000FA   854 _SLVSEL	=	0x00fa
                           0000FB   855 G$TXBSY$0$0 == 0x00fb
                           0000FB   856 _TXBSY	=	0x00fb
                           0000FC   857 G$RXOVRN$0$0 == 0x00fc
                           0000FC   858 _RXOVRN	=	0x00fc
                           0000FD   859 G$MODF$0$0 == 0x00fd
                           0000FD   860 _MODF	=	0x00fd
                           0000FE   861 G$WCOL$0$0 == 0x00fe
                           0000FE   862 _WCOL	=	0x00fe
                           0000FF   863 G$SPIF$0$0 == 0x00ff
                           0000FF   864 _SPIF	=	0x00ff
                                    865 ;--------------------------------------------------------
                                    866 ; overlayable register banks
                                    867 ;--------------------------------------------------------
                                    868 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        869 	.ds 8
                                    870 ;--------------------------------------------------------
                                    871 ; internal ram data
                                    872 ;--------------------------------------------------------
                                    873 	.area DSEG    (DATA)
                           000000   874 G$imax$0$0==.
      000008                        875 _imax::
      000008                        876 	.ds 2
                           000002   877 G$i$0$0==.
      00000A                        878 _i::
      00000A                        879 	.ds 2
                           000004   880 G$count$0$0==.
      00000C                        881 _count::
      00000C                        882 	.ds 1
                           000005   883 G$input$0$0==.
      00000D                        884 _input::
      00000D                        885 	.ds 1
                                    886 ;--------------------------------------------------------
                                    887 ; overlayable items in internal ram 
                                    888 ;--------------------------------------------------------
                                    889 	.area	OSEG    (OVR,DATA)
                                    890 	.area	OSEG    (OVR,DATA)
                                    891 ;--------------------------------------------------------
                                    892 ; Stack segment in internal ram 
                                    893 ;--------------------------------------------------------
                                    894 	.area	SSEG
      00003C                        895 __start__stack:
      00003C                        896 	.ds	1
                                    897 
                                    898 ;--------------------------------------------------------
                                    899 ; indirectly addressable internal ram data
                                    900 ;--------------------------------------------------------
                                    901 	.area ISEG    (DATA)
                                    902 ;--------------------------------------------------------
                                    903 ; absolute internal ram data
                                    904 ;--------------------------------------------------------
                                    905 	.area IABS    (ABS,DATA)
                                    906 	.area IABS    (ABS,DATA)
                                    907 ;--------------------------------------------------------
                                    908 ; bit data
                                    909 ;--------------------------------------------------------
                                    910 	.area BSEG    (BIT)
                                    911 ;--------------------------------------------------------
                                    912 ; paged external ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area PSEG    (PAG,XDATA)
                                    915 ;--------------------------------------------------------
                                    916 ; external ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area XSEG    (XDATA)
                                    919 ;--------------------------------------------------------
                                    920 ; absolute external ram data
                                    921 ;--------------------------------------------------------
                                    922 	.area XABS    (ABS,XDATA)
                                    923 ;--------------------------------------------------------
                                    924 ; external initialized ram data
                                    925 ;--------------------------------------------------------
                                    926 	.area XISEG   (XDATA)
                                    927 	.area HOME    (CODE)
                                    928 	.area GSINIT0 (CODE)
                                    929 	.area GSINIT1 (CODE)
                                    930 	.area GSINIT2 (CODE)
                                    931 	.area GSINIT3 (CODE)
                                    932 	.area GSINIT4 (CODE)
                                    933 	.area GSINIT5 (CODE)
                                    934 	.area GSINIT  (CODE)
                                    935 	.area GSFINAL (CODE)
                                    936 	.area CSEG    (CODE)
                                    937 ;--------------------------------------------------------
                                    938 ; interrupt vector 
                                    939 ;--------------------------------------------------------
                                    940 	.area HOME    (CODE)
      000000                        941 __interrupt_vect:
      000000 02 00 06         [24]  942 	ljmp	__sdcc_gsinit_startup
                                    943 ;--------------------------------------------------------
                                    944 ; global & static initialisations
                                    945 ;--------------------------------------------------------
                                    946 	.area HOME    (CODE)
                                    947 	.area GSINIT  (CODE)
                                    948 	.area GSFINAL (CODE)
                                    949 	.area GSINIT  (CODE)
                                    950 	.globl __sdcc_gsinit_startup
                                    951 	.globl __sdcc_program_startup
                                    952 	.globl __start__stack
                                    953 	.globl __mcs51_genXINIT
                                    954 	.globl __mcs51_genXRAMCLEAR
                                    955 	.globl __mcs51_genRAMCLEAR
                                    956 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  957 	ljmp	__sdcc_program_startup
                                    958 ;--------------------------------------------------------
                                    959 ; Home
                                    960 ;--------------------------------------------------------
                                    961 	.area HOME    (CODE)
                                    962 	.area HOME    (CODE)
      000003                        963 __sdcc_program_startup:
      000003 02 00 DD         [24]  964 	ljmp	_main
                                    965 ;	return from main will return to caller
                                    966 ;--------------------------------------------------------
                                    967 ; code
                                    968 ;--------------------------------------------------------
                                    969 	.area CSEG    (CODE)
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    972 ;------------------------------------------------------------
                                    973 ;i                         Allocated to registers r6 r7 
                                    974 ;------------------------------------------------------------
                           000000   975 	G$SYSCLK_Init$0$0 ==.
                           000000   976 	C$c8051_SDCC.h$62$0$0 ==.
                                    977 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                    978 ;	-----------------------------------------
                                    979 ;	 function SYSCLK_Init
                                    980 ;	-----------------------------------------
      000062                        981 _SYSCLK_Init:
                           000007   982 	ar7 = 0x07
                           000006   983 	ar6 = 0x06
                           000005   984 	ar5 = 0x05
                           000004   985 	ar4 = 0x04
                           000003   986 	ar3 = 0x03
                           000002   987 	ar2 = 0x02
                           000001   988 	ar1 = 0x01
                           000000   989 	ar0 = 0x00
                           000000   990 	C$c8051_SDCC.h$66$1$2 ==.
                                    991 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      000062 75 B1 67         [24]  992 	mov	_OSCXCN,#0x67
                           000003   993 	C$c8051_SDCC.h$69$1$2 ==.
                                    994 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000065 7E 00            [12]  995 	mov	r6,#0x00
      000067 7F 01            [12]  996 	mov	r7,#0x01
      000069                        997 00107$:
      000069 EE               [12]  998 	mov	a,r6
      00006A 24 FF            [12]  999 	add	a,#0xff
      00006C FC               [12] 1000 	mov	r4,a
      00006D EF               [12] 1001 	mov	a,r7
      00006E 34 FF            [12] 1002 	addc	a,#0xff
      000070 FD               [12] 1003 	mov	r5,a
      000071 8C 06            [24] 1004 	mov	ar6,r4
      000073 8D 07            [24] 1005 	mov	ar7,r5
      000075 EC               [12] 1006 	mov	a,r4
      000076 4D               [12] 1007 	orl	a,r5
      000077 70 F0            [24] 1008 	jnz	00107$
                           000017  1009 	C$c8051_SDCC.h$71$1$2 ==.
                                   1010 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000079                       1011 00102$:
      000079 E5 B1            [12] 1012 	mov	a,_OSCXCN
      00007B 30 E7 FB         [24] 1013 	jnb	acc.7,00102$
                           00001C  1014 	C$c8051_SDCC.h$73$1$2 ==.
                                   1015 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      00007E 75 B2 88         [24] 1016 	mov	_OSCICN,#0x88
                           00001F  1017 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1018 	XG$SYSCLK_Init$0$0 ==.
      000081 22               [24] 1019 	ret
                                   1020 ;------------------------------------------------------------
                                   1021 ;Allocation info for local variables in function 'UART0_Init'
                                   1022 ;------------------------------------------------------------
                           000020  1023 	G$UART0_Init$0$0 ==.
                           000020  1024 	C$c8051_SDCC.h$84$1$2 ==.
                                   1025 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function UART0_Init
                                   1028 ;	-----------------------------------------
      000082                       1029 _UART0_Init:
                           000020  1030 	C$c8051_SDCC.h$86$1$4 ==.
                                   1031 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      000082 75 98 50         [24] 1032 	mov	_SCON0,#0x50
                           000023  1033 	C$c8051_SDCC.h$87$1$4 ==.
                                   1034 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000085 75 89 20         [24] 1035 	mov	_TMOD,#0x20
                           000026  1036 	C$c8051_SDCC.h$88$1$4 ==.
                                   1037 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000088 75 8D DC         [24] 1038 	mov	_TH1,#0xdc
                           000029  1039 	C$c8051_SDCC.h$89$1$4 ==.
                                   1040 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      00008B D2 8E            [12] 1041 	setb	_TR1
                           00002B  1042 	C$c8051_SDCC.h$90$1$4 ==.
                                   1043 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      00008D 43 8E 10         [24] 1044 	orl	_CKCON,#0x10
                           00002E  1045 	C$c8051_SDCC.h$91$1$4 ==.
                                   1046 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000090 43 87 80         [24] 1047 	orl	_PCON,#0x80
                           000031  1048 	C$c8051_SDCC.h$93$1$4 ==.
                                   1049 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000093 D2 99            [12] 1050 	setb	_TI0
                           000033  1051 	C$c8051_SDCC.h$94$1$4 ==.
                                   1052 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000095 43 A4 01         [24] 1053 	orl	_P0MDOUT,#0x01
                           000036  1054 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1055 	XG$UART0_Init$0$0 ==.
      000098 22               [24] 1056 	ret
                                   1057 ;------------------------------------------------------------
                                   1058 ;Allocation info for local variables in function 'Sys_Init'
                                   1059 ;------------------------------------------------------------
                           000037  1060 	G$Sys_Init$0$0 ==.
                           000037  1061 	C$c8051_SDCC.h$103$1$4 ==.
                                   1062 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1063 ;	-----------------------------------------
                                   1064 ;	 function Sys_Init
                                   1065 ;	-----------------------------------------
      000099                       1066 _Sys_Init:
                           000037  1067 	C$c8051_SDCC.h$105$1$6 ==.
                                   1068 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000099 75 FF DE         [24] 1069 	mov	_WDTCN,#0xde
                           00003A  1070 	C$c8051_SDCC.h$106$1$6 ==.
                                   1071 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      00009C 75 FF AD         [24] 1072 	mov	_WDTCN,#0xad
                           00003D  1073 	C$c8051_SDCC.h$108$1$6 ==.
                                   1074 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00009F 12 00 62         [24] 1075 	lcall	_SYSCLK_Init
                           000040  1076 	C$c8051_SDCC.h$109$1$6 ==.
                                   1077 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000A2 12 00 82         [24] 1078 	lcall	_UART0_Init
                           000043  1079 	C$c8051_SDCC.h$111$1$6 ==.
                                   1080 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000A5 43 E1 04         [24] 1081 	orl	_XBR0,#0x04
                           000046  1082 	C$c8051_SDCC.h$112$1$6 ==.
                                   1083 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000A8 43 E3 40         [24] 1084 	orl	_XBR2,#0x40
                           000049  1085 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1086 	XG$Sys_Init$0$0 ==.
      0000AB 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'putchar'
                                   1090 ;------------------------------------------------------------
                                   1091 ;c                         Allocated to registers r7 
                                   1092 ;------------------------------------------------------------
                           00004A  1093 	G$putchar$0$0 ==.
                           00004A  1094 	C$c8051_SDCC.h$129$1$6 ==.
                                   1095 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function putchar
                                   1098 ;	-----------------------------------------
      0000AC                       1099 _putchar:
      0000AC AF 82            [24] 1100 	mov	r7,dpl
                           00004C  1101 	C$c8051_SDCC.h$132$1$8 ==.
                                   1102 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000AE                       1103 00101$:
                           00004C  1104 	C$c8051_SDCC.h$133$1$8 ==.
                                   1105 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000AE 10 99 02         [24] 1106 	jbc	_TI0,00112$
      0000B1 80 FB            [24] 1107 	sjmp	00101$
      0000B3                       1108 00112$:
                           000051  1109 	C$c8051_SDCC.h$134$1$8 ==.
                                   1110 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000B3 8F 99            [24] 1111 	mov	_SBUF0,r7
                           000053  1112 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1113 	XG$putchar$0$0 ==.
      0000B5 22               [24] 1114 	ret
                                   1115 ;------------------------------------------------------------
                                   1116 ;Allocation info for local variables in function 'getchar'
                                   1117 ;------------------------------------------------------------
                                   1118 ;c                         Allocated to registers r7 
                                   1119 ;------------------------------------------------------------
                           000054  1120 	G$getchar$0$0 ==.
                           000054  1121 	C$c8051_SDCC.h$154$1$8 ==.
                                   1122 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function getchar
                                   1125 ;	-----------------------------------------
      0000B6                       1126 _getchar:
                           000054  1127 	C$c8051_SDCC.h$157$1$10 ==.
                                   1128 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000B6                       1129 00101$:
                           000054  1130 	C$c8051_SDCC.h$158$1$10 ==.
                                   1131 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000B6 10 98 02         [24] 1132 	jbc	_RI0,00112$
      0000B9 80 FB            [24] 1133 	sjmp	00101$
      0000BB                       1134 00112$:
                           000059  1135 	C$c8051_SDCC.h$159$1$10 ==.
                                   1136 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000BB AF 99            [24] 1137 	mov	r7,_SBUF0
                           00005B  1138 	C$c8051_SDCC.h$160$1$10 ==.
                                   1139 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000BD 8F 82            [24] 1140 	mov	dpl,r7
      0000BF C0 07            [24] 1141 	push	ar7
      0000C1 12 00 AC         [24] 1142 	lcall	_putchar
      0000C4 D0 07            [24] 1143 	pop	ar7
                           000064  1144 	C$c8051_SDCC.h$161$1$10 ==.
                                   1145 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000C6 8F 82            [24] 1146 	mov	dpl,r7
                           000066  1147 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1148 	XG$getchar$0$0 ==.
      0000C8 22               [24] 1149 	ret
                                   1150 ;------------------------------------------------------------
                                   1151 ;Allocation info for local variables in function 'getchar_nw'
                                   1152 ;------------------------------------------------------------
                                   1153 ;c                         Allocated to registers 
                                   1154 ;------------------------------------------------------------
                           000067  1155 	G$getchar_nw$0$0 ==.
                           000067  1156 	C$c8051_SDCC.h$168$1$10 ==.
                                   1157 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1158 ;	-----------------------------------------
                                   1159 ;	 function getchar_nw
                                   1160 ;	-----------------------------------------
      0000C9                       1161 _getchar_nw:
                           000067  1162 	C$c8051_SDCC.h$171$1$12 ==.
                                   1163 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000C9 20 98 05         [24] 1164 	jb	_RI0,00102$
      0000CC 75 82 FF         [24] 1165 	mov	dpl,#0xff
      0000CF 80 0B            [24] 1166 	sjmp	00104$
      0000D1                       1167 00102$:
                           00006F  1168 	C$c8051_SDCC.h$174$2$13 ==.
                                   1169 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000D1 C2 98            [12] 1170 	clr	_RI0
                           000071  1171 	C$c8051_SDCC.h$175$2$13 ==.
                                   1172 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000D3 85 99 82         [24] 1173 	mov	dpl,_SBUF0
                           000074  1174 	C$c8051_SDCC.h$176$2$13 ==.
                                   1175 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000D6 12 00 AC         [24] 1176 	lcall	_putchar
                           000077  1177 	C$c8051_SDCC.h$177$2$13 ==.
                                   1178 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000D9 85 99 82         [24] 1179 	mov	dpl,_SBUF0
      0000DC                       1180 00104$:
                           00007A  1181 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1182 	XG$getchar_nw$0$0 ==.
      0000DC 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'main'
                                   1186 ;------------------------------------------------------------
                           00007B  1187 	G$main$0$0 ==.
                           00007B  1188 	C$hw1.c$21$1$12 ==.
                                   1189 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:21: void main(void)    // start main function
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function main
                                   1192 ;	-----------------------------------------
      0000DD                       1193 _main:
                           00007B  1194 	C$hw1.c$26$1$32 ==.
                                   1195 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:26: Sys_Init();    			// Initialize UART, System clock and crossbar
      0000DD 12 00 99         [24] 1196 	lcall	_Sys_Init
                           00007E  1197 	C$hw1.c$27$1$32 ==.
                                   1198 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:27: putchar(' ');  			// do this because we tell you to
      0000E0 75 82 20         [24] 1199 	mov	dpl,#0x20
      0000E3 12 00 AC         [24] 1200 	lcall	_putchar
                           000084  1201 	C$hw1.c$29$1$32 ==.
                                   1202 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:29: while(1)       			// begin infinite loop
      0000E6                       1203 00104$:
                           000084  1204 	C$hw1.c$31$2$33 ==.
                                   1205 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:31: get_keyboard();
      0000E6 12 00 FF         [24] 1206 	lcall	_get_keyboard
                           000087  1207 	C$hw1.c$32$2$33 ==.
                                   1208 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:32: if (imax > 0)
      0000E9 C3               [12] 1209 	clr	c
      0000EA E4               [12] 1210 	clr	a
      0000EB 95 08            [12] 1211 	subb	a,_imax
      0000ED 74 80            [12] 1212 	mov	a,#(0x00 ^ 0x80)
      0000EF 85 09 F0         [24] 1213 	mov	b,(_imax + 1)
      0000F2 63 F0 80         [24] 1214 	xrl	b,#0x80
      0000F5 95 F0            [12] 1215 	subb	a,b
      0000F7 50 ED            [24] 1216 	jnc	00104$
                           000097  1217 	C$hw1.c$34$3$34 ==.
                                   1218 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:34: output_count();
      0000F9 12 01 48         [24] 1219 	lcall	_output_count
      0000FC 80 E8            [24] 1220 	sjmp	00104$
                           00009C  1221 	C$hw1.c$37$1$32 ==.
                           00009C  1222 	XG$main$0$0 ==.
      0000FE 22               [24] 1223 	ret
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'get_keyboard'
                                   1226 ;------------------------------------------------------------
                           00009D  1227 	G$get_keyboard$0$0 ==.
                           00009D  1228 	C$hw1.c$41$1$32 ==.
                                   1229 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:41: void get_keyboard(void)
                                   1230 ;	-----------------------------------------
                                   1231 ;	 function get_keyboard
                                   1232 ;	-----------------------------------------
      0000FF                       1233 _get_keyboard:
                           00009D  1234 	C$hw1.c$43$1$36 ==.
                                   1235 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:43: printf("\r\n enter 1 to count to 18 or 2 to count to 270 \r\n");
      0000FF 74 FC            [12] 1236 	mov	a,#___str_0
      000101 C0 E0            [24] 1237 	push	acc
      000103 74 07            [12] 1238 	mov	a,#(___str_0 >> 8)
      000105 C0 E0            [24] 1239 	push	acc
      000107 74 80            [12] 1240 	mov	a,#0x80
      000109 C0 E0            [24] 1241 	push	acc
      00010B 12 01 E1         [24] 1242 	lcall	_printf
      00010E 15 81            [12] 1243 	dec	sp
      000110 15 81            [12] 1244 	dec	sp
      000112 15 81            [12] 1245 	dec	sp
                           0000B2  1246 	C$hw1.c$44$1$36 ==.
                                   1247 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:44: input=getchar();       // get count value
      000114 12 00 B6         [24] 1248 	lcall	_getchar
      000117 85 82 0D         [24] 1249 	mov	_input,dpl
                           0000B8  1250 	C$hw1.c$45$1$36 ==.
                                   1251 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:45: if (input=='1')   
      00011A 74 31            [12] 1252 	mov	a,#0x31
      00011C B5 0D 05         [24] 1253 	cjne	a,_input,00105$
                           0000BD  1254 	C$hw1.c$47$2$37 ==.
                                   1255 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:47: set_count18();
      00011F 12 01 34         [24] 1256 	lcall	_set_count18
      000122 80 0F            [24] 1257 	sjmp	00107$
      000124                       1258 00105$:
                           0000C2  1259 	C$hw1.c$49$1$36 ==.
                                   1260 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:49: else if (input=='2')
      000124 74 32            [12] 1261 	mov	a,#0x32
      000126 B5 0D 05         [24] 1262 	cjne	a,_input,00102$
                           0000C7  1263 	C$hw1.c$51$2$38 ==.
                                   1264 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:51: set_count270();
      000129 12 01 3E         [24] 1265 	lcall	_set_count270
      00012C 80 05            [24] 1266 	sjmp	00107$
      00012E                       1267 00102$:
                           0000CC  1268 	C$hw1.c$53$1$36 ==.
                                   1269 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:53: else imax=0;
      00012E E4               [12] 1270 	clr	a
      00012F F5 08            [12] 1271 	mov	_imax,a
      000131 F5 09            [12] 1272 	mov	(_imax + 1),a
      000133                       1273 00107$:
                           0000D1  1274 	C$hw1.c$54$1$36 ==.
                           0000D1  1275 	XG$get_keyboard$0$0 ==.
      000133 22               [24] 1276 	ret
                                   1277 ;------------------------------------------------------------
                                   1278 ;Allocation info for local variables in function 'set_count18'
                                   1279 ;------------------------------------------------------------
                           0000D2  1280 	G$set_count18$0$0 ==.
                           0000D2  1281 	C$hw1.c$58$1$36 ==.
                                   1282 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:58: void set_count18(void)
                                   1283 ;	-----------------------------------------
                                   1284 ;	 function set_count18
                                   1285 ;	-----------------------------------------
      000134                       1286 _set_count18:
                           0000D2  1287 	C$hw1.c$60$1$40 ==.
                                   1288 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:60: count=18;
      000134 75 0C 12         [24] 1289 	mov	_count,#0x12
                           0000D5  1290 	C$hw1.c$61$1$40 ==.
                                   1291 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:61: imax=18;
      000137 75 08 12         [24] 1292 	mov	_imax,#0x12
      00013A 75 09 00         [24] 1293 	mov	(_imax + 1),#0x00
                           0000DB  1294 	C$hw1.c$62$1$40 ==.
                           0000DB  1295 	XG$set_count18$0$0 ==.
      00013D 22               [24] 1296 	ret
                                   1297 ;------------------------------------------------------------
                                   1298 ;Allocation info for local variables in function 'set_count270'
                                   1299 ;------------------------------------------------------------
                           0000DC  1300 	G$set_count270$0$0 ==.
                           0000DC  1301 	C$hw1.c$65$1$40 ==.
                                   1302 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:65: void set_count270(void)
                                   1303 ;	-----------------------------------------
                                   1304 ;	 function set_count270
                                   1305 ;	-----------------------------------------
      00013E                       1306 _set_count270:
                           0000DC  1307 	C$hw1.c$67$1$42 ==.
                                   1308 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:67: count=270;
      00013E 75 0C 0E         [24] 1309 	mov	_count,#0x0e
                           0000DF  1310 	C$hw1.c$68$1$42 ==.
                                   1311 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:68: imax=270;
      000141 75 08 0E         [24] 1312 	mov	_imax,#0x0e
      000144 75 09 01         [24] 1313 	mov	(_imax + 1),#0x01
                           0000E5  1314 	C$hw1.c$69$1$42 ==.
                           0000E5  1315 	XG$set_count270$0$0 ==.
      000147 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'output_count'
                                   1319 ;------------------------------------------------------------
                           0000E6  1320 	G$output_count$0$0 ==.
                           0000E6  1321 	C$hw1.c$72$1$42 ==.
                                   1322 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:72: void output_count(void)
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function output_count
                                   1325 ;	-----------------------------------------
      000148                       1326 _output_count:
                           0000E6  1327 	C$hw1.c$74$1$44 ==.
                                   1328 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:74: printf("Maximum count value is %u \n\n\r ",imax);
      000148 C0 08            [24] 1329 	push	_imax
      00014A C0 09            [24] 1330 	push	(_imax + 1)
      00014C 74 2E            [12] 1331 	mov	a,#___str_1
      00014E C0 E0            [24] 1332 	push	acc
      000150 74 08            [12] 1333 	mov	a,#(___str_1 >> 8)
      000152 C0 E0            [24] 1334 	push	acc
      000154 74 80            [12] 1335 	mov	a,#0x80
      000156 C0 E0            [24] 1336 	push	acc
      000158 12 01 E1         [24] 1337 	lcall	_printf
      00015B E5 81            [12] 1338 	mov	a,sp
      00015D 24 FB            [12] 1339 	add	a,#0xfb
      00015F F5 81            [12] 1340 	mov	sp,a
                           0000FF  1341 	C$hw1.c$75$1$44 ==.
                                   1342 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:75: printf("Decimal \t hex \n\r");
      000161 74 4D            [12] 1343 	mov	a,#___str_2
      000163 C0 E0            [24] 1344 	push	acc
      000165 74 08            [12] 1345 	mov	a,#(___str_2 >> 8)
      000167 C0 E0            [24] 1346 	push	acc
      000169 74 80            [12] 1347 	mov	a,#0x80
      00016B C0 E0            [24] 1348 	push	acc
      00016D 12 01 E1         [24] 1349 	lcall	_printf
      000170 15 81            [12] 1350 	dec	sp
      000172 15 81            [12] 1351 	dec	sp
      000174 15 81            [12] 1352 	dec	sp
                           000114  1353 	C$hw1.c$76$1$44 ==.
                                   1354 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:76: for(i=0;i<=imax;i++)
      000176 E4               [12] 1355 	clr	a
      000177 F5 0A            [12] 1356 	mov	_i,a
      000179 F5 0B            [12] 1357 	mov	(_i + 1),a
      00017B                       1358 00103$:
      00017B C3               [12] 1359 	clr	c
      00017C E5 08            [12] 1360 	mov	a,_imax
      00017E 95 0A            [12] 1361 	subb	a,_i
      000180 E5 09            [12] 1362 	mov	a,(_imax + 1)
      000182 64 80            [12] 1363 	xrl	a,#0x80
      000184 85 0B F0         [24] 1364 	mov	b,(_i + 1)
      000187 63 F0 80         [24] 1365 	xrl	b,#0x80
      00018A 95 F0            [12] 1366 	subb	a,b
      00018C 40 2E            [24] 1367 	jc	00105$
                           00012C  1368 	C$hw1.c$78$2$45 ==.
                                   1369 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:78: count=i;
      00018E 85 0A 0C         [24] 1370 	mov	_count,_i
                           00012F  1371 	C$hw1.c$79$2$45 ==.
                                   1372 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:79: printf("  %u \t\t  %x \n\r", count, count); 
      000191 AE 0C            [24] 1373 	mov	r6,_count
      000193 7F 00            [12] 1374 	mov	r7,#0x00
      000195 C0 06            [24] 1375 	push	ar6
      000197 C0 07            [24] 1376 	push	ar7
      000199 C0 06            [24] 1377 	push	ar6
      00019B C0 07            [24] 1378 	push	ar7
      00019D 74 5E            [12] 1379 	mov	a,#___str_3
      00019F C0 E0            [24] 1380 	push	acc
      0001A1 74 08            [12] 1381 	mov	a,#(___str_3 >> 8)
      0001A3 C0 E0            [24] 1382 	push	acc
      0001A5 74 80            [12] 1383 	mov	a,#0x80
      0001A7 C0 E0            [24] 1384 	push	acc
      0001A9 12 01 E1         [24] 1385 	lcall	_printf
      0001AC E5 81            [12] 1386 	mov	a,sp
      0001AE 24 F9            [12] 1387 	add	a,#0xf9
      0001B0 F5 81            [12] 1388 	mov	sp,a
                           000150  1389 	C$hw1.c$76$1$44 ==.
                                   1390 ;	C:\Users\XuMartin\OneDrive2\OneDrive - Rensselaer Polytechnic Institute\1. LITEC\Homework\1\hw1.c:76: for(i=0;i<=imax;i++)
      0001B2 05 0A            [12] 1391 	inc	_i
      0001B4 E4               [12] 1392 	clr	a
      0001B5 B5 0A C3         [24] 1393 	cjne	a,_i,00103$
      0001B8 05 0B            [12] 1394 	inc	(_i + 1)
      0001BA 80 BF            [24] 1395 	sjmp	00103$
      0001BC                       1396 00105$:
                           00015A  1397 	C$hw1.c$81$1$44 ==.
                           00015A  1398 	XG$output_count$0$0 ==.
      0001BC 22               [24] 1399 	ret
                                   1400 	.area CSEG    (CODE)
                                   1401 	.area CONST   (CODE)
                           000000  1402 Fhw1$__str_0$0$0 == .
      0007FC                       1403 ___str_0:
      0007FC 0D                    1404 	.db 0x0d
      0007FD 0A                    1405 	.db 0x0a
      0007FE 20 65 6E 74 65 72 20  1406 	.ascii " enter 1 to count to 18 or 2 to count to 270 "
             31 20 74 6F 20 63 6F
             75 6E 74 20 74 6F 20
             31 38 20 6F 72 20 32
             20 74 6F 20 63 6F 75
             6E 74 20 74 6F 20 32
             37 30 20
      00082B 0D                    1407 	.db 0x0d
      00082C 0A                    1408 	.db 0x0a
      00082D 00                    1409 	.db 0x00
                           000032  1410 Fhw1$__str_1$0$0 == .
      00082E                       1411 ___str_1:
      00082E 4D 61 78 69 6D 75 6D  1412 	.ascii "Maximum count value is %u "
             20 63 6F 75 6E 74 20
             76 61 6C 75 65 20 69
             73 20 25 75 20
      000848 0A                    1413 	.db 0x0a
      000849 0A                    1414 	.db 0x0a
      00084A 0D                    1415 	.db 0x0d
      00084B 20                    1416 	.ascii " "
      00084C 00                    1417 	.db 0x00
                           000051  1418 Fhw1$__str_2$0$0 == .
      00084D                       1419 ___str_2:
      00084D 44 65 63 69 6D 61 6C  1420 	.ascii "Decimal "
             20
      000855 09                    1421 	.db 0x09
      000856 20 68 65 78 20        1422 	.ascii " hex "
      00085B 0A                    1423 	.db 0x0a
      00085C 0D                    1424 	.db 0x0d
      00085D 00                    1425 	.db 0x00
                           000062  1426 Fhw1$__str_3$0$0 == .
      00085E                       1427 ___str_3:
      00085E 20 20 25 75 20        1428 	.ascii "  %u "
      000863 09                    1429 	.db 0x09
      000864 09                    1430 	.db 0x09
      000865 20 20 25 78 20        1431 	.ascii "  %x "
      00086A 0A                    1432 	.db 0x0a
      00086B 0D                    1433 	.db 0x0d
      00086C 00                    1434 	.db 0x00
                                   1435 	.area XINIT   (CODE)
                                   1436 	.area CABS    (ABS,CODE)
