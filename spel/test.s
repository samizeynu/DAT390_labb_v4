   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"main.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/main.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  * 	main.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #include "game_startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #include "plant.xbm"
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #include "backGround.xbm"
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #include "ship.xbm"
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void startup ( void )
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  26              		.loc 1 13 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** __asm volatile(
  31              		.loc 1 14 0
  32              		.syntax divided
  33              	@ 14 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/main.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	" MOV SP,R0\n"
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	" BL main\n"				/* call main */
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	"_exit: B .\n"				/* never return */
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	) ;
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
  40              		.loc 1 20 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.data
  48              		.align	2
  51              	plant_bits:
  52 0000 00       		.byte	0
  53 0001 08       		.byte	8
  54 0002 1C       		.byte	28
  55 0003 3E       		.byte	62
  56 0004 7F       		.byte	127
  57 0005 7F       		.byte	127
  58 0006 08       		.byte	8
  59 0007 1C       		.byte	28
  60 0008 1C       		.byte	28
  61 0009 00       		.byte	0
  62 000a 0000     		.align	2
  65              	backGround_bits:
  66 000c 00       		.byte	0
  67 000d 00       		.byte	0
  68 000e 00       		.byte	0
  69 000f 00       		.byte	0
  70 0010 00       		.byte	0
  71 0011 00       		.byte	0
  72 0012 00       		.byte	0
  73 0013 00       		.byte	0
  74 0014 00       		.byte	0
  75 0015 00       		.byte	0
  76 0016 00       		.byte	0
  77 0017 00       		.byte	0
  78 0018 00       		.byte	0
  79 0019 00       		.byte	0
  80 001a 00       		.byte	0
  81 001b 00       		.byte	0
  82 001c 00       		.byte	0
  83 001d 00       		.byte	0
  84 001e 00       		.byte	0
  85 001f 00       		.byte	0
  86 0020 00       		.byte	0
  87 0021 00       		.byte	0
  88 0022 00       		.byte	0
  89 0023 00       		.byte	0
  90 0024 00       		.byte	0
  91 0025 00       		.byte	0
  92 0026 00       		.byte	0
  93 0027 00       		.byte	0
  94 0028 00       		.byte	0
  95 0029 00       		.byte	0
  96 002a 00       		.byte	0
  97 002b 00       		.byte	0
  98 002c 00       		.byte	0
  99 002d 00       		.byte	0
 100 002e 00       		.byte	0
 101 002f 00       		.byte	0
 102 0030 00       		.byte	0
 103 0031 00       		.byte	0
 104 0032 00       		.byte	0
 105 0033 00       		.byte	0
 106 0034 00       		.byte	0
 107 0035 00       		.byte	0
 108 0036 00       		.byte	0
 109 0037 00       		.byte	0
 110 0038 00       		.byte	0
 111 0039 00       		.byte	0
 112 003a 00       		.byte	0
 113 003b 00       		.byte	0
 114 003c 00       		.byte	0
 115 003d 00       		.byte	0
 116 003e 00       		.byte	0
 117 003f 00       		.byte	0
 118 0040 00       		.byte	0
 119 0041 00       		.byte	0
 120 0042 00       		.byte	0
 121 0043 00       		.byte	0
 122 0044 00       		.byte	0
 123 0045 00       		.byte	0
 124 0046 00       		.byte	0
 125 0047 00       		.byte	0
 126 0048 00       		.byte	0
 127 0049 00       		.byte	0
 128 004a 00       		.byte	0
 129 004b 00       		.byte	0
 130 004c 00       		.byte	0
 131 004d 00       		.byte	0
 132 004e 00       		.byte	0
 133 004f 00       		.byte	0
 134 0050 00       		.byte	0
 135 0051 00       		.byte	0
 136 0052 00       		.byte	0
 137 0053 00       		.byte	0
 138 0054 00       		.byte	0
 139 0055 00       		.byte	0
 140 0056 00       		.byte	0
 141 0057 00       		.byte	0
 142 0058 00       		.byte	0
 143 0059 00       		.byte	0
 144 005a 00       		.byte	0
 145 005b 00       		.byte	0
 146 005c 00       		.byte	0
 147 005d 00       		.byte	0
 148 005e 00       		.byte	0
 149 005f 00       		.byte	0
 150 0060 00       		.byte	0
 151 0061 00       		.byte	0
 152 0062 00       		.byte	0
 153 0063 00       		.byte	0
 154 0064 00       		.byte	0
 155 0065 00       		.byte	0
 156 0066 00       		.byte	0
 157 0067 00       		.byte	0
 158 0068 00       		.byte	0
 159 0069 00       		.byte	0
 160 006a 00       		.byte	0
 161 006b 00       		.byte	0
 162 006c 00       		.byte	0
 163 006d 00       		.byte	0
 164 006e 00       		.byte	0
 165 006f 00       		.byte	0
 166 0070 00       		.byte	0
 167 0071 00       		.byte	0
 168 0072 00       		.byte	0
 169 0073 00       		.byte	0
 170 0074 00       		.byte	0
 171 0075 00       		.byte	0
 172 0076 00       		.byte	0
 173 0077 00       		.byte	0
 174 0078 00       		.byte	0
 175 0079 00       		.byte	0
 176 007a 00       		.byte	0
 177 007b 00       		.byte	0
 178 007c 00       		.byte	0
 179 007d 00       		.byte	0
 180 007e 00       		.byte	0
 181 007f 00       		.byte	0
 182 0080 00       		.byte	0
 183 0081 00       		.byte	0
 184 0082 00       		.byte	0
 185 0083 00       		.byte	0
 186 0084 00       		.byte	0
 187 0085 00       		.byte	0
 188 0086 00       		.byte	0
 189 0087 00       		.byte	0
 190 0088 00       		.byte	0
 191 0089 00       		.byte	0
 192 008a 00       		.byte	0
 193 008b 00       		.byte	0
 194 008c 00       		.byte	0
 195 008d 00       		.byte	0
 196 008e 00       		.byte	0
 197 008f 00       		.byte	0
 198 0090 00       		.byte	0
 199 0091 00       		.byte	0
 200 0092 00       		.byte	0
 201 0093 00       		.byte	0
 202 0094 00       		.byte	0
 203 0095 00       		.byte	0
 204 0096 00       		.byte	0
 205 0097 00       		.byte	0
 206 0098 00       		.byte	0
 207 0099 00       		.byte	0
 208 009a 00       		.byte	0
 209 009b 00       		.byte	0
 210 009c 00       		.byte	0
 211 009d 00       		.byte	0
 212 009e 00       		.byte	0
 213 009f 00       		.byte	0
 214 00a0 00       		.byte	0
 215 00a1 00       		.byte	0
 216 00a2 00       		.byte	0
 217 00a3 00       		.byte	0
 218 00a4 00       		.byte	0
 219 00a5 00       		.byte	0
 220 00a6 00       		.byte	0
 221 00a7 00       		.byte	0
 222 00a8 00       		.byte	0
 223 00a9 00       		.byte	0
 224 00aa 00       		.byte	0
 225 00ab 00       		.byte	0
 226 00ac 00       		.byte	0
 227 00ad 00       		.byte	0
 228 00ae 00       		.byte	0
 229 00af 00       		.byte	0
 230 00b0 00       		.byte	0
 231 00b1 00       		.byte	0
 232 00b2 00       		.byte	0
 233 00b3 00       		.byte	0
 234 00b4 00       		.byte	0
 235 00b5 00       		.byte	0
 236 00b6 00       		.byte	0
 237 00b7 00       		.byte	0
 238 00b8 00       		.byte	0
 239 00b9 00       		.byte	0
 240 00ba 00       		.byte	0
 241 00bb 00       		.byte	0
 242 00bc 00       		.byte	0
 243 00bd 00       		.byte	0
 244 00be 00       		.byte	0
 245 00bf 00       		.byte	0
 246 00c0 00       		.byte	0
 247 00c1 00       		.byte	0
 248 00c2 00       		.byte	0
 249 00c3 00       		.byte	0
 250 00c4 00       		.byte	0
 251 00c5 00       		.byte	0
 252 00c6 00       		.byte	0
 253 00c7 00       		.byte	0
 254 00c8 00       		.byte	0
 255 00c9 00       		.byte	0
 256 00ca 00       		.byte	0
 257 00cb 00       		.byte	0
 258 00cc 00       		.byte	0
 259 00cd 00       		.byte	0
 260 00ce 00       		.byte	0
 261 00cf 00       		.byte	0
 262 00d0 FC       		.byte	-4
 263 00d1 0F       		.byte	15
 264 00d2 00       		.byte	0
 265 00d3 00       		.byte	0
 266 00d4 00       		.byte	0
 267 00d5 00       		.byte	0
 268 00d6 00       		.byte	0
 269 00d7 00       		.byte	0
 270 00d8 00       		.byte	0
 271 00d9 00       		.byte	0
 272 00da 00       		.byte	0
 273 00db 00       		.byte	0
 274 00dc 00       		.byte	0
 275 00dd 00       		.byte	0
 276 00de 00       		.byte	0
 277 00df 00       		.byte	0
 278 00e0 07       		.byte	7
 279 00e1 00       		.byte	0
 280 00e2 00       		.byte	0
 281 00e3 00       		.byte	0
 282 00e4 00       		.byte	0
 283 00e5 00       		.byte	0
 284 00e6 00       		.byte	0
 285 00e7 00       		.byte	0
 286 00e8 00       		.byte	0
 287 00e9 00       		.byte	0
 288 00ea 00       		.byte	0
 289 00eb 00       		.byte	0
 290 00ec 00       		.byte	0
 291 00ed 00       		.byte	0
 292 00ee 00       		.byte	0
 293 00ef C0       		.byte	-64
 294 00f0 01       		.byte	1
 295 00f1 00       		.byte	0
 296 00f2 00       		.byte	0
 297 00f3 00       		.byte	0
 298 00f4 00       		.byte	0
 299 00f5 00       		.byte	0
 300 00f6 00       		.byte	0
 301 00f7 00       		.byte	0
 302 00f8 00       		.byte	0
 303 00f9 00       		.byte	0
 304 00fa 00       		.byte	0
 305 00fb 00       		.byte	0
 306 00fc 00       		.byte	0
 307 00fd 00       		.byte	0
 308 00fe 00       		.byte	0
 309 00ff 40       		.byte	64
 310 0100 00       		.byte	0
 311 0101 00       		.byte	0
 312 0102 20       		.byte	32
 313 0103 00       		.byte	0
 314 0104 00       		.byte	0
 315 0105 00       		.byte	0
 316 0106 00       		.byte	0
 317 0107 00       		.byte	0
 318 0108 00       		.byte	0
 319 0109 00       		.byte	0
 320 010a 00       		.byte	0
 321 010b 00       		.byte	0
 322 010c 00       		.byte	0
 323 010d 00       		.byte	0
 324 010e 00       		.byte	0
 325 010f 40       		.byte	64
 326 0110 00       		.byte	0
 327 0111 00       		.byte	0
 328 0112 30       		.byte	48
 329 0113 00       		.byte	0
 330 0114 00       		.byte	0
 331 0115 00       		.byte	0
 332 0116 00       		.byte	0
 333 0117 00       		.byte	0
 334 0118 00       		.byte	0
 335 0119 00       		.byte	0
 336 011a 00       		.byte	0
 337 011b 00       		.byte	0
 338 011c 00       		.byte	0
 339 011d 00       		.byte	0
 340 011e 00       		.byte	0
 341 011f 40       		.byte	64
 342 0120 00       		.byte	0
 343 0121 00       		.byte	0
 344 0122 50       		.byte	80
 345 0123 00       		.byte	0
 346 0124 00       		.byte	0
 347 0125 02       		.byte	2
 348 0126 00       		.byte	0
 349 0127 00       		.byte	0
 350 0128 00       		.byte	0
 351 0129 F8       		.byte	-8
 352 012a 01       		.byte	1
 353 012b 00       		.byte	0
 354 012c 00       		.byte	0
 355 012d 00       		.byte	0
 356 012e 00       		.byte	0
 357 012f 40       		.byte	64
 358 0130 00       		.byte	0
 359 0131 00       		.byte	0
 360 0132 90       		.byte	-112
 361 0133 00       		.byte	0
 362 0134 00       		.byte	0
 363 0135 02       		.byte	2
 364 0136 00       		.byte	0
 365 0137 00       		.byte	0
 366 0138 FC       		.byte	-4
 367 0139 0F       		.byte	15
 368 013a 00       		.byte	0
 369 013b 00       		.byte	0
 370 013c 00       		.byte	0
 371 013d 00       		.byte	0
 372 013e 00       		.byte	0
 373 013f 40       		.byte	64
 374 0140 00       		.byte	0
 375 0141 00       		.byte	0
 376 0142 98       		.byte	-104
 377 0143 00       		.byte	0
 378 0144 00       		.byte	0
 379 0145 02       		.byte	2
 380 0146 C0       		.byte	-64
 381 0147 00       		.byte	0
 382 0148 01       		.byte	1
 383 0149 00       		.byte	0
 384 014a 00       		.byte	0
 385 014b 00       		.byte	0
 386 014c 00       		.byte	0
 387 014d 00       		.byte	0
 388 014e 00       		.byte	0
 389 014f 40       		.byte	64
 390 0150 00       		.byte	0
 391 0151 00       		.byte	0
 392 0152 08       		.byte	8
 393 0153 01       		.byte	1
 394 0154 00       		.byte	0
 395 0155 06       		.byte	6
 396 0156 C0       		.byte	-64
 397 0157 00       		.byte	0
 398 0158 01       		.byte	1
 399 0159 00       		.byte	0
 400 015a 00       		.byte	0
 401 015b 00       		.byte	0
 402 015c 00       		.byte	0
 403 015d 00       		.byte	0
 404 015e 00       		.byte	0
 405 015f 40       		.byte	64
 406 0160 00       		.byte	0
 407 0161 00       		.byte	0
 408 0162 08       		.byte	8
 409 0163 01       		.byte	1
 410 0164 00       		.byte	0
 411 0165 1C       		.byte	28
 412 0166 A0       		.byte	-96
 413 0167 00       		.byte	0
 414 0168 01       		.byte	1
 415 0169 00       		.byte	0
 416 016a 00       		.byte	0
 417 016b 00       		.byte	0
 418 016c 00       		.byte	0
 419 016d 00       		.byte	0
 420 016e 00       		.byte	0
 421 016f 40       		.byte	64
 422 0170 00       		.byte	0
 423 0171 00       		.byte	0
 424 0172 0C       		.byte	12
 425 0173 02       		.byte	2
 426 0174 00       		.byte	0
 427 0175 24       		.byte	36
 428 0176 B0       		.byte	-80
 429 0177 00       		.byte	0
 430 0178 01       		.byte	1
 431 0179 00       		.byte	0
 432 017a 00       		.byte	0
 433 017b 00       		.byte	0
 434 017c 00       		.byte	0
 435 017d 00       		.byte	0
 436 017e 00       		.byte	0
 437 017f 40       		.byte	64
 438 0180 00       		.byte	0
 439 0181 00       		.byte	0
 440 0182 04       		.byte	4
 441 0183 06       		.byte	6
 442 0184 00       		.byte	0
 443 0185 44       		.byte	68
 444 0186 90       		.byte	-112
 445 0187 00       		.byte	0
 446 0188 01       		.byte	1
 447 0189 00       		.byte	0
 448 018a 00       		.byte	0
 449 018b 00       		.byte	0
 450 018c 00       		.byte	0
 451 018d 00       		.byte	0
 452 018e 00       		.byte	0
 453 018f 40       		.byte	64
 454 0190 C0       		.byte	-64
 455 0191 01       		.byte	1
 456 0192 04       		.byte	4
 457 0193 08       		.byte	8
 458 0194 00       		.byte	0
 459 0195 84       		.byte	-124
 460 0196 89       		.byte	-119
 461 0197 00       		.byte	0
 462 0198 03       		.byte	3
 463 0199 00       		.byte	0
 464 019a 00       		.byte	0
 465 019b 00       		.byte	0
 466 019c 00       		.byte	0
 467 019d 00       		.byte	0
 468 019e 00       		.byte	0
 469 019f 40       		.byte	64
 470 01a0 30       		.byte	48
 471 01a1 00       		.byte	0
 472 01a2 02       		.byte	2
 473 01a3 08       		.byte	8
 474 01a4 00       		.byte	0
 475 01a5 04       		.byte	4
 476 01a6 8A       		.byte	-118
 477 01a7 00       		.byte	0
 478 01a8 F6       		.byte	-10
 479 01a9 07       		.byte	7
 480 01aa 00       		.byte	0
 481 01ab 00       		.byte	0
 482 01ac 00       		.byte	0
 483 01ad 00       		.byte	0
 484 01ae 00       		.byte	0
 485 01af 80       		.byte	-128
 486 01b0 E0       		.byte	-32
 487 01b1 00       		.byte	0
 488 01b2 FE       		.byte	-2
 489 01b3 1F       		.byte	31
 490 01b4 00       		.byte	0
 491 01b5 04       		.byte	4
 492 01b6 8C       		.byte	-116
 493 01b7 00       		.byte	0
 494 01b8 04       		.byte	4
 495 01b9 00       		.byte	0
 496 01ba 00       		.byte	0
 497 01bb 00       		.byte	0
 498 01bc 00       		.byte	0
 499 01bd 00       		.byte	0
 500 01be 00       		.byte	0
 501 01bf 80       		.byte	-128
 502 01c0 40       		.byte	64
 503 01c1 00       		.byte	0
 504 01c2 02       		.byte	2
 505 01c3 28       		.byte	40
 506 01c4 00       		.byte	0
 507 01c5 04       		.byte	4
 508 01c6 80       		.byte	-128
 509 01c7 00       		.byte	0
 510 01c8 04       		.byte	4
 511 01c9 00       		.byte	0
 512 01ca 00       		.byte	0
 513 01cb 00       		.byte	0
 514 01cc 00       		.byte	0
 515 01cd 00       		.byte	0
 516 01ce 00       		.byte	0
 517 01cf 80       		.byte	-128
 518 01d0 40       		.byte	64
 519 01d1 00       		.byte	0
 520 01d2 01       		.byte	1
 521 01d3 40       		.byte	64
 522 01d4 00       		.byte	0
 523 01d5 04       		.byte	4
 524 01d6 80       		.byte	-128
 525 01d7 00       		.byte	0
 526 01d8 04       		.byte	4
 527 01d9 00       		.byte	0
 528 01da 00       		.byte	0
 529 01db 00       		.byte	0
 530 01dc 00       		.byte	0
 531 01dd 00       		.byte	0
 532 01de 00       		.byte	0
 533 01df 00       		.byte	0
 534 01e0 41       		.byte	65
 535 01e1 00       		.byte	0
 536 01e2 01       		.byte	1
 537 01e3 80       		.byte	-128
 538 01e4 00       		.byte	0
 539 01e5 04       		.byte	4
 540 01e6 80       		.byte	-128
 541 01e7 00       		.byte	0
 542 01e8 04       		.byte	4
 543 01e9 00       		.byte	0
 544 01ea 00       		.byte	0
 545 01eb 00       		.byte	0
 546 01ec 00       		.byte	0
 547 01ed 00       		.byte	0
 548 01ee 00       		.byte	0
 549 01ef 00       		.byte	0
 550 01f0 41       		.byte	65
 551 01f1 80       		.byte	-128
 552 01f2 01       		.byte	1
 553 01f3 80       		.byte	-128
 554 01f4 00       		.byte	0
 555 01f5 04       		.byte	4
 556 01f6 80       		.byte	-128
 557 01f7 00       		.byte	0
 558 01f8 C4       		.byte	-60
 559 01f9 03       		.byte	3
 560 01fa 00       		.byte	0
 561 01fb 00       		.byte	0
 562 01fc 00       		.byte	0
 563 01fd 00       		.byte	0
 564 01fe 00       		.byte	0
 565 01ff 00       		.byte	0
 566 0200 42       		.byte	66
 567 0201 80       		.byte	-128
 568 0202 00       		.byte	0
 569 0203 00       		.byte	0
 570 0204 01       		.byte	1
 571 0205 00       		.byte	0
 572 0206 00       		.byte	0
 573 0207 00       		.byte	0
 574 0208 74       		.byte	116
 575 0209 00       		.byte	0
 576 020a 00       		.byte	0
 577 020b 00       		.byte	0
 578 020c 00       		.byte	0
 579 020d 00       		.byte	0
 580 020e 00       		.byte	0
 581 020f 00       		.byte	0
 582 0210 44       		.byte	68
 583 0211 80       		.byte	-128
 584 0212 00       		.byte	0
 585 0213 00       		.byte	0
 586 0214 06       		.byte	6
 587 0215 00       		.byte	0
 588 0216 00       		.byte	0
 589 0217 00       		.byte	0
 590 0218 0C       		.byte	12
 591 0219 00       		.byte	0
 592 021a 00       		.byte	0
 593 021b 00       		.byte	0
 594 021c 00       		.byte	0
 595 021d 00       		.byte	0
 596 021e 00       		.byte	0
 597 021f 00       		.byte	0
 598 0220 24       		.byte	36
 599 0221 C0       		.byte	-64
 600 0222 00       		.byte	0
 601 0223 00       		.byte	0
 602 0224 04       		.byte	4
 603 0225 00       		.byte	0
 604 0226 00       		.byte	0
 605 0227 00       		.byte	0
 606 0228 00       		.byte	0
 607 0229 00       		.byte	0
 608 022a 00       		.byte	0
 609 022b 00       		.byte	0
 610 022c 00       		.byte	0
 611 022d 00       		.byte	0
 612 022e 00       		.byte	0
 613 022f 00       		.byte	0
 614 0230 38       		.byte	56
 615 0231 40       		.byte	64
 616 0232 00       		.byte	0
 617 0233 00       		.byte	0
 618 0234 18       		.byte	24
 619 0235 00       		.byte	0
 620 0236 00       		.byte	0
 621 0237 00       		.byte	0
 622 0238 00       		.byte	0
 623 0239 00       		.byte	0
 624 023a 00       		.byte	0
 625 023b 00       		.byte	0
 626 023c 00       		.byte	0
 627 023d 00       		.byte	0
 628 023e 00       		.byte	0
 629 023f 00       		.byte	0
 630 0240 00       		.byte	0
 631 0241 40       		.byte	64
 632 0242 00       		.byte	0
 633 0243 00       		.byte	0
 634 0244 10       		.byte	16
 635 0245 00       		.byte	0
 636 0246 00       		.byte	0
 637 0247 00       		.byte	0
 638 0248 00       		.byte	0
 639 0249 00       		.byte	0
 640 024a 00       		.byte	0
 641 024b 00       		.byte	0
 642 024c 00       		.byte	0
 643 024d 00       		.byte	0
 644 024e 00       		.byte	0
 645 024f 00       		.byte	0
 646 0250 00       		.byte	0
 647 0251 40       		.byte	64
 648 0252 00       		.byte	0
 649 0253 00       		.byte	0
 650 0254 00       		.byte	0
 651 0255 00       		.byte	0
 652 0256 00       		.byte	0
 653 0257 00       		.byte	0
 654 0258 00       		.byte	0
 655 0259 00       		.byte	0
 656 025a 00       		.byte	0
 657 025b 00       		.byte	0
 658 025c 00       		.byte	0
 659 025d 00       		.byte	0
 660 025e 00       		.byte	0
 661 025f 00       		.byte	0
 662 0260 00       		.byte	0
 663 0261 40       		.byte	64
 664 0262 00       		.byte	0
 665 0263 00       		.byte	0
 666 0264 00       		.byte	0
 667 0265 00       		.byte	0
 668 0266 00       		.byte	0
 669 0267 00       		.byte	0
 670 0268 00       		.byte	0
 671 0269 00       		.byte	0
 672 026a 00       		.byte	0
 673 026b 00       		.byte	0
 674 026c 00       		.byte	0
 675 026d 00       		.byte	0
 676 026e 00       		.byte	0
 677 026f 00       		.byte	0
 678 0270 00       		.byte	0
 679 0271 00       		.byte	0
 680 0272 00       		.byte	0
 681 0273 00       		.byte	0
 682 0274 00       		.byte	0
 683 0275 00       		.byte	0
 684 0276 00       		.byte	0
 685 0277 00       		.byte	0
 686 0278 00       		.byte	0
 687 0279 00       		.byte	0
 688 027a 00       		.byte	0
 689 027b 00       		.byte	0
 690 027c 00       		.byte	0
 691 027d 00       		.byte	0
 692 027e 00       		.byte	0
 693 027f 00       		.byte	0
 694 0280 00       		.byte	0
 695 0281 00       		.byte	0
 696 0282 00       		.byte	0
 697 0283 00       		.byte	0
 698 0284 00       		.byte	0
 699 0285 00       		.byte	0
 700 0286 00       		.byte	0
 701 0287 00       		.byte	0
 702 0288 00       		.byte	0
 703 0289 00       		.byte	0
 704 028a 00       		.byte	0
 705 028b 00       		.byte	0
 706 028c 00       		.byte	0
 707 028d 00       		.byte	0
 708 028e 00       		.byte	0
 709 028f 00       		.byte	0
 710 0290 00       		.byte	0
 711 0291 00       		.byte	0
 712 0292 00       		.byte	0
 713 0293 00       		.byte	0
 714 0294 00       		.byte	0
 715 0295 00       		.byte	0
 716 0296 00       		.byte	0
 717 0297 00       		.byte	0
 718 0298 00       		.byte	0
 719 0299 00       		.byte	0
 720 029a 00       		.byte	0
 721 029b 00       		.byte	0
 722 029c 00       		.byte	0
 723 029d 00       		.byte	0
 724 029e 00       		.byte	0
 725 029f 00       		.byte	0
 726 02a0 00       		.byte	0
 727 02a1 00       		.byte	0
 728 02a2 00       		.byte	0
 729 02a3 00       		.byte	0
 730 02a4 00       		.byte	0
 731 02a5 00       		.byte	0
 732 02a6 00       		.byte	0
 733 02a7 00       		.byte	0
 734 02a8 00       		.byte	0
 735 02a9 00       		.byte	0
 736 02aa 00       		.byte	0
 737 02ab 00       		.byte	0
 738 02ac 00       		.byte	0
 739 02ad 00       		.byte	0
 740 02ae 00       		.byte	0
 741 02af 00       		.byte	0
 742 02b0 00       		.byte	0
 743 02b1 00       		.byte	0
 744 02b2 00       		.byte	0
 745 02b3 00       		.byte	0
 746 02b4 00       		.byte	0
 747 02b5 00       		.byte	0
 748 02b6 00       		.byte	0
 749 02b7 00       		.byte	0
 750 02b8 00       		.byte	0
 751 02b9 00       		.byte	0
 752 02ba 00       		.byte	0
 753 02bb 00       		.byte	0
 754 02bc 00       		.byte	0
 755 02bd 00       		.byte	0
 756 02be 00       		.byte	0
 757 02bf 00       		.byte	0
 758 02c0 00       		.byte	0
 759 02c1 00       		.byte	0
 760 02c2 00       		.byte	0
 761 02c3 00       		.byte	0
 762 02c4 00       		.byte	0
 763 02c5 00       		.byte	0
 764 02c6 00       		.byte	0
 765 02c7 00       		.byte	0
 766 02c8 00       		.byte	0
 767 02c9 00       		.byte	0
 768 02ca 00       		.byte	0
 769 02cb 00       		.byte	0
 770 02cc 00       		.byte	0
 771 02cd 00       		.byte	0
 772 02ce 00       		.byte	0
 773 02cf 00       		.byte	0
 774 02d0 00       		.byte	0
 775 02d1 00       		.byte	0
 776 02d2 00       		.byte	0
 777 02d3 00       		.byte	0
 778 02d4 00       		.byte	0
 779 02d5 00       		.byte	0
 780 02d6 00       		.byte	0
 781 02d7 00       		.byte	0
 782 02d8 00       		.byte	0
 783 02d9 00       		.byte	0
 784 02da 00       		.byte	0
 785 02db 00       		.byte	0
 786 02dc 00       		.byte	0
 787 02dd 00       		.byte	0
 788 02de 00       		.byte	0
 789 02df 00       		.byte	0
 790 02e0 00       		.byte	0
 791 02e1 00       		.byte	0
 792 02e2 00       		.byte	0
 793 02e3 00       		.byte	0
 794 02e4 00       		.byte	0
 795 02e5 00       		.byte	0
 796 02e6 00       		.byte	0
 797 02e7 00       		.byte	0
 798 02e8 00       		.byte	0
 799 02e9 00       		.byte	0
 800 02ea 00       		.byte	0
 801 02eb 00       		.byte	0
 802 02ec 00       		.byte	0
 803 02ed 00       		.byte	0
 804 02ee 00       		.byte	0
 805 02ef 00       		.byte	0
 806 02f0 00       		.byte	0
 807 02f1 00       		.byte	0
 808 02f2 00       		.byte	0
 809 02f3 00       		.byte	0
 810 02f4 00       		.byte	0
 811 02f5 00       		.byte	0
 812 02f6 00       		.byte	0
 813 02f7 00       		.byte	0
 814 02f8 00       		.byte	0
 815 02f9 00       		.byte	0
 816 02fa 00       		.byte	0
 817 02fb 00       		.byte	0
 818 02fc 00       		.byte	0
 819 02fd 00       		.byte	0
 820 02fe 00       		.byte	0
 821 02ff 00       		.byte	0
 822 0300 00       		.byte	0
 823 0301 00       		.byte	0
 824 0302 00       		.byte	0
 825 0303 00       		.byte	0
 826 0304 00       		.byte	0
 827 0305 00       		.byte	0
 828 0306 00       		.byte	0
 829 0307 00       		.byte	0
 830 0308 00       		.byte	0
 831 0309 00       		.byte	0
 832 030a 00       		.byte	0
 833 030b 00       		.byte	0
 834 030c 00       		.byte	0
 835 030d 00       		.byte	0
 836 030e 00       		.byte	0
 837 030f 00       		.byte	0
 838 0310 00       		.byte	0
 839 0311 00       		.byte	0
 840 0312 00       		.byte	0
 841 0313 00       		.byte	0
 842 0314 00       		.byte	0
 843 0315 00       		.byte	0
 844 0316 00       		.byte	0
 845 0317 00       		.byte	0
 846 0318 00       		.byte	0
 847 0319 00       		.byte	0
 848 031a 00       		.byte	0
 849 031b 00       		.byte	0
 850 031c 00       		.byte	0
 851 031d 00       		.byte	0
 852 031e 00       		.byte	0
 853 031f 00       		.byte	0
 854 0320 00       		.byte	0
 855 0321 00       		.byte	0
 856 0322 00       		.byte	0
 857 0323 00       		.byte	0
 858 0324 00       		.byte	0
 859 0325 00       		.byte	0
 860 0326 00       		.byte	0
 861 0327 00       		.byte	0
 862 0328 00       		.byte	0
 863 0329 00       		.byte	0
 864 032a 00       		.byte	0
 865 032b 00       		.byte	0
 866 032c 00       		.byte	0
 867 032d 00       		.byte	0
 868 032e 00       		.byte	0
 869 032f 00       		.byte	0
 870 0330 00       		.byte	0
 871 0331 00       		.byte	0
 872 0332 00       		.byte	0
 873 0333 00       		.byte	0
 874 0334 00       		.byte	0
 875 0335 00       		.byte	0
 876 0336 00       		.byte	0
 877 0337 00       		.byte	0
 878 0338 00       		.byte	0
 879 0339 00       		.byte	0
 880 033a 00       		.byte	0
 881 033b 00       		.byte	0
 882 033c 00       		.byte	0
 883 033d 00       		.byte	0
 884 033e 00       		.byte	0
 885 033f 00       		.byte	0
 886 0340 00       		.byte	0
 887 0341 00       		.byte	0
 888 0342 00       		.byte	0
 889 0343 00       		.byte	0
 890 0344 00       		.byte	0
 891 0345 00       		.byte	0
 892 0346 00       		.byte	0
 893 0347 00       		.byte	0
 894 0348 00       		.byte	0
 895 0349 00       		.byte	0
 896 034a 00       		.byte	0
 897 034b 00       		.byte	0
 898 034c 00       		.byte	0
 899 034d 00       		.byte	0
 900 034e 00       		.byte	0
 901 034f 00       		.byte	0
 902 0350 00       		.byte	0
 903 0351 00       		.byte	0
 904 0352 00       		.byte	0
 905 0353 00       		.byte	0
 906 0354 00       		.byte	0
 907 0355 00       		.byte	0
 908 0356 00       		.byte	0
 909 0357 00       		.byte	0
 910 0358 00       		.byte	0
 911 0359 00       		.byte	0
 912 035a 00       		.byte	0
 913 035b 00       		.byte	0
 914 035c 00       		.byte	0
 915 035d 00       		.byte	0
 916 035e 00       		.byte	0
 917 035f 00       		.byte	0
 918 0360 00       		.byte	0
 919 0361 00       		.byte	0
 920 0362 00       		.byte	0
 921 0363 00       		.byte	0
 922 0364 00       		.byte	0
 923 0365 00       		.byte	0
 924 0366 00       		.byte	0
 925 0367 00       		.byte	0
 926 0368 00       		.byte	0
 927 0369 00       		.byte	0
 928 036a 00       		.byte	0
 929 036b 00       		.byte	0
 930 036c 00       		.byte	0
 931 036d 00       		.byte	0
 932 036e 00       		.byte	0
 933 036f 00       		.byte	0
 934 0370 00       		.byte	0
 935 0371 00       		.byte	0
 936 0372 00       		.byte	0
 937 0373 00       		.byte	0
 938 0374 00       		.byte	0
 939 0375 00       		.byte	0
 940 0376 00       		.byte	0
 941 0377 00       		.byte	0
 942 0378 00       		.byte	0
 943 0379 00       		.byte	0
 944 037a 00       		.byte	0
 945 037b 00       		.byte	0
 946 037c 00       		.byte	0
 947 037d 00       		.byte	0
 948 037e 00       		.byte	0
 949 037f 00       		.byte	0
 950 0380 00       		.byte	0
 951 0381 00       		.byte	0
 952 0382 00       		.byte	0
 953 0383 00       		.byte	0
 954 0384 00       		.byte	0
 955 0385 00       		.byte	0
 956 0386 00       		.byte	0
 957 0387 00       		.byte	0
 958 0388 00       		.byte	0
 959 0389 00       		.byte	0
 960 038a 00       		.byte	0
 961 038b 00       		.byte	0
 962 038c 00       		.byte	0
 963 038d 00       		.byte	0
 964 038e 00       		.byte	0
 965 038f 00       		.byte	0
 966 0390 00       		.byte	0
 967 0391 00       		.byte	0
 968 0392 00       		.byte	0
 969 0393 00       		.byte	0
 970 0394 00       		.byte	0
 971 0395 00       		.byte	0
 972 0396 00       		.byte	0
 973 0397 00       		.byte	0
 974 0398 00       		.byte	0
 975 0399 00       		.byte	0
 976 039a 00       		.byte	0
 977 039b 00       		.byte	0
 978 039c 00       		.byte	0
 979 039d 00       		.byte	0
 980 039e 00       		.byte	0
 981 039f 00       		.byte	0
 982 03a0 00       		.byte	0
 983 03a1 00       		.byte	0
 984 03a2 00       		.byte	0
 985 03a3 00       		.byte	0
 986 03a4 00       		.byte	0
 987 03a5 00       		.byte	0
 988 03a6 00       		.byte	0
 989 03a7 00       		.byte	0
 990 03a8 00       		.byte	0
 991 03a9 00       		.byte	0
 992 03aa 00       		.byte	0
 993 03ab 00       		.byte	0
 994 03ac 00       		.byte	0
 995 03ad 00       		.byte	0
 996 03ae 00       		.byte	0
 997 03af 00       		.byte	0
 998 03b0 00       		.byte	0
 999 03b1 00       		.byte	0
 1000 03b2 00       		.byte	0
 1001 03b3 00       		.byte	0
 1002 03b4 00       		.byte	0
 1003 03b5 00       		.byte	0
 1004 03b6 00       		.byte	0
 1005 03b7 00       		.byte	0
 1006 03b8 00       		.byte	0
 1007 03b9 00       		.byte	0
 1008 03ba 00       		.byte	0
 1009 03bb 00       		.byte	0
 1010 03bc 00       		.byte	0
 1011 03bd 00       		.byte	0
 1012 03be 00       		.byte	0
 1013 03bf 00       		.byte	0
 1014 03c0 00       		.byte	0
 1015 03c1 00       		.byte	0
 1016 03c2 00       		.byte	0
 1017 03c3 00       		.byte	0
 1018 03c4 00       		.byte	0
 1019 03c5 00       		.byte	0
 1020 03c6 00       		.byte	0
 1021 03c7 00       		.byte	0
 1022 03c8 00       		.byte	0
 1023 03c9 00       		.byte	0
 1024 03ca 00       		.byte	0
 1025 03cb 00       		.byte	0
 1026 03cc 00       		.byte	0
 1027 03cd 00       		.byte	0
 1028 03ce 00       		.byte	0
 1029 03cf 00       		.byte	0
 1030 03d0 00       		.byte	0
 1031 03d1 00       		.byte	0
 1032 03d2 00       		.byte	0
 1033 03d3 00       		.byte	0
 1034 03d4 00       		.byte	0
 1035 03d5 00       		.byte	0
 1036 03d6 00       		.byte	0
 1037 03d7 00       		.byte	0
 1038 03d8 00       		.byte	0
 1039 03d9 00       		.byte	0
 1040 03da 00       		.byte	0
 1041 03db 00       		.byte	0
 1042 03dc 00       		.byte	0
 1043 03dd 00       		.byte	0
 1044 03de 00       		.byte	0
 1045 03df 00       		.byte	0
 1046 03e0 00       		.byte	0
 1047 03e1 00       		.byte	0
 1048 03e2 00       		.byte	0
 1049 03e3 00       		.byte	0
 1050 03e4 00       		.byte	0
 1051 03e5 00       		.byte	0
 1052 03e6 00       		.byte	0
 1053 03e7 00       		.byte	0
 1054 03e8 00       		.byte	0
 1055 03e9 00       		.byte	0
 1056 03ea 00       		.byte	0
 1057 03eb 00       		.byte	0
 1058 03ec 00       		.byte	0
 1059 03ed 00       		.byte	0
 1060 03ee 00       		.byte	0
 1061 03ef 00       		.byte	0
 1062 03f0 00       		.byte	0
 1063 03f1 00       		.byte	0
 1064 03f2 00       		.byte	0
 1065 03f3 00       		.byte	0
 1066 03f4 00       		.byte	0
 1067 03f5 00       		.byte	0
 1068 03f6 00       		.byte	0
 1069 03f7 00       		.byte	0
 1070 03f8 00       		.byte	0
 1071 03f9 00       		.byte	0
 1072 03fa 00       		.byte	0
 1073 03fb 00       		.byte	0
 1074 03fc 00       		.byte	0
 1075 03fd 00       		.byte	0
 1076 03fe 00       		.byte	0
 1077 03ff 00       		.byte	0
 1078 0400 00       		.byte	0
 1079 0401 00       		.byte	0
 1080 0402 00       		.byte	0
 1081 0403 00       		.byte	0
 1082 0404 00       		.byte	0
 1083 0405 00       		.byte	0
 1084 0406 00       		.byte	0
 1085 0407 00       		.byte	0
 1086 0408 00       		.byte	0
 1087 0409 00       		.byte	0
 1088 040a 00       		.byte	0
 1089 040b 00       		.byte	0
 1090              		.align	2
 1093              	ship_bits:
 1094 040c 00       		.byte	0
 1095 040d 01       		.byte	1
 1096 040e 00       		.byte	0
 1097 040f 00       		.byte	0
 1098 0410 01       		.byte	1
 1099 0411 00       		.byte	0
 1100 0412 C0       		.byte	-64
 1101 0413 07       		.byte	7
 1102 0414 00       		.byte	0
 1103 0415 60       		.byte	96
 1104 0416 0C       		.byte	12
 1105 0417 00       		.byte	0
 1106 0418 20       		.byte	32
 1107 0419 08       		.byte	8
 1108 041a 00       		.byte	0
 1109 041b 20       		.byte	32
 1110 041c 08       		.byte	8
 1111 041d 00       		.byte	0
 1112 041e 30       		.byte	48
 1113 041f 18       		.byte	24
 1114 0420 00       		.byte	0
 1115 0421 18       		.byte	24
 1116 0422 30       		.byte	48
 1117 0423 00       		.byte	0
 1118 0424 08       		.byte	8
 1119 0425 20       		.byte	32
 1120 0426 00       		.byte	0
 1121 0427 08       		.byte	8
 1122 0428 20       		.byte	32
 1123 0429 00       		.byte	0
 1124 042a 0C       		.byte	12
 1125 042b 60       		.byte	96
 1126 042c 00       		.byte	0
 1127 042d 44       		.byte	68
 1128 042e 44       		.byte	68
 1129 042f 00       		.byte	0
 1130 0430 F4       		.byte	-12
 1131 0431 5F       		.byte	95
 1132 0432 00       		.byte	0
 1133 0433 1C       		.byte	28
 1134 0434 70       		.byte	112
 1135 0435 00       		.byte	0
 1136 0436 08       		.byte	8
 1137 0437 20       		.byte	32
 1138 0438 00       		.byte	0
 1139 0439 00       		.byte	0
 1140 043a 00       		.byte	0
 1141 043b 00       		.byte	0
 1142 043c 00       		.byte	0
 1143 043d 00       		.byte	0
 1144 043e 00       		.byte	0
 1145 043f 00       		.byte	0
 1146 0440 00       		.byte	0
 1147 0441 00       		.byte	0
 1148 0442 00       		.byte	0
 1149 0443 00       		.byte	0
 1150 0444 00       		.byte	0
 1151 0445 00       		.byte	0
 1152 0446 00       		.byte	0
 1153 0447 00       		.byte	0
 1154              		.text
 1155              		.align	1
 1156              		.syntax unified
 1157              		.code	16
 1158              		.thumb_func
 1159              		.fpu softvfp
 1161              	load_sprite:
 1162              	.LFB1:
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** typedef struct
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** unsigned char width;
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** unsigned char height;
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** unsigned char* data;
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //void(*move)(struct sprite *);
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //void(*set_speed)(struct tObj *, int, int);
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** } sprite;
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static void load_sprite(sprite* s, unsigned char* data, int width, int height)
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 1163              		.loc 1 32 0
 1164              		.cfi_startproc
 1165              		@ args = 0, pretend = 0, frame = 16
 1166              		@ frame_needed = 1, uses_anonymous_args = 0
 1167 0000 80B5     		push	{r7, lr}
 1168              		.cfi_def_cfa_offset 8
 1169              		.cfi_offset 7, -8
 1170              		.cfi_offset 14, -4
 1171 0002 84B0     		sub	sp, sp, #16
 1172              		.cfi_def_cfa_offset 24
 1173 0004 00AF     		add	r7, sp, #0
 1174              		.cfi_def_cfa_register 7
 1175 0006 F860     		str	r0, [r7, #12]
 1176 0008 B960     		str	r1, [r7, #8]
 1177 000a 7A60     		str	r2, [r7, #4]
 1178 000c 3B60     		str	r3, [r7]
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** s->width = width;
 1179              		.loc 1 33 0
 1180 000e 7B68     		ldr	r3, [r7, #4]
 1181 0010 DAB2     		uxtb	r2, r3
 1182 0012 FB68     		ldr	r3, [r7, #12]
 1183 0014 1A70     		strb	r2, [r3]
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** s->height = height;
 1184              		.loc 1 34 0
 1185 0016 3B68     		ldr	r3, [r7]
 1186 0018 DAB2     		uxtb	r2, r3
 1187 001a FB68     		ldr	r3, [r7, #12]
 1188 001c 5A70     		strb	r2, [r3, #1]
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** s->data = data;
 1189              		.loc 1 35 0
 1190 001e FB68     		ldr	r3, [r7, #12]
 1191 0020 BA68     		ldr	r2, [r7, #8]
 1192 0022 5A60     		str	r2, [r3, #4]
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
 1193              		.loc 1 36 0
 1194 0024 C046     		nop
 1195 0026 BD46     		mov	sp, r7
 1196 0028 04B0     		add	sp, sp, #16
 1197              		@ sp needed
 1198 002a 80BD     		pop	{r7, pc}
 1199              		.cfi_endproc
 1200              	.LFE1:
 1202              		.align	1
 1203              		.global	draw_sprite
 1204              		.syntax unified
 1205              		.code	16
 1206              		.thumb_func
 1207              		.fpu softvfp
 1209              	draw_sprite:
 1210              	.LFB2:
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void draw_sprite(sprite* s, int x, int y, int set) {
 1211              		.loc 1 38 0
 1212              		.cfi_startproc
 1213              		@ args = 0, pretend = 0, frame = 40
 1214              		@ frame_needed = 1, uses_anonymous_args = 0
 1215 002c 80B5     		push	{r7, lr}
 1216              		.cfi_def_cfa_offset 8
 1217              		.cfi_offset 7, -8
 1218              		.cfi_offset 14, -4
 1219 002e 8AB0     		sub	sp, sp, #40
 1220              		.cfi_def_cfa_offset 48
 1221 0030 00AF     		add	r7, sp, #0
 1222              		.cfi_def_cfa_register 7
 1223 0032 F860     		str	r0, [r7, #12]
 1224 0034 B960     		str	r1, [r7, #8]
 1225 0036 7A60     		str	r2, [r7, #4]
 1226 0038 3B60     		str	r3, [r7]
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** int i,j,k, width_in_bytes;
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** if (s->width % 8 == 0)
 1227              		.loc 1 40 0
 1228 003a FB68     		ldr	r3, [r7, #12]
 1229 003c 1B78     		ldrb	r3, [r3]
 1230 003e 0722     		movs	r2, #7
 1231 0040 1340     		ands	r3, r2
 1232 0042 DBB2     		uxtb	r3, r3
 1233 0044 002B     		cmp	r3, #0
 1234 0046 05D1     		bne	.L4
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** width_in_bytes = s->width / 8;
 1235              		.loc 1 41 0
 1236 0048 FB68     		ldr	r3, [r7, #12]
 1237 004a 1B78     		ldrb	r3, [r3]
 1238 004c DB08     		lsrs	r3, r3, #3
 1239 004e DBB2     		uxtb	r3, r3
 1240 0050 BB61     		str	r3, [r7, #24]
 1241 0052 05E0     		b	.L5
 1242              	.L4:
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** else
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** width_in_bytes = s->width / 8 + 1;
 1243              		.loc 1 43 0
 1244 0054 FB68     		ldr	r3, [r7, #12]
 1245 0056 1B78     		ldrb	r3, [r3]
 1246 0058 DB08     		lsrs	r3, r3, #3
 1247 005a DBB2     		uxtb	r3, r3
 1248 005c 0133     		adds	r3, r3, #1
 1249 005e BB61     		str	r3, [r7, #24]
 1250              	.L5:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (i = 0; i < s->height; i++)
 1251              		.loc 1 44 0
 1252 0060 0023     		movs	r3, #0
 1253 0062 7B62     		str	r3, [r7, #36]
 1254 0064 39E0     		b	.L6
 1255              	.L12:
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (j = 0; j < width_in_bytes; j++) {
 1256              		.loc 1 45 0
 1257 0066 0023     		movs	r3, #0
 1258 0068 3B62     		str	r3, [r7, #32]
 1259 006a 2FE0     		b	.L7
 1260              	.L11:
 1261              	.LBB2:
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** unsigned char byte = s->data[i * width_in_bytes + j];
 1262              		.loc 1 46 0
 1263 006c FB68     		ldr	r3, [r7, #12]
 1264 006e 5B68     		ldr	r3, [r3, #4]
 1265 0070 7A6A     		ldr	r2, [r7, #36]
 1266 0072 B969     		ldr	r1, [r7, #24]
 1267 0074 5143     		muls	r1, r2
 1268 0076 3A6A     		ldr	r2, [r7, #32]
 1269 0078 8A18     		adds	r2, r1, r2
 1270 007a 9A18     		adds	r2, r3, r2
 1271 007c 1723     		movs	r3, #23
 1272 007e FB18     		adds	r3, r7, r3
 1273 0080 1278     		ldrb	r2, [r2]
 1274 0082 1A70     		strb	r2, [r3]
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (k =0; k < 8; k++) {
 1275              		.loc 1 47 0
 1276 0084 0023     		movs	r3, #0
 1277 0086 FB61     		str	r3, [r7, #28]
 1278 0088 1AE0     		b	.L8
 1279              	.L10:
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** if (byte & (1 << k))
 1280              		.loc 1 48 0
 1281 008a 1723     		movs	r3, #23
 1282 008c FB18     		adds	r3, r7, r3
 1283 008e 1A78     		ldrb	r2, [r3]
 1284 0090 FB69     		ldr	r3, [r7, #28]
 1285 0092 1A41     		asrs	r2, r2, r3
 1286 0094 1300     		movs	r3, r2
 1287 0096 0122     		movs	r2, #1
 1288 0098 1340     		ands	r3, r2
 1289 009a 0ED0     		beq	.L9
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** pixel(8 * j + k + x + 1, i + y + 1);
 1290              		.loc 1 49 0
 1291 009c 3B6A     		ldr	r3, [r7, #32]
 1292 009e DA00     		lsls	r2, r3, #3
 1293 00a0 FB69     		ldr	r3, [r7, #28]
 1294 00a2 D218     		adds	r2, r2, r3
 1295 00a4 BB68     		ldr	r3, [r7, #8]
 1296 00a6 D318     		adds	r3, r2, r3
 1297 00a8 0133     		adds	r3, r3, #1
 1298 00aa 1800     		movs	r0, r3
 1299 00ac 7A6A     		ldr	r2, [r7, #36]
 1300 00ae 7B68     		ldr	r3, [r7, #4]
 1301 00b0 D318     		adds	r3, r2, r3
 1302 00b2 0133     		adds	r3, r3, #1
 1303 00b4 1900     		movs	r1, r3
 1304 00b6 FFF7FEFF 		bl	pixel
 1305              	.L9:
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (k =0; k < 8; k++) {
 1306              		.loc 1 47 0 discriminator 2
 1307 00ba FB69     		ldr	r3, [r7, #28]
 1308 00bc 0133     		adds	r3, r3, #1
 1309 00be FB61     		str	r3, [r7, #28]
 1310              	.L8:
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (k =0; k < 8; k++) {
 1311              		.loc 1 47 0 is_stmt 0 discriminator 1
 1312 00c0 FB69     		ldr	r3, [r7, #28]
 1313 00c2 072B     		cmp	r3, #7
 1314 00c4 E1DD     		ble	.L10
 1315              	.LBE2:
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** unsigned char byte = s->data[i * width_in_bytes + j];
 1316              		.loc 1 45 0 is_stmt 1 discriminator 2
 1317 00c6 3B6A     		ldr	r3, [r7, #32]
 1318 00c8 0133     		adds	r3, r3, #1
 1319 00ca 3B62     		str	r3, [r7, #32]
 1320              	.L7:
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** unsigned char byte = s->data[i * width_in_bytes + j];
 1321              		.loc 1 45 0 is_stmt 0 discriminator 1
 1322 00cc 3A6A     		ldr	r2, [r7, #32]
 1323 00ce BB69     		ldr	r3, [r7, #24]
 1324 00d0 9A42     		cmp	r2, r3
 1325 00d2 CBDB     		blt	.L11
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (j = 0; j < width_in_bytes; j++) {
 1326              		.loc 1 44 0 is_stmt 1 discriminator 2
 1327 00d4 7B6A     		ldr	r3, [r7, #36]
 1328 00d6 0133     		adds	r3, r3, #1
 1329 00d8 7B62     		str	r3, [r7, #36]
 1330              	.L6:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** for (j = 0; j < width_in_bytes; j++) {
 1331              		.loc 1 44 0 is_stmt 0 discriminator 1
 1332 00da FB68     		ldr	r3, [r7, #12]
 1333 00dc 5B78     		ldrb	r3, [r3, #1]
 1334 00de 1A00     		movs	r2, r3
 1335 00e0 7B6A     		ldr	r3, [r7, #36]
 1336 00e2 9342     		cmp	r3, r2
 1337 00e4 BFDB     		blt	.L12
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
 1338              		.loc 1 52 0 is_stmt 1
 1339 00e6 C046     		nop
 1340 00e8 BD46     		mov	sp, r7
 1341 00ea 0AB0     		add	sp, sp, #40
 1342              		@ sp needed
 1343 00ec 80BD     		pop	{r7, pc}
 1344              		.cfi_endproc
 1345              	.LFE2:
 1347              		.global	ball_geometry
 1348              		.data
 1349              		.align	2
 1352              	ball_geometry:
 1353 0448 0C000000 		.word	12
 1354 044c 04000000 		.word	4
 1355 0450 04000000 		.word	4
 1356 0454 00       		.byte	0
 1357 0455 01       		.byte	1
 1358 0456 00       		.byte	0
 1359 0457 02       		.byte	2
 1360 0458 01       		.byte	1
 1361 0459 00       		.byte	0
 1362 045a 01       		.byte	1
 1363 045b 01       		.byte	1
 1364 045c 01       		.byte	1
 1365 045d 02       		.byte	2
 1366 045e 01       		.byte	1
 1367 045f 03       		.byte	3
 1368 0460 02       		.byte	2
 1369 0461 00       		.byte	0
 1370 0462 02       		.byte	2
 1371 0463 01       		.byte	1
 1372 0464 02       		.byte	2
 1373 0465 02       		.byte	2
 1374 0466 02       		.byte	2
 1375 0467 03       		.byte	3
 1376 0468 03       		.byte	3
 1377 0469 01       		.byte	1
 1378 046a 03       		.byte	3
 1379 046b 02       		.byte	2
 1380 046c 00000000 		.space	16
 1380      00000000 
 1380      00000000 
 1380      00000000 
 1381              		.align	2
 1384              	ball:
 1385 047c 00000000 		.word	ball_geometry
 1386 0480 FDFFFFFF 		.word	-3
 1387 0484 03000000 		.word	3
 1388 0488 01000000 		.word	1
 1389 048c 01000000 		.word	1
 1390 0490 00000000 		.word	draw_object
 1391 0494 00000000 		.word	clear_object
 1392 0498 00000000 		.word	move_object
 1393 049c 00000000 		.word	set_object_speed
 1394              		.section	.rodata
 1395              		.align	2
 1396              	.LC0:
 1397 0000 57656C63 		.ascii	"Welcome \000"
 1397      6F6D6520 
 1397      00
 1398 0009 000000   		.align	2
 1399              	.LC2:
 1400 000c 746F2074 		.ascii	"to the game!\000"
 1400      68652067 
 1400      616D6521 
 1400      00
 1401              		.text
 1402              		.align	1
 1403              		.global	ascii_message
 1404              		.syntax unified
 1405              		.code	16
 1406              		.thumb_func
 1407              		.fpu softvfp
 1409              	ascii_message:
 1410              	.LFB3:
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** GEOMETRY ball_geometry=
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	12, //tot pix
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	4,	//bredd
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	4,	//längd
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	{
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{0,1},{0,2},
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{1,0},{1,1},{1,2},{1,3},
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{2,0},{2,1},{2,2},{2,3},
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		{3,1},{3,2},
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** static OBJECT ball=
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	&ball_geometry,
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	-3,3,
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	1,1,
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	draw_object,
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	clear_object,
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	move_object,
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** };
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void ascii_message(){
 1411              		.loc 1 78 0
 1412              		.cfi_startproc
 1413              		@ args = 0, pretend = 0, frame = 32
 1414              		@ frame_needed = 1, uses_anonymous_args = 0
 1415 00ee B0B5     		push	{r4, r5, r7, lr}
 1416              		.cfi_def_cfa_offset 16
 1417              		.cfi_offset 4, -16
 1418              		.cfi_offset 5, -12
 1419              		.cfi_offset 7, -8
 1420              		.cfi_offset 14, -4
 1421 00f0 88B0     		sub	sp, sp, #32
 1422              		.cfi_def_cfa_offset 48
 1423 00f2 00AF     		add	r7, sp, #0
 1424              		.cfi_def_cfa_register 7
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	char *s;
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	char test1[] = "Welcome ";
 1425              		.loc 1 80 0
 1426 00f4 1024     		movs	r4, #16
 1427 00f6 3B19     		adds	r3, r7, r4
 1428 00f8 194A     		ldr	r2, .L18
 1429 00fa 03CA     		ldmia	r2!, {r0, r1}
 1430 00fc 03C3     		stmia	r3!, {r0, r1}
 1431 00fe 1278     		ldrb	r2, [r2]
 1432 0100 1A70     		strb	r2, [r3]
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	char test2[] = "to the game!";
 1433              		.loc 1 81 0
 1434 0102 3B00     		movs	r3, r7
 1435 0104 174A     		ldr	r2, .L18+4
 1436 0106 23CA     		ldmia	r2!, {r0, r1, r5}
 1437 0108 23C3     		stmia	r3!, {r0, r1, r5}
 1438 010a 1278     		ldrb	r2, [r2]
 1439 010c 1A70     		strb	r2, [r3]
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ascii_gotoxy(1,1);
 1440              		.loc 1 82 0
 1441 010e 0121     		movs	r1, #1
 1442 0110 0120     		movs	r0, #1
 1443 0112 FFF7FEFF 		bl	ascii_gotoxy
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	s = test1;
 1444              		.loc 1 83 0
 1445 0116 3B19     		adds	r3, r7, r4
 1446 0118 FB61     		str	r3, [r7, #28]
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 1447              		.loc 1 84 0
 1448 011a 06E0     		b	.L14
 1449              	.L15:
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		ascii_write_char(*s++); // ascii_write_char
 1450              		.loc 1 85 0
 1451 011c FB69     		ldr	r3, [r7, #28]
 1452 011e 5A1C     		adds	r2, r3, #1
 1453 0120 FA61     		str	r2, [r7, #28]
 1454 0122 1B78     		ldrb	r3, [r3]
 1455 0124 1800     		movs	r0, r3
 1456 0126 FFF7FEFF 		bl	ascii_write_char
 1457              	.L14:
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 1458              		.loc 1 84 0
 1459 012a FB69     		ldr	r3, [r7, #28]
 1460 012c 1B78     		ldrb	r3, [r3]
 1461 012e 002B     		cmp	r3, #0
 1462 0130 F4D1     		bne	.L15
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ascii_gotoxy(1,2);
 1463              		.loc 1 87 0
 1464 0132 0221     		movs	r1, #2
 1465 0134 0120     		movs	r0, #1
 1466 0136 FFF7FEFF 		bl	ascii_gotoxy
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	s = test2;
 1467              		.loc 1 88 0
 1468 013a 3B00     		movs	r3, r7
 1469 013c FB61     		str	r3, [r7, #28]
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 1470              		.loc 1 89 0
 1471 013e 06E0     		b	.L16
 1472              	.L17:
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		ascii_write_char(*s++); // ascii_write_char
 1473              		.loc 1 90 0
 1474 0140 FB69     		ldr	r3, [r7, #28]
 1475 0142 5A1C     		adds	r2, r3, #1
 1476 0144 FA61     		str	r2, [r7, #28]
 1477 0146 1B78     		ldrb	r3, [r3]
 1478 0148 1800     		movs	r0, r3
 1479 014a FFF7FEFF 		bl	ascii_write_char
 1480              	.L16:
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while (*s){
 1481              		.loc 1 89 0
 1482 014e FB69     		ldr	r3, [r7, #28]
 1483 0150 1B78     		ldrb	r3, [r3]
 1484 0152 002B     		cmp	r3, #0
 1485 0154 F4D1     		bne	.L17
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	}
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
 1486              		.loc 1 92 0
 1487 0156 C046     		nop
 1488 0158 BD46     		mov	sp, r7
 1489 015a 08B0     		add	sp, sp, #32
 1490              		@ sp needed
 1491 015c B0BD     		pop	{r4, r5, r7, pc}
 1492              	.L19:
 1493 015e C046     		.align	2
 1494              	.L18:
 1495 0160 00000000 		.word	.LC0
 1496 0164 0C000000 		.word	.LC2
 1497              		.cfi_endproc
 1498              	.LFE3:
 1500              		.align	1
 1501              		.global	init_spel
 1502              		.syntax unified
 1503              		.code	16
 1504              		.thumb_func
 1505              		.fpu softvfp
 1507              	init_spel:
 1508              	.LFB4:
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** void init_spel(){
 1509              		.loc 1 94 0
 1510              		.cfi_startproc
 1511              		@ args = 0, pretend = 0, frame = 0
 1512              		@ frame_needed = 1, uses_anonymous_args = 0
 1513 0168 80B5     		push	{r7, lr}
 1514              		.cfi_def_cfa_offset 8
 1515              		.cfi_offset 7, -8
 1516              		.cfi_offset 14, -4
 1517 016a 00AF     		add	r7, sp, #0
 1518              		.cfi_def_cfa_register 7
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	GPIO_MODER_E = 0x55555555;
 1519              		.loc 1 95 0
 1520 016c 034B     		ldr	r3, .L21
 1521 016e 044A     		ldr	r2, .L21+4
 1522 0170 1A60     		str	r2, [r3]
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	ascii_init();
 1523              		.loc 1 96 0
 1524 0172 FFF7FEFF 		bl	ascii_init
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	//ascii_message();
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** }
 1525              		.loc 1 98 0
 1526 0176 C046     		nop
 1527 0178 BD46     		mov	sp, r7
 1528              		@ sp needed
 1529 017a 80BD     		pop	{r7, pc}
 1530              	.L22:
 1531              		.align	2
 1532              	.L21:
 1533 017c 00100240 		.word	1073876992
 1534 0180 55555555 		.word	1431655765
 1535              		.cfi_endproc
 1536              	.LFE4:
 1538              		.align	1
 1539              		.global	main
 1540              		.syntax unified
 1541              		.code	16
 1542              		.thumb_func
 1543              		.fpu softvfp
 1545              	main:
 1546              	.LFB5:
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** int main(int argc, char **argv)
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** {
 1547              		.loc 1 102 0
 1548              		.cfi_startproc
 1549              		@ args = 0, pretend = 0, frame = 24
 1550              		@ frame_needed = 1, uses_anonymous_args = 0
 1551 0184 80B5     		push	{r7, lr}
 1552              		.cfi_def_cfa_offset 8
 1553              		.cfi_offset 7, -8
 1554              		.cfi_offset 14, -4
 1555 0186 86B0     		sub	sp, sp, #24
 1556              		.cfi_def_cfa_offset 32
 1557 0188 00AF     		add	r7, sp, #0
 1558              		.cfi_def_cfa_register 7
 1559 018a 7860     		str	r0, [r7, #4]
 1560 018c 3960     		str	r1, [r7]
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	init_spel();
 1561              		.loc 1 103 0
 1562 018e FFF7FEFF 		bl	init_spel
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	POBJECT p = &ball;
 1563              		.loc 1 104 0
 1564 0192 174B     		ldr	r3, .L25
 1565 0194 7B61     		str	r3, [r7, #20]
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	sprite* plant;
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	sprite* backGround;
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	sprite* ship;
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	graphic_init();
 1566              		.loc 1 108 0
 1567 0196 FFF7FEFF 		bl	graphic_init
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #ifndef	SIMULATOR
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	graphic_clear_screen();
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** #endif
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	
 113:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	load_sprite(plant, plant_bits, plant_width, plant_height);
 1568              		.loc 1 113 0
 1569 019a 1649     		ldr	r1, .L25+4
 1570 019c 3869     		ldr	r0, [r7, #16]
 1571 019e 0A23     		movs	r3, #10
 1572 01a0 0722     		movs	r2, #7
 1573 01a2 FFF72DFF 		bl	load_sprite
 114:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	load_sprite(ship, ship_bits, ship_width, ship_height);
 1574              		.loc 1 114 0
 1575 01a6 1449     		ldr	r1, .L25+8
 1576 01a8 F868     		ldr	r0, [r7, #12]
 1577 01aa 1423     		movs	r3, #20
 1578 01ac 1422     		movs	r2, #20
 1579 01ae FFF727FF 		bl	load_sprite
 115:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	
 116:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //	plant->set_speed(plant, 5, 10); //assa
 117:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	p->set_speed(p, 12, 20);
 1580              		.loc 1 117 0
 1581 01b2 7B69     		ldr	r3, [r7, #20]
 1582 01b4 1B6A     		ldr	r3, [r3, #32]
 1583 01b6 7869     		ldr	r0, [r7, #20]
 1584 01b8 1422     		movs	r2, #20
 1585 01ba 0C21     		movs	r1, #12
 1586 01bc 9847     		blx	r3
 1587              	.LVL0:
 1588              	.L24:
 118:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 	while(1){
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		clear_backBuffer();
 1589              		.loc 1 119 0 discriminator 1
 1590 01be FFF7FEFF 		bl	clear_backBuffer
 120:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		p->move(p);
 1591              		.loc 1 120 0 discriminator 1
 1592 01c2 7B69     		ldr	r3, [r7, #20]
 1593 01c4 DB69     		ldr	r3, [r3, #28]
 1594 01c6 7A69     		ldr	r2, [r7, #20]
 1595 01c8 1000     		movs	r0, r2
 1596 01ca 9847     		blx	r3
 1597              	.LVL1:
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		draw_sprite(plant, 50, 50, 1);
 1598              		.loc 1 121 0 discriminator 1
 1599 01cc 3869     		ldr	r0, [r7, #16]
 1600 01ce 0123     		movs	r3, #1
 1601 01d0 3222     		movs	r2, #50
 1602 01d2 3221     		movs	r1, #50
 1603 01d4 FFF7FEFF 		bl	draw_sprite
 122:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		draw_sprite(ship, 40, 20, 1);
 1604              		.loc 1 122 0 discriminator 1
 1605 01d8 F868     		ldr	r0, [r7, #12]
 1606 01da 0123     		movs	r3, #1
 1607 01dc 1422     		movs	r2, #20
 1608 01de 2821     		movs	r1, #40
 1609 01e0 FFF7FEFF 		bl	draw_sprite
 123:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** //		plant->move(plant);
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		graphic_draw_screen();
 1610              		.loc 1 124 0 discriminator 1
 1611 01e4 FFF7FEFF 		bl	graphic_draw_screen
 125:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		//delay_milli(40); //25 fps
 126:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		graphic_clear_screen();
 1612              		.loc 1 126 0 discriminator 1
 1613 01e8 FFF7FEFF 		bl	graphic_clear_screen
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\main.c **** 		p->move(p);
 1614              		.loc 1 119 0 discriminator 1
 1615 01ec E7E7     		b	.L24
 1616              	.L26:
 1617 01ee C046     		.align	2
 1618              	.L25:
 1619 01f0 7C040000 		.word	ball
 1620 01f4 00000000 		.word	plant_bits
 1621 01f8 0C040000 		.word	ship_bits
 1622              		.cfi_endproc
 1623              	.LFE5:
 1625              	.Letext0:
 1626              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_startup.h"
 1627              		.file 3 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/plant.xbm"
 1628              		.file 4 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/backGround.xbm"
 1629              		.file 5 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/ship.xbm"
