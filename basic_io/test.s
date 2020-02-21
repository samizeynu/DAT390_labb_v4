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
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	app_init
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	app_init:
  23              	.LFB0:
  24              		.file 1 "Z:/DATlaborationer/basic_io/startup.c"
   1:Z:/DATlaborationer/basic_io\startup.c **** /*
   2:Z:/DATlaborationer/basic_io\startup.c ****  * 	startup.c
   3:Z:/DATlaborationer/basic_io\startup.c ****  *
   4:Z:/DATlaborationer/basic_io\startup.c ****  */
   5:Z:/DATlaborationer/basic_io\startup.c ****  
   6:Z:/DATlaborationer/basic_io\startup.c **** 
   7:Z:/DATlaborationer/basic_io\startup.c **** #include "startup.h"
   8:Z:/DATlaborationer/basic_io\startup.c **** 
   9:Z:/DATlaborationer/basic_io\startup.c **** void app_init(void)
  10:Z:/DATlaborationer/basic_io\startup.c **** {
  25              		.loc 1 10 1
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
  11:Z:/DATlaborationer/basic_io\startup.c **** #ifdef USBDM
  12:Z:/DATlaborationer/basic_io\startup.c **** 	*((unsigned long *) 0x40023830) = 0x18; //starta clockor port E, D
  35              		.loc 1 12 2
  36 0004 0D4B     		ldr	r3, .L2
  37              		.loc 1 12 34
  38 0006 1822     		movs	r2, #24
  39 0008 1A60     		str	r2, [r3]
  13:Z:/DATlaborationer/basic_io\startup.c **** 	//__asm volatile ( " LDR R0,=0x8000209\n BLX R0 \n //initiera PLL");
  14:Z:/DATlaborationer/basic_io\startup.c **** #endif
  15:Z:/DATlaborationer/basic_io\startup.c **** 
  16:Z:/DATlaborationer/basic_io\startup.c **** 	GPIO_MODER_D &= 0;
  40              		.loc 1 16 15
  41 000a 0D4B     		ldr	r3, .L2+4
  42 000c 1B68     		ldr	r3, [r3]
  43 000e 0C4B     		ldr	r3, .L2+4
  44 0010 0022     		movs	r2, #0
  45 0012 1A60     		str	r2, [r3]
  17:Z:/DATlaborationer/basic_io\startup.c **** 	GPIO_MODER_D |= 0x55005555; //pin 1 - 8 display, pin 9 - 15 keyboard ( b0 - b3 input, b4 - b7 outp
  46              		.loc 1 17 15
  47 0014 0A4B     		ldr	r3, .L2+4
  48 0016 1A68     		ldr	r2, [r3]
  49 0018 094B     		ldr	r3, .L2+4
  50 001a 0A49     		ldr	r1, .L2+8
  51 001c 0A43     		orrs	r2, r1
  52 001e 1A60     		str	r2, [r3]
  18:Z:/DATlaborationer/basic_io\startup.c **** 	
  19:Z:/DATlaborationer/basic_io\startup.c **** 	GPIO_OTYPER_D |= 0x0000; //push-pull output type
  53              		.loc 1 19 16
  54 0020 094A     		ldr	r2, .L2+12
  55 0022 094B     		ldr	r3, .L2+12
  56 0024 1288     		ldrh	r2, [r2]
  57 0026 1A80     		strh	r2, [r3]
  20:Z:/DATlaborationer/basic_io\startup.c **** 	
  21:Z:/DATlaborationer/basic_io\startup.c **** 	GPIO_PUPDR_D |= 0x00AA0000; //pull-down input
  58              		.loc 1 21 15
  59 0028 084B     		ldr	r3, .L2+16
  60 002a 1A68     		ldr	r2, [r3]
  61 002c 074B     		ldr	r3, .L2+16
  62 002e AA21     		movs	r1, #170
  63 0030 0904     		lsls	r1, r1, #16
  64 0032 0A43     		orrs	r2, r1
  65 0034 1A60     		str	r2, [r3]
  22:Z:/DATlaborationer/basic_io\startup.c **** }
  66              		.loc 1 22 1
  67 0036 C046     		nop
  68 0038 BD46     		mov	sp, r7
  69              		@ sp needed
  70 003a 80BD     		pop	{r7, pc}
  71              	.L3:
  72              		.align	2
  73              	.L2:
  74 003c 30380240 		.word	1073887280
  75 0040 000C0240 		.word	1073875968
  76 0044 55550055 		.word	1426085205
  77 0048 040C0240 		.word	1073875972
  78 004c 0C0C0240 		.word	1073875980
  79              		.cfi_endproc
  80              	.LFE0:
  82              		.align	1
  83              		.global	out7seg
  84              		.syntax unified
  85              		.code	16
  86              		.thumb_func
  87              		.fpu softvfp
  89              	out7seg:
  90              	.LFB1:
  23:Z:/DATlaborationer/basic_io\startup.c **** 
  24:Z:/DATlaborationer/basic_io\startup.c **** void out7seg (unsigned char c){
  91              		.loc 1 24 31
  92              		.cfi_startproc
  93              		@ args = 0, pretend = 0, frame = 8
  94              		@ frame_needed = 1, uses_anonymous_args = 0
  95 0050 80B5     		push	{r7, lr}
  96              		.cfi_def_cfa_offset 8
  97              		.cfi_offset 7, -8
  98              		.cfi_offset 14, -4
  99 0052 82B0     		sub	sp, sp, #8
 100              		.cfi_def_cfa_offset 16
 101 0054 00AF     		add	r7, sp, #0
 102              		.cfi_def_cfa_register 7
 103 0056 0200     		movs	r2, r0
 104 0058 FB1D     		adds	r3, r7, #7
 105 005a 1A70     		strb	r2, [r3]
  25:Z:/DATlaborationer/basic_io\startup.c **** 	switch(c){
 106              		.loc 1 25 2
 107 005c FB1D     		adds	r3, r7, #7
 108 005e 1B78     		ldrb	r3, [r3]
 109 0060 0F2B     		cmp	r3, #15
 110 0062 44D8     		bhi	.L5
 111 0064 9A00     		lsls	r2, r3, #2
 112 0066 264B     		ldr	r3, .L24
 113 0068 D318     		adds	r3, r2, r3
 114 006a 1B68     		ldr	r3, [r3]
 115 006c 9F46     		mov	pc, r3
 116              		.section	.rodata
 117              		.align	2
 118              	.L7:
 119 0000 6E000000 		.word	.L22
 120 0004 76000000 		.word	.L21
 121 0008 7E000000 		.word	.L20
 122 000c 86000000 		.word	.L19
 123 0010 8E000000 		.word	.L18
 124 0014 96000000 		.word	.L17
 125 0018 9E000000 		.word	.L16
 126 001c A6000000 		.word	.L15
 127 0020 AE000000 		.word	.L14
 128 0024 B6000000 		.word	.L13
 129 0028 BE000000 		.word	.L12
 130 002c C6000000 		.word	.L11
 131 0030 CE000000 		.word	.L10
 132 0034 D6000000 		.word	.L9
 133 0038 DE000000 		.word	.L8
 134 003c E6000000 		.word	.L6
 135              		.text
 136              	.L22:
  26:Z:/DATlaborationer/basic_io\startup.c **** 		case 0: GPIO_ODR_D_LOW = 0x3F; break;
 137              		.loc 1 26 11
 138 006e 254B     		ldr	r3, .L24+4
 139              		.loc 1 26 26
 140 0070 3F22     		movs	r2, #63
 141 0072 1A70     		strb	r2, [r3]
 142              		.loc 1 26 3
 143 0074 3FE0     		b	.L23
 144              	.L21:
  27:Z:/DATlaborationer/basic_io\startup.c **** 		case 1: GPIO_ODR_D_LOW = 0x06; break;
 145              		.loc 1 27 11
 146 0076 234B     		ldr	r3, .L24+4
 147              		.loc 1 27 26
 148 0078 0622     		movs	r2, #6
 149 007a 1A70     		strb	r2, [r3]
 150              		.loc 1 27 3
 151 007c 3BE0     		b	.L23
 152              	.L20:
  28:Z:/DATlaborationer/basic_io\startup.c **** 		case 2: GPIO_ODR_D_LOW = 0x5B; break;
 153              		.loc 1 28 11
 154 007e 214B     		ldr	r3, .L24+4
 155              		.loc 1 28 26
 156 0080 5B22     		movs	r2, #91
 157 0082 1A70     		strb	r2, [r3]
 158              		.loc 1 28 3
 159 0084 37E0     		b	.L23
 160              	.L19:
  29:Z:/DATlaborationer/basic_io\startup.c **** 		case 3: GPIO_ODR_D_LOW = 0x4F; break;
 161              		.loc 1 29 11
 162 0086 1F4B     		ldr	r3, .L24+4
 163              		.loc 1 29 26
 164 0088 4F22     		movs	r2, #79
 165 008a 1A70     		strb	r2, [r3]
 166              		.loc 1 29 3
 167 008c 33E0     		b	.L23
 168              	.L18:
  30:Z:/DATlaborationer/basic_io\startup.c **** 		case 4: GPIO_ODR_D_LOW = 0x66; break;
 169              		.loc 1 30 11
 170 008e 1D4B     		ldr	r3, .L24+4
 171              		.loc 1 30 26
 172 0090 6622     		movs	r2, #102
 173 0092 1A70     		strb	r2, [r3]
 174              		.loc 1 30 3
 175 0094 2FE0     		b	.L23
 176              	.L17:
  31:Z:/DATlaborationer/basic_io\startup.c **** 		case 5: GPIO_ODR_D_LOW = 0x6D; break;
 177              		.loc 1 31 11
 178 0096 1B4B     		ldr	r3, .L24+4
 179              		.loc 1 31 26
 180 0098 6D22     		movs	r2, #109
 181 009a 1A70     		strb	r2, [r3]
 182              		.loc 1 31 3
 183 009c 2BE0     		b	.L23
 184              	.L16:
  32:Z:/DATlaborationer/basic_io\startup.c **** 		case 6: GPIO_ODR_D_LOW = 0x7D; break;
 185              		.loc 1 32 11
 186 009e 194B     		ldr	r3, .L24+4
 187              		.loc 1 32 26
 188 00a0 7D22     		movs	r2, #125
 189 00a2 1A70     		strb	r2, [r3]
 190              		.loc 1 32 3
 191 00a4 27E0     		b	.L23
 192              	.L15:
  33:Z:/DATlaborationer/basic_io\startup.c **** 		case 7: GPIO_ODR_D_LOW = 0x07; break;
 193              		.loc 1 33 11
 194 00a6 174B     		ldr	r3, .L24+4
 195              		.loc 1 33 26
 196 00a8 0722     		movs	r2, #7
 197 00aa 1A70     		strb	r2, [r3]
 198              		.loc 1 33 3
 199 00ac 23E0     		b	.L23
 200              	.L14:
  34:Z:/DATlaborationer/basic_io\startup.c **** 		case 8: GPIO_ODR_D_LOW = 0x7F; break;
 201              		.loc 1 34 11
 202 00ae 154B     		ldr	r3, .L24+4
 203              		.loc 1 34 26
 204 00b0 7F22     		movs	r2, #127
 205 00b2 1A70     		strb	r2, [r3]
 206              		.loc 1 34 3
 207 00b4 1FE0     		b	.L23
 208              	.L13:
  35:Z:/DATlaborationer/basic_io\startup.c **** 		case 9: GPIO_ODR_D_LOW = 0x6F; break;
 209              		.loc 1 35 11
 210 00b6 134B     		ldr	r3, .L24+4
 211              		.loc 1 35 26
 212 00b8 6F22     		movs	r2, #111
 213 00ba 1A70     		strb	r2, [r3]
 214              		.loc 1 35 3
 215 00bc 1BE0     		b	.L23
 216              	.L12:
  36:Z:/DATlaborationer/basic_io\startup.c **** 		case 0xA: GPIO_ODR_D_LOW = 0x77; break;
 217              		.loc 1 36 13
 218 00be 114B     		ldr	r3, .L24+4
 219              		.loc 1 36 28
 220 00c0 7722     		movs	r2, #119
 221 00c2 1A70     		strb	r2, [r3]
 222              		.loc 1 36 3
 223 00c4 17E0     		b	.L23
 224              	.L11:
  37:Z:/DATlaborationer/basic_io\startup.c **** 		case 0xB: GPIO_ODR_D_LOW = 0x7C; break;
 225              		.loc 1 37 13
 226 00c6 0F4B     		ldr	r3, .L24+4
 227              		.loc 1 37 28
 228 00c8 7C22     		movs	r2, #124
 229 00ca 1A70     		strb	r2, [r3]
 230              		.loc 1 37 3
 231 00cc 13E0     		b	.L23
 232              	.L10:
  38:Z:/DATlaborationer/basic_io\startup.c **** 		case 0xC: GPIO_ODR_D_LOW = 0x39; break;
 233              		.loc 1 38 13
 234 00ce 0D4B     		ldr	r3, .L24+4
 235              		.loc 1 38 28
 236 00d0 3922     		movs	r2, #57
 237 00d2 1A70     		strb	r2, [r3]
 238              		.loc 1 38 3
 239 00d4 0FE0     		b	.L23
 240              	.L9:
  39:Z:/DATlaborationer/basic_io\startup.c **** 		case 0xD: GPIO_ODR_D_LOW = 0x3F; break;
 241              		.loc 1 39 13
 242 00d6 0B4B     		ldr	r3, .L24+4
 243              		.loc 1 39 28
 244 00d8 3F22     		movs	r2, #63
 245 00da 1A70     		strb	r2, [r3]
 246              		.loc 1 39 3
 247 00dc 0BE0     		b	.L23
 248              	.L8:
  40:Z:/DATlaborationer/basic_io\startup.c **** 		case 0xE: GPIO_ODR_D_LOW = 0x79; break;
 249              		.loc 1 40 13
 250 00de 094B     		ldr	r3, .L24+4
 251              		.loc 1 40 28
 252 00e0 7922     		movs	r2, #121
 253 00e2 1A70     		strb	r2, [r3]
 254              		.loc 1 40 3
 255 00e4 07E0     		b	.L23
 256              	.L6:
  41:Z:/DATlaborationer/basic_io\startup.c **** 		case 0xF: GPIO_ODR_D_LOW = 0x71; break;
 257              		.loc 1 41 13
 258 00e6 074B     		ldr	r3, .L24+4
 259              		.loc 1 41 28
 260 00e8 7122     		movs	r2, #113
 261 00ea 1A70     		strb	r2, [r3]
 262              		.loc 1 41 3
 263 00ec 03E0     		b	.L23
 264              	.L5:
  42:Z:/DATlaborationer/basic_io\startup.c **** 		
  43:Z:/DATlaborationer/basic_io\startup.c **** 		default: GPIO_ODR_D_LOW = 0x00; break;
 265              		.loc 1 43 12
 266 00ee 054B     		ldr	r3, .L24+4
 267              		.loc 1 43 27
 268 00f0 0022     		movs	r2, #0
 269 00f2 1A70     		strb	r2, [r3]
 270              		.loc 1 43 3
 271 00f4 C046     		nop
 272              	.L23:
  44:Z:/DATlaborationer/basic_io\startup.c **** 	}
  45:Z:/DATlaborationer/basic_io\startup.c **** }
 273              		.loc 1 45 1
 274 00f6 C046     		nop
 275 00f8 BD46     		mov	sp, r7
 276 00fa 02B0     		add	sp, sp, #8
 277              		@ sp needed
 278 00fc 80BD     		pop	{r7, pc}
 279              	.L25:
 280 00fe C046     		.align	2
 281              	.L24:
 282 0100 00000000 		.word	.L7
 283 0104 140C0240 		.word	1073875988
 284              		.cfi_endproc
 285              	.LFE1:
 287              		.align	1
 288              		.global	keybActivate
 289              		.syntax unified
 290              		.code	16
 291              		.thumb_func
 292              		.fpu softvfp
 294              	keybActivate:
 295              	.LFB2:
  46:Z:/DATlaborationer/basic_io\startup.c **** 
  47:Z:/DATlaborationer/basic_io\startup.c **** void keybActivate(unsigned int row){
 296              		.loc 1 47 36
 297              		.cfi_startproc
 298              		@ args = 0, pretend = 0, frame = 8
 299              		@ frame_needed = 1, uses_anonymous_args = 0
 300 0108 80B5     		push	{r7, lr}
 301              		.cfi_def_cfa_offset 8
 302              		.cfi_offset 7, -8
 303              		.cfi_offset 14, -4
 304 010a 82B0     		sub	sp, sp, #8
 305              		.cfi_def_cfa_offset 16
 306 010c 00AF     		add	r7, sp, #0
 307              		.cfi_def_cfa_register 7
 308 010e 7860     		str	r0, [r7, #4]
 309 0110 7B68     		ldr	r3, [r7, #4]
 310 0112 042B     		cmp	r3, #4
 311 0114 19D8     		bhi	.L34
 312 0116 7B68     		ldr	r3, [r7, #4]
 313 0118 9A00     		lsls	r2, r3, #2
 314 011a 0E4B     		ldr	r3, .L35
 315 011c D318     		adds	r3, r2, r3
 316 011e 1B68     		ldr	r3, [r3]
 317 0120 9F46     		mov	pc, r3
 318              		.section	.rodata
 319              		.align	2
 320              	.L29:
 321 0040 42010000 		.word	.L33
 322 0044 22010000 		.word	.L32
 323 0048 2A010000 		.word	.L31
 324 004c 32010000 		.word	.L30
 325 0050 3A010000 		.word	.L28
 326              		.text
 327              	.L32:
  48:Z:/DATlaborationer/basic_io\startup.c **** 	switch(row){
  49:Z:/DATlaborationer/basic_io\startup.c **** 		case 1: GPIO_ODR_D_HIGH = 0x10; break;//eller GPIO_ODR_D_HIGH = (1<<(row+3));
 328              		.loc 1 49 11
 329 0122 0D4B     		ldr	r3, .L35+4
 330              		.loc 1 49 27
 331 0124 1022     		movs	r2, #16
 332 0126 1A70     		strb	r2, [r3]
 333              		.loc 1 49 3
 334 0128 0FE0     		b	.L27
 335              	.L31:
  50:Z:/DATlaborationer/basic_io\startup.c **** 		case 2: GPIO_ODR_D_HIGH = 0x20; break;
 336              		.loc 1 50 11
 337 012a 0B4B     		ldr	r3, .L35+4
 338              		.loc 1 50 27
 339 012c 2022     		movs	r2, #32
 340 012e 1A70     		strb	r2, [r3]
 341              		.loc 1 50 3
 342 0130 0BE0     		b	.L27
 343              	.L30:
  51:Z:/DATlaborationer/basic_io\startup.c **** 		case 3: GPIO_ODR_D_HIGH = 0x40; break;
 344              		.loc 1 51 11
 345 0132 094B     		ldr	r3, .L35+4
 346              		.loc 1 51 27
 347 0134 4022     		movs	r2, #64
 348 0136 1A70     		strb	r2, [r3]
 349              		.loc 1 51 3
 350 0138 07E0     		b	.L27
 351              	.L28:
  52:Z:/DATlaborationer/basic_io\startup.c **** 		case 4: GPIO_ODR_D_HIGH = 0x80; break;
 352              		.loc 1 52 11
 353 013a 074B     		ldr	r3, .L35+4
 354              		.loc 1 52 27
 355 013c 8022     		movs	r2, #128
 356 013e 1A70     		strb	r2, [r3]
 357              		.loc 1 52 3
 358 0140 03E0     		b	.L27
 359              	.L33:
  53:Z:/DATlaborationer/basic_io\startup.c **** 		case 0: GPIO_ODR_D_HIGH = 0x00; break;
 360              		.loc 1 53 11
 361 0142 054B     		ldr	r3, .L35+4
 362              		.loc 1 53 27
 363 0144 0022     		movs	r2, #0
 364 0146 1A70     		strb	r2, [r3]
 365              		.loc 1 53 3
 366 0148 C046     		nop
 367              	.L27:
 368              	.L34:
  54:Z:/DATlaborationer/basic_io\startup.c **** 	}
  55:Z:/DATlaborationer/basic_io\startup.c **** }
 369              		.loc 1 55 1
 370 014a C046     		nop
 371 014c BD46     		mov	sp, r7
 372 014e 02B0     		add	sp, sp, #8
 373              		@ sp needed
 374 0150 80BD     		pop	{r7, pc}
 375              	.L36:
 376 0152 C046     		.align	2
 377              	.L35:
 378 0154 40000000 		.word	.L29
 379 0158 150C0240 		.word	1073875989
 380              		.cfi_endproc
 381              	.LFE2:
 383              		.align	1
 384              		.global	keybGetCol
 385              		.syntax unified
 386              		.code	16
 387              		.thumb_func
 388              		.fpu softvfp
 390              	keybGetCol:
 391              	.LFB3:
  56:Z:/DATlaborationer/basic_io\startup.c **** 
  57:Z:/DATlaborationer/basic_io\startup.c **** int keybGetCol(void){
 392              		.loc 1 57 21
 393              		.cfi_startproc
 394              		@ args = 0, pretend = 0, frame = 8
 395              		@ frame_needed = 1, uses_anonymous_args = 0
 396 015c 80B5     		push	{r7, lr}
 397              		.cfi_def_cfa_offset 8
 398              		.cfi_offset 7, -8
 399              		.cfi_offset 14, -4
 400 015e 82B0     		sub	sp, sp, #8
 401              		.cfi_def_cfa_offset 16
 402 0160 00AF     		add	r7, sp, #0
 403              		.cfi_def_cfa_register 7
  58:Z:/DATlaborationer/basic_io\startup.c **** 	unsigned char c = GPIO_IDR_D_HIGH;
 404              		.loc 1 58 20
 405 0162 124A     		ldr	r2, .L43
 406              		.loc 1 58 16
 407 0164 FB1D     		adds	r3, r7, #7
 408 0166 1278     		ldrb	r2, [r2]
 409 0168 1A70     		strb	r2, [r3]
  59:Z:/DATlaborationer/basic_io\startup.c **** 	if(c & 0x8) return 4;
 410              		.loc 1 59 7
 411 016a FB1D     		adds	r3, r7, #7
 412 016c 1B78     		ldrb	r3, [r3]
 413 016e 0822     		movs	r2, #8
 414 0170 1340     		ands	r3, r2
 415              		.loc 1 59 4
 416 0172 01D0     		beq	.L38
 417              		.loc 1 59 21 discriminator 1
 418 0174 0423     		movs	r3, #4
 419 0176 15E0     		b	.L39
 420              	.L38:
  60:Z:/DATlaborationer/basic_io\startup.c **** 	if(c & 0x4) return 3;
 421              		.loc 1 60 7
 422 0178 FB1D     		adds	r3, r7, #7
 423 017a 1B78     		ldrb	r3, [r3]
 424 017c 0422     		movs	r2, #4
 425 017e 1340     		ands	r3, r2
 426              		.loc 1 60 4
 427 0180 01D0     		beq	.L40
 428              		.loc 1 60 21 discriminator 1
 429 0182 0323     		movs	r3, #3
 430 0184 0EE0     		b	.L39
 431              	.L40:
  61:Z:/DATlaborationer/basic_io\startup.c **** 	if(c & 0x2) return 2;
 432              		.loc 1 61 7
 433 0186 FB1D     		adds	r3, r7, #7
 434 0188 1B78     		ldrb	r3, [r3]
 435 018a 0222     		movs	r2, #2
 436 018c 1340     		ands	r3, r2
 437              		.loc 1 61 4
 438 018e 01D0     		beq	.L41
 439              		.loc 1 61 21 discriminator 1
 440 0190 0223     		movs	r3, #2
 441 0192 07E0     		b	.L39
 442              	.L41:
  62:Z:/DATlaborationer/basic_io\startup.c **** 	if(c & 0x1) return 1;
 443              		.loc 1 62 7
 444 0194 FB1D     		adds	r3, r7, #7
 445 0196 1B78     		ldrb	r3, [r3]
 446 0198 0122     		movs	r2, #1
 447 019a 1340     		ands	r3, r2
 448              		.loc 1 62 4
 449 019c 01D0     		beq	.L42
 450              		.loc 1 62 21 discriminator 1
 451 019e 0123     		movs	r3, #1
 452 01a0 00E0     		b	.L39
 453              	.L42:
  63:Z:/DATlaborationer/basic_io\startup.c **** 	return 0;
 454              		.loc 1 63 9
 455 01a2 0023     		movs	r3, #0
 456              	.L39:
  64:Z:/DATlaborationer/basic_io\startup.c **** }
 457              		.loc 1 64 1
 458 01a4 1800     		movs	r0, r3
 459 01a6 BD46     		mov	sp, r7
 460 01a8 02B0     		add	sp, sp, #8
 461              		@ sp needed
 462 01aa 80BD     		pop	{r7, pc}
 463              	.L44:
 464              		.align	2
 465              	.L43:
 466 01ac 110C0240 		.word	1073875985
 467              		.cfi_endproc
 468              	.LFE3:
 470              		.section	.rodata
 471              		.align	2
 472              	.LC2:
 473 0054 0102030A 		.ascii	"\001\002\003\012\004\005\006\013\007\010\011\014\016"
 473      0405060B 
 473      0708090C 
 473      0E
 474 0061 000F0D   		.ascii	"\000\017\015"
 475              		.text
 476              		.align	1
 477              		.global	keyb
 478              		.syntax unified
 479              		.code	16
 480              		.thumb_func
 481              		.fpu softvfp
 483              	keyb:
 484              	.LFB4:
  65:Z:/DATlaborationer/basic_io\startup.c **** 
  66:Z:/DATlaborationer/basic_io\startup.c **** unsigned char keyb(void){
 485              		.loc 1 66 25
 486              		.cfi_startproc
 487              		@ args = 0, pretend = 0, frame = 24
 488              		@ frame_needed = 1, uses_anonymous_args = 0
 489 01b0 90B5     		push	{r4, r7, lr}
 490              		.cfi_def_cfa_offset 12
 491              		.cfi_offset 4, -12
 492              		.cfi_offset 7, -8
 493              		.cfi_offset 14, -4
 494 01b2 87B0     		sub	sp, sp, #28
 495              		.cfi_def_cfa_offset 40
 496 01b4 00AF     		add	r7, sp, #0
 497              		.cfi_def_cfa_register 7
  67:Z:/DATlaborationer/basic_io\startup.c **** 	int row, column;
  68:Z:/DATlaborationer/basic_io\startup.c **** 	unsigned char key[] = {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 498              		.loc 1 68 16
 499 01b6 3B00     		movs	r3, r7
 500 01b8 164A     		ldr	r2, .L51
 501 01ba 13CA     		ldmia	r2!, {r0, r1, r4}
 502 01bc 13C3     		stmia	r3!, {r0, r1, r4}
 503 01be 1268     		ldr	r2, [r2]
 504 01c0 1A60     		str	r2, [r3]
  69:Z:/DATlaborationer/basic_io\startup.c **** 	for(row = 1; row <=4; row++){
 505              		.loc 1 69 10
 506 01c2 0123     		movs	r3, #1
 507 01c4 7B61     		str	r3, [r7, #20]
 508              		.loc 1 69 2
 509 01c6 19E0     		b	.L46
 510              	.L49:
  70:Z:/DATlaborationer/basic_io\startup.c **** 		keybActivate(row);
 511              		.loc 1 70 3
 512 01c8 7B69     		ldr	r3, [r7, #20]
 513 01ca 1800     		movs	r0, r3
 514 01cc FFF7FEFF 		bl	keybActivate
  71:Z:/DATlaborationer/basic_io\startup.c **** 		if( (column = keybGetCol()) )
 515              		.loc 1 71 17
 516 01d0 FFF7FEFF 		bl	keybGetCol
 517 01d4 0300     		movs	r3, r0
 518 01d6 3B61     		str	r3, [r7, #16]
 519              		.loc 1 71 5
 520 01d8 3B69     		ldr	r3, [r7, #16]
 521 01da 002B     		cmp	r3, #0
 522 01dc 0BD0     		beq	.L47
  72:Z:/DATlaborationer/basic_io\startup.c **** 		{
  73:Z:/DATlaborationer/basic_io\startup.c **** 			keybActivate(0); //To clear the register??
 523              		.loc 1 73 4
 524 01de 0020     		movs	r0, #0
 525 01e0 FFF7FEFF 		bl	keybActivate
  74:Z:/DATlaborationer/basic_io\startup.c **** 			return key[4*(row-1) + (column-1)];
 526              		.loc 1 74 21
 527 01e4 7B69     		ldr	r3, [r7, #20]
 528 01e6 013B     		subs	r3, r3, #1
 529              		.loc 1 74 16
 530 01e8 9A00     		lsls	r2, r3, #2
 531              		.loc 1 74 34
 532 01ea 3B69     		ldr	r3, [r7, #16]
 533 01ec 013B     		subs	r3, r3, #1
 534              		.loc 1 74 25
 535 01ee D318     		adds	r3, r2, r3
 536              		.loc 1 74 14
 537 01f0 3A00     		movs	r2, r7
 538 01f2 D35C     		ldrb	r3, [r2, r3]
 539 01f4 09E0     		b	.L50
 540              	.L47:
  69:Z:/DATlaborationer/basic_io\startup.c **** 		keybActivate(row);
 541              		.loc 1 69 27 discriminator 2
 542 01f6 7B69     		ldr	r3, [r7, #20]
 543 01f8 0133     		adds	r3, r3, #1
 544 01fa 7B61     		str	r3, [r7, #20]
 545              	.L46:
  69:Z:/DATlaborationer/basic_io\startup.c **** 		keybActivate(row);
 546              		.loc 1 69 2 discriminator 1
 547 01fc 7B69     		ldr	r3, [r7, #20]
 548 01fe 042B     		cmp	r3, #4
 549 0200 E2DD     		ble	.L49
  75:Z:/DATlaborationer/basic_io\startup.c **** 		}
  76:Z:/DATlaborationer/basic_io\startup.c **** 	}
  77:Z:/DATlaborationer/basic_io\startup.c **** 	keybActivate(0);
 550              		.loc 1 77 2
 551 0202 0020     		movs	r0, #0
 552 0204 FFF7FEFF 		bl	keybActivate
  78:Z:/DATlaborationer/basic_io\startup.c **** 	return 0xFF;
 553              		.loc 1 78 9
 554 0208 FF23     		movs	r3, #255
 555              	.L50:
  79:Z:/DATlaborationer/basic_io\startup.c **** }
 556              		.loc 1 79 1 discriminator 1
 557 020a 1800     		movs	r0, r3
 558 020c BD46     		mov	sp, r7
 559 020e 07B0     		add	sp, sp, #28
 560              		@ sp needed
 561 0210 90BD     		pop	{r4, r7, pc}
 562              	.L52:
 563 0212 C046     		.align	2
 564              	.L51:
 565 0214 54000000 		.word	.LC2
 566              		.cfi_endproc
 567              	.LFE4:
 569              	.Letext0:
