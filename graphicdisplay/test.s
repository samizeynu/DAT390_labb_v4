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
  11              		.file	"graphic.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	graphic_ctrl_bit_set
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	graphic_ctrl_bit_set:
  23              	.LFB0:
  24              		.file 1 "graphic.c"
   1:graphic.c     **** /*
   2:graphic.c     ****  * 	graphic.c
   3:graphic.c     ****  *
   4:graphic.c     ****  */
   5:graphic.c     **** 
   6:graphic.c     **** #include "startup.h"
   7:graphic.c     **** 
   8:graphic.c     **** void graphic_ctrl_bit_set(uint8_t x){
  25              		.loc 1 8 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 8
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 82B0     		sub	sp, sp, #8
  34              		.cfi_def_cfa_offset 16
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 0200     		movs	r2, r0
  38 0008 FB1D     		adds	r3, r7, #7
  39 000a 1A70     		strb	r2, [r3]
   9:graphic.c     **** 	GPIO_ODR_E_LOW |= (~B_SELECT & x); 			//Dubbelkolla sedan
  40              		.loc 1 9 0
  41 000c 094B     		ldr	r3, .L2
  42 000e 1B78     		ldrb	r3, [r3]
  43 0010 DBB2     		uxtb	r3, r3
  44 0012 5AB2     		sxtb	r2, r3
  45 0014 FB1D     		adds	r3, r7, #7
  46 0016 1B78     		ldrb	r3, [r3]
  47 0018 5BB2     		sxtb	r3, r3
  48 001a 0421     		movs	r1, #4
  49 001c 8B43     		bics	r3, r1
  50 001e 5BB2     		sxtb	r3, r3
  51 0020 1343     		orrs	r3, r2
  52 0022 5AB2     		sxtb	r2, r3
  53 0024 034B     		ldr	r3, .L2
  54 0026 D2B2     		uxtb	r2, r2
  55 0028 1A70     		strb	r2, [r3]
  10:graphic.c     **** }
  56              		.loc 1 10 0
  57 002a C046     		nop
  58 002c BD46     		mov	sp, r7
  59 002e 02B0     		add	sp, sp, #8
  60              		@ sp needed
  61 0030 80BD     		pop	{r7, pc}
  62              	.L3:
  63 0032 C046     		.align	2
  64              	.L2:
  65 0034 14100240 		.word	1073877012
  66              		.cfi_endproc
  67              	.LFE0:
  69              		.align	1
  70              		.global	graphic_ctrl_bit_clear
  71              		.syntax unified
  72              		.code	16
  73              		.thumb_func
  74              		.fpu softvfp
  76              	graphic_ctrl_bit_clear:
  77              	.LFB1:
  11:graphic.c     **** 
  12:graphic.c     **** void graphic_ctrl_bit_clear(uint8_t x){
  78              		.loc 1 12 0
  79              		.cfi_startproc
  80              		@ args = 0, pretend = 0, frame = 8
  81              		@ frame_needed = 1, uses_anonymous_args = 0
  82 0038 80B5     		push	{r7, lr}
  83              		.cfi_def_cfa_offset 8
  84              		.cfi_offset 7, -8
  85              		.cfi_offset 14, -4
  86 003a 82B0     		sub	sp, sp, #8
  87              		.cfi_def_cfa_offset 16
  88 003c 00AF     		add	r7, sp, #0
  89              		.cfi_def_cfa_register 7
  90 003e 0200     		movs	r2, r0
  91 0040 FB1D     		adds	r3, r7, #7
  92 0042 1A70     		strb	r2, [r3]
  13:graphic.c     **** 	GPIO_ODR_E_LOW &= ~(B_SELECT | x);			//Dubbelkolla sedan
  93              		.loc 1 13 0
  94 0044 0A4B     		ldr	r3, .L5
  95 0046 1B78     		ldrb	r3, [r3]
  96 0048 DBB2     		uxtb	r3, r3
  97 004a 5BB2     		sxtb	r3, r3
  98 004c FA1D     		adds	r2, r7, #7
  99 004e 1278     		ldrb	r2, [r2]
 100 0050 0421     		movs	r1, #4
 101 0052 0A43     		orrs	r2, r1
 102 0054 D2B2     		uxtb	r2, r2
 103 0056 52B2     		sxtb	r2, r2
 104 0058 D243     		mvns	r2, r2
 105 005a 52B2     		sxtb	r2, r2
 106 005c 1340     		ands	r3, r2
 107 005e 5AB2     		sxtb	r2, r3
 108 0060 034B     		ldr	r3, .L5
 109 0062 D2B2     		uxtb	r2, r2
 110 0064 1A70     		strb	r2, [r3]
  14:graphic.c     **** }
 111              		.loc 1 14 0
 112 0066 C046     		nop
 113 0068 BD46     		mov	sp, r7
 114 006a 02B0     		add	sp, sp, #8
 115              		@ sp needed
 116 006c 80BD     		pop	{r7, pc}
 117              	.L6:
 118 006e C046     		.align	2
 119              	.L5:
 120 0070 14100240 		.word	1073877012
 121              		.cfi_endproc
 122              	.LFE1:
 124              		.align	1
 125              		.syntax unified
 126              		.code	16
 127              		.thumb_func
 128              		.fpu softvfp
 130              	select_controller:
 131              	.LFB2:
  15:graphic.c     **** 
  16:graphic.c     **** static void select_controller(uint8_t controller){
 132              		.loc 1 16 0
 133              		.cfi_startproc
 134              		@ args = 0, pretend = 0, frame = 8
 135              		@ frame_needed = 1, uses_anonymous_args = 0
 136 0074 80B5     		push	{r7, lr}
 137              		.cfi_def_cfa_offset 8
 138              		.cfi_offset 7, -8
 139              		.cfi_offset 14, -4
 140 0076 82B0     		sub	sp, sp, #8
 141              		.cfi_def_cfa_offset 16
 142 0078 00AF     		add	r7, sp, #0
 143              		.cfi_def_cfa_register 7
 144 007a 0200     		movs	r2, r0
 145 007c FB1D     		adds	r3, r7, #7
 146 007e 1A70     		strb	r2, [r3]
  17:graphic.c     **** 	switch(controller){
 147              		.loc 1 17 0
 148 0080 FB1D     		adds	r3, r7, #7
 149 0082 1B78     		ldrb	r3, [r3]
 150 0084 082B     		cmp	r3, #8
 151 0086 0CD0     		beq	.L9
 152 0088 02DC     		bgt	.L10
 153 008a 002B     		cmp	r3, #0
 154 008c 05D0     		beq	.L11
  18:graphic.c     **** 		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
  19:graphic.c     **** 		case 0x08: graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2); break;
  20:graphic.c     **** 		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
  21:graphic.c     **** 		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
  22:graphic.c     **** 	}	
  23:graphic.c     **** }
 155              		.loc 1 23 0
 156 008e 1AE0     		b	.L14
 157              	.L10:
  17:graphic.c     **** 	switch(controller){
 158              		.loc 1 17 0
 159 0090 102B     		cmp	r3, #16
 160 0092 0DD0     		beq	.L12
 161 0094 182B     		cmp	r3, #24
 162 0096 12D0     		beq	.L13
 163              		.loc 1 23 0
 164 0098 15E0     		b	.L14
 165              	.L11:
  18:graphic.c     **** 		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
 166              		.loc 1 18 0
 167 009a 1820     		movs	r0, #24
 168 009c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 169 00a0 11E0     		b	.L8
 170              	.L9:
  19:graphic.c     **** 		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
 171              		.loc 1 19 0
 172 00a2 0820     		movs	r0, #8
 173 00a4 FFF7FEFF 		bl	graphic_ctrl_bit_set
 174 00a8 1020     		movs	r0, #16
 175 00aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
 176 00ae 0AE0     		b	.L8
 177              	.L12:
  20:graphic.c     **** 		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
 178              		.loc 1 20 0
 179 00b0 1020     		movs	r0, #16
 180 00b2 FFF7FEFF 		bl	graphic_ctrl_bit_set
 181 00b6 0820     		movs	r0, #8
 182 00b8 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 183 00bc 03E0     		b	.L8
 184              	.L13:
  21:graphic.c     **** 	}	
 185              		.loc 1 21 0
 186 00be 1820     		movs	r0, #24
 187 00c0 FFF7FEFF 		bl	graphic_ctrl_bit_set
 188 00c4 C046     		nop
 189              	.L8:
 190              	.L14:
 191              		.loc 1 23 0
 192 00c6 C046     		nop
 193 00c8 BD46     		mov	sp, r7
 194 00ca 02B0     		add	sp, sp, #8
 195              		@ sp needed
 196 00cc 80BD     		pop	{r7, pc}
 197              		.cfi_endproc
 198              	.LFE2:
 200              		.align	1
 201              		.syntax unified
 202              		.code	16
 203              		.thumb_func
 204              		.fpu softvfp
 206              	graphic_wait_ready:
 207              	.LFB3:
  24:graphic.c     **** 
  25:graphic.c     **** static void graphic_wait_ready(void){
 208              		.loc 1 25 0
 209              		.cfi_startproc
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 1, uses_anonymous_args = 0
 212 00ce 80B5     		push	{r7, lr}
 213              		.cfi_def_cfa_offset 8
 214              		.cfi_offset 7, -8
 215              		.cfi_offset 14, -4
 216 00d0 00AF     		add	r7, sp, #0
 217              		.cfi_def_cfa_register 7
  26:graphic.c     **** 	graphic_ctrl_bit_clear(B_E);
 218              		.loc 1 26 0
 219 00d2 4020     		movs	r0, #64
 220 00d4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  27:graphic.c     **** 	GPIO_MODER_E = 0x00005555;
 221              		.loc 1 27 0
 222 00d8 124B     		ldr	r3, .L18
 223 00da 134A     		ldr	r2, .L18+4
 224 00dc 1A60     		str	r2, [r3]
  28:graphic.c     **** 	graphic_ctrl_bit_clear(B_RS);
 225              		.loc 1 28 0
 226 00de 0120     		movs	r0, #1
 227 00e0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  29:graphic.c     **** 	graphic_ctrl_bit_set(B_RW);
 228              		.loc 1 29 0
 229 00e4 0220     		movs	r0, #2
 230 00e6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  30:graphic.c     **** 	delay_500ns();
 231              		.loc 1 30 0
 232 00ea FFF7FEFF 		bl	delay_500ns
  31:graphic.c     **** 	while(GPIO_IDR_E_HIGH & LCD_BUSY){
 233              		.loc 1 31 0
 234 00ee 09E0     		b	.L16
 235              	.L17:
  32:graphic.c     **** 		graphic_ctrl_bit_set(B_E);
 236              		.loc 1 32 0
 237 00f0 4020     		movs	r0, #64
 238 00f2 FFF7FEFF 		bl	graphic_ctrl_bit_set
  33:graphic.c     **** 		delay_500ns();
 239              		.loc 1 33 0
 240 00f6 FFF7FEFF 		bl	delay_500ns
  34:graphic.c     **** 		graphic_ctrl_bit_clear(B_E);
 241              		.loc 1 34 0
 242 00fa 4020     		movs	r0, #64
 243 00fc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  35:graphic.c     **** 		delay_500ns();
 244              		.loc 1 35 0
 245 0100 FFF7FEFF 		bl	delay_500ns
 246              	.L16:
  31:graphic.c     **** 		graphic_ctrl_bit_set(B_E);
 247              		.loc 1 31 0
 248 0104 094B     		ldr	r3, .L18+8
 249 0106 1B78     		ldrb	r3, [r3]
 250 0108 DBB2     		uxtb	r3, r3
 251 010a 5BB2     		sxtb	r3, r3
 252 010c 002B     		cmp	r3, #0
 253 010e EFDB     		blt	.L17
  36:graphic.c     **** 	}
  37:graphic.c     **** 	graphic_ctrl_bit_set(B_E);
 254              		.loc 1 37 0
 255 0110 4020     		movs	r0, #64
 256 0112 FFF7FEFF 		bl	graphic_ctrl_bit_set
  38:graphic.c     **** 	GPIO_MODER_E = 0x55555555;
 257              		.loc 1 38 0
 258 0116 034B     		ldr	r3, .L18
 259 0118 054A     		ldr	r2, .L18+12
 260 011a 1A60     		str	r2, [r3]
  39:graphic.c     **** }
 261              		.loc 1 39 0
 262 011c C046     		nop
 263 011e BD46     		mov	sp, r7
 264              		@ sp needed
 265 0120 80BD     		pop	{r7, pc}
 266              	.L19:
 267 0122 C046     		.align	2
 268              	.L18:
 269 0124 00100240 		.word	1073876992
 270 0128 55550000 		.word	21845
 271 012c 11100240 		.word	1073877009
 272 0130 55555555 		.word	1431655765
 273              		.cfi_endproc
 274              	.LFE3:
 276              		.align	1
 277              		.global	graphic_read
 278              		.syntax unified
 279              		.code	16
 280              		.thumb_func
 281              		.fpu softvfp
 283              	graphic_read:
 284              	.LFB4:
  40:graphic.c     **** 
  41:graphic.c     **** unsigned char graphic_read(unsigned char controller){
 285              		.loc 1 41 0
 286              		.cfi_startproc
 287              		@ args = 0, pretend = 0, frame = 16
 288              		@ frame_needed = 1, uses_anonymous_args = 0
 289 0134 80B5     		push	{r7, lr}
 290              		.cfi_def_cfa_offset 8
 291              		.cfi_offset 7, -8
 292              		.cfi_offset 14, -4
 293 0136 84B0     		sub	sp, sp, #16
 294              		.cfi_def_cfa_offset 24
 295 0138 00AF     		add	r7, sp, #0
 296              		.cfi_def_cfa_register 7
 297 013a 0200     		movs	r2, r0
 298 013c FB1D     		adds	r3, r7, #7
 299 013e 1A70     		strb	r2, [r3]
  42:graphic.c     **** 	unsigned char read_data;
  43:graphic.c     **** 	graphic_ctrl_bit_clear(B_E);
 300              		.loc 1 43 0
 301 0140 4020     		movs	r0, #64
 302 0142 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  44:graphic.c     **** 	GPIO_MODER_E = 0x00005555;
 303              		.loc 1 44 0
 304 0146 1A4B     		ldr	r3, .L24
 305 0148 1A4A     		ldr	r2, .L24+4
 306 014a 1A60     		str	r2, [r3]
  45:graphic.c     **** 	graphic_ctrl_bit_set(B_RS | B_RW);
 307              		.loc 1 45 0
 308 014c 0320     		movs	r0, #3
 309 014e FFF7FEFF 		bl	graphic_ctrl_bit_set
  46:graphic.c     **** 	select_controller(controller);
 310              		.loc 1 46 0
 311 0152 FB1D     		adds	r3, r7, #7
 312 0154 1B78     		ldrb	r3, [r3]
 313 0156 1800     		movs	r0, r3
 314 0158 FFF78CFF 		bl	select_controller
  47:graphic.c     **** 	delay_500ns();
 315              		.loc 1 47 0
 316 015c FFF7FEFF 		bl	delay_500ns
  48:graphic.c     **** 	graphic_ctrl_bit_set(B_E);
 317              		.loc 1 48 0
 318 0160 4020     		movs	r0, #64
 319 0162 FFF7FEFF 		bl	graphic_ctrl_bit_set
  49:graphic.c     **** 	read_data = GPIO_IDR_E_HIGH;
 320              		.loc 1 49 0
 321 0166 144A     		ldr	r2, .L24+8
 322 0168 0F23     		movs	r3, #15
 323 016a FB18     		adds	r3, r7, r3
 324 016c 1278     		ldrb	r2, [r2]
 325 016e 1A70     		strb	r2, [r3]
  50:graphic.c     **** 	graphic_ctrl_bit_clear(B_E);
 326              		.loc 1 50 0
 327 0170 4020     		movs	r0, #64
 328 0172 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  51:graphic.c     **** 	GPIO_MODER_E = 0x55555555;
 329              		.loc 1 51 0
 330 0176 0E4B     		ldr	r3, .L24
 331 0178 104A     		ldr	r2, .L24+12
 332 017a 1A60     		str	r2, [r3]
  52:graphic.c     **** 	if(controller == B_CS1){
 333              		.loc 1 52 0
 334 017c FB1D     		adds	r3, r7, #7
 335 017e 1B78     		ldrb	r3, [r3]
 336 0180 082B     		cmp	r3, #8
 337 0182 04D1     		bne	.L21
  53:graphic.c     **** 		select_controller(B_CS1);
 338              		.loc 1 53 0
 339 0184 0820     		movs	r0, #8
 340 0186 FFF775FF 		bl	select_controller
  54:graphic.c     **** 		graphic_wait_ready();
 341              		.loc 1 54 0
 342 018a FFF7A0FF 		bl	graphic_wait_ready
 343              	.L21:
  55:graphic.c     **** 	}
  56:graphic.c     **** 	if (controller == B_CS2){
 344              		.loc 1 56 0
 345 018e FB1D     		adds	r3, r7, #7
 346 0190 1B78     		ldrb	r3, [r3]
 347 0192 102B     		cmp	r3, #16
 348 0194 04D1     		bne	.L22
  57:graphic.c     **** 		select_controller(B_CS2);
 349              		.loc 1 57 0
 350 0196 1020     		movs	r0, #16
 351 0198 FFF76CFF 		bl	select_controller
  58:graphic.c     **** 		graphic_wait_ready();
 352              		.loc 1 58 0
 353 019c FFF797FF 		bl	graphic_wait_ready
 354              	.L22:
  59:graphic.c     **** 	}
  60:graphic.c     **** 	return read_data;
 355              		.loc 1 60 0
 356 01a0 0F23     		movs	r3, #15
 357 01a2 FB18     		adds	r3, r7, r3
 358 01a4 1B78     		ldrb	r3, [r3]
  61:graphic.c     **** }
 359              		.loc 1 61 0
 360 01a6 1800     		movs	r0, r3
 361 01a8 BD46     		mov	sp, r7
 362 01aa 04B0     		add	sp, sp, #16
 363              		@ sp needed
 364 01ac 80BD     		pop	{r7, pc}
 365              	.L25:
 366 01ae C046     		.align	2
 367              	.L24:
 368 01b0 00100240 		.word	1073876992
 369 01b4 55550000 		.word	21845
 370 01b8 11100240 		.word	1073877009
 371 01bc 55555555 		.word	1431655765
 372              		.cfi_endproc
 373              	.LFE4:
 375              		.align	1
 376              		.global	graphic_write
 377              		.syntax unified
 378              		.code	16
 379              		.thumb_func
 380              		.fpu softvfp
 382              	graphic_write:
 383              	.LFB5:
  62:graphic.c     **** 
  63:graphic.c     **** void graphic_write(unsigned char value, unsigned char controller){
 384              		.loc 1 63 0
 385              		.cfi_startproc
 386              		@ args = 0, pretend = 0, frame = 8
 387              		@ frame_needed = 1, uses_anonymous_args = 0
 388 01c0 80B5     		push	{r7, lr}
 389              		.cfi_def_cfa_offset 8
 390              		.cfi_offset 7, -8
 391              		.cfi_offset 14, -4
 392 01c2 82B0     		sub	sp, sp, #8
 393              		.cfi_def_cfa_offset 16
 394 01c4 00AF     		add	r7, sp, #0
 395              		.cfi_def_cfa_register 7
 396 01c6 0200     		movs	r2, r0
 397 01c8 FB1D     		adds	r3, r7, #7
 398 01ca 1A70     		strb	r2, [r3]
 399 01cc BB1D     		adds	r3, r7, #6
 400 01ce 0A1C     		adds	r2, r1, #0
 401 01d0 1A70     		strb	r2, [r3]
  64:graphic.c     **** 	GPIO_ODR_E_HIGH = value;
 402              		.loc 1 64 0
 403 01d2 1A4A     		ldr	r2, .L29
 404 01d4 FB1D     		adds	r3, r7, #7
 405 01d6 1B78     		ldrb	r3, [r3]
 406 01d8 1370     		strb	r3, [r2]
  65:graphic.c     **** 	select_controller(controller);
 407              		.loc 1 65 0
 408 01da BB1D     		adds	r3, r7, #6
 409 01dc 1B78     		ldrb	r3, [r3]
 410 01de 1800     		movs	r0, r3
 411 01e0 FFF748FF 		bl	select_controller
  66:graphic.c     **** 	delay_500ns();
 412              		.loc 1 66 0
 413 01e4 FFF7FEFF 		bl	delay_500ns
  67:graphic.c     **** 	graphic_ctrl_bit_set(B_E);
 414              		.loc 1 67 0
 415 01e8 4020     		movs	r0, #64
 416 01ea FFF7FEFF 		bl	graphic_ctrl_bit_set
  68:graphic.c     **** 	delay_500ns();
 417              		.loc 1 68 0
 418 01ee FFF7FEFF 		bl	delay_500ns
  69:graphic.c     **** 	graphic_ctrl_bit_clear(B_E);
 419              		.loc 1 69 0
 420 01f2 4020     		movs	r0, #64
 421 01f4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  70:graphic.c     **** 	if(controller & B_CS1){
 422              		.loc 1 70 0
 423 01f8 BB1D     		adds	r3, r7, #6
 424 01fa 1B78     		ldrb	r3, [r3]
 425 01fc 0822     		movs	r2, #8
 426 01fe 1340     		ands	r3, r2
 427 0200 04D0     		beq	.L27
  71:graphic.c     **** 		select_controller(B_CS1);
 428              		.loc 1 71 0
 429 0202 0820     		movs	r0, #8
 430 0204 FFF736FF 		bl	select_controller
  72:graphic.c     **** 		graphic_wait_ready();
 431              		.loc 1 72 0
 432 0208 FFF761FF 		bl	graphic_wait_ready
 433              	.L27:
  73:graphic.c     **** 	}
  74:graphic.c     **** 	if(controller & B_CS2){
 434              		.loc 1 74 0
 435 020c BB1D     		adds	r3, r7, #6
 436 020e 1B78     		ldrb	r3, [r3]
 437 0210 1022     		movs	r2, #16
 438 0212 1340     		ands	r3, r2
 439 0214 04D0     		beq	.L28
  75:graphic.c     **** 		select_controller(B_CS2);
 440              		.loc 1 75 0
 441 0216 1020     		movs	r0, #16
 442 0218 FFF72CFF 		bl	select_controller
  76:graphic.c     **** 		graphic_wait_ready();
 443              		.loc 1 76 0
 444 021c FFF757FF 		bl	graphic_wait_ready
 445              	.L28:
  77:graphic.c     **** 	}
  78:graphic.c     **** 	GPIO_ODR_E_HIGH = 0;
 446              		.loc 1 78 0
 447 0220 064B     		ldr	r3, .L29
 448 0222 0022     		movs	r2, #0
 449 0224 1A70     		strb	r2, [r3]
  79:graphic.c     **** 	graphic_ctrl_bit_set(B_E);  		//ettställs som förberedelse för nästa arbetscykel
 450              		.loc 1 79 0
 451 0226 4020     		movs	r0, #64
 452 0228 FFF7FEFF 		bl	graphic_ctrl_bit_set
  80:graphic.c     **** 	select_controller(0);
 453              		.loc 1 80 0
 454 022c 0020     		movs	r0, #0
 455 022e FFF721FF 		bl	select_controller
  81:graphic.c     **** }
 456              		.loc 1 81 0
 457 0232 C046     		nop
 458 0234 BD46     		mov	sp, r7
 459 0236 02B0     		add	sp, sp, #8
 460              		@ sp needed
 461 0238 80BD     		pop	{r7, pc}
 462              	.L30:
 463 023a C046     		.align	2
 464              	.L29:
 465 023c 15100240 		.word	1073877013
 466              		.cfi_endproc
 467              	.LFE5:
 469              		.align	1
 470              		.global	graphic_write_command
 471              		.syntax unified
 472              		.code	16
 473              		.thumb_func
 474              		.fpu softvfp
 476              	graphic_write_command:
 477              	.LFB6:
  82:graphic.c     **** 
  83:graphic.c     **** void graphic_write_command(uint8_t command, uint8_t controller){
 478              		.loc 1 83 0
 479              		.cfi_startproc
 480              		@ args = 0, pretend = 0, frame = 8
 481              		@ frame_needed = 1, uses_anonymous_args = 0
 482 0240 80B5     		push	{r7, lr}
 483              		.cfi_def_cfa_offset 8
 484              		.cfi_offset 7, -8
 485              		.cfi_offset 14, -4
 486 0242 82B0     		sub	sp, sp, #8
 487              		.cfi_def_cfa_offset 16
 488 0244 00AF     		add	r7, sp, #0
 489              		.cfi_def_cfa_register 7
 490 0246 0200     		movs	r2, r0
 491 0248 FB1D     		adds	r3, r7, #7
 492 024a 1A70     		strb	r2, [r3]
 493 024c BB1D     		adds	r3, r7, #6
 494 024e 0A1C     		adds	r2, r1, #0
 495 0250 1A70     		strb	r2, [r3]
  84:graphic.c     **** 	graphic_ctrl_bit_clear(B_E);
 496              		.loc 1 84 0
 497 0252 4020     		movs	r0, #64
 498 0254 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  85:graphic.c     **** 	select_controller(controller);
 499              		.loc 1 85 0
 500 0258 BB1D     		adds	r3, r7, #6
 501 025a 1B78     		ldrb	r3, [r3]
 502 025c 1800     		movs	r0, r3
 503 025e FFF709FF 		bl	select_controller
  86:graphic.c     **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 504              		.loc 1 86 0
 505 0262 0320     		movs	r0, #3
 506 0264 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  87:graphic.c     **** 	graphic_write(command, controller);
 507              		.loc 1 87 0
 508 0268 BB1D     		adds	r3, r7, #6
 509 026a 1A78     		ldrb	r2, [r3]
 510 026c FB1D     		adds	r3, r7, #7
 511 026e 1B78     		ldrb	r3, [r3]
 512 0270 1100     		movs	r1, r2
 513 0272 1800     		movs	r0, r3
 514 0274 FFF7FEFF 		bl	graphic_write
  88:graphic.c     **** }
 515              		.loc 1 88 0
 516 0278 C046     		nop
 517 027a BD46     		mov	sp, r7
 518 027c 02B0     		add	sp, sp, #8
 519              		@ sp needed
 520 027e 80BD     		pop	{r7, pc}
 521              		.cfi_endproc
 522              	.LFE6:
 524              		.align	1
 525              		.global	graphic_write_data
 526              		.syntax unified
 527              		.code	16
 528              		.thumb_func
 529              		.fpu softvfp
 531              	graphic_write_data:
 532              	.LFB7:
  89:graphic.c     **** 
  90:graphic.c     **** void graphic_write_data(uint8_t data, uint8_t controller){
 533              		.loc 1 90 0
 534              		.cfi_startproc
 535              		@ args = 0, pretend = 0, frame = 8
 536              		@ frame_needed = 1, uses_anonymous_args = 0
 537 0280 80B5     		push	{r7, lr}
 538              		.cfi_def_cfa_offset 8
 539              		.cfi_offset 7, -8
 540              		.cfi_offset 14, -4
 541 0282 82B0     		sub	sp, sp, #8
 542              		.cfi_def_cfa_offset 16
 543 0284 00AF     		add	r7, sp, #0
 544              		.cfi_def_cfa_register 7
 545 0286 0200     		movs	r2, r0
 546 0288 FB1D     		adds	r3, r7, #7
 547 028a 1A70     		strb	r2, [r3]
 548 028c BB1D     		adds	r3, r7, #6
 549 028e 0A1C     		adds	r2, r1, #0
 550 0290 1A70     		strb	r2, [r3]
  91:graphic.c     **** 	graphic_ctrl_bit_clear(B_E);
 551              		.loc 1 91 0
 552 0292 4020     		movs	r0, #64
 553 0294 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  92:graphic.c     **** 	select_controller(controller);
 554              		.loc 1 92 0
 555 0298 BB1D     		adds	r3, r7, #6
 556 029a 1B78     		ldrb	r3, [r3]
 557 029c 1800     		movs	r0, r3
 558 029e FFF7E9FE 		bl	select_controller
  93:graphic.c     **** 	graphic_ctrl_bit_set(B_RS);
 559              		.loc 1 93 0
 560 02a2 0120     		movs	r0, #1
 561 02a4 FFF7FEFF 		bl	graphic_ctrl_bit_set
  94:graphic.c     **** 	graphic_ctrl_bit_clear(B_RW);
 562              		.loc 1 94 0
 563 02a8 0220     		movs	r0, #2
 564 02aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
  95:graphic.c     **** 	graphic_write(data, controller);
 565              		.loc 1 95 0
 566 02ae BB1D     		adds	r3, r7, #6
 567 02b0 1A78     		ldrb	r2, [r3]
 568 02b2 FB1D     		adds	r3, r7, #7
 569 02b4 1B78     		ldrb	r3, [r3]
 570 02b6 1100     		movs	r1, r2
 571 02b8 1800     		movs	r0, r3
 572 02ba FFF7FEFF 		bl	graphic_write
  96:graphic.c     **** }
 573              		.loc 1 96 0
 574 02be C046     		nop
 575 02c0 BD46     		mov	sp, r7
 576 02c2 02B0     		add	sp, sp, #8
 577              		@ sp needed
 578 02c4 80BD     		pop	{r7, pc}
 579              		.cfi_endproc
 580              	.LFE7:
 582              		.align	1
 583              		.global	graphic_read_data
 584              		.syntax unified
 585              		.code	16
 586              		.thumb_func
 587              		.fpu softvfp
 589              	graphic_read_data:
 590              	.LFB8:
  97:graphic.c     **** 
  98:graphic.c     **** unsigned char graphic_read_data(unsigned char controller){
 591              		.loc 1 98 0
 592              		.cfi_startproc
 593              		@ args = 0, pretend = 0, frame = 8
 594              		@ frame_needed = 1, uses_anonymous_args = 0
 595 02c6 80B5     		push	{r7, lr}
 596              		.cfi_def_cfa_offset 8
 597              		.cfi_offset 7, -8
 598              		.cfi_offset 14, -4
 599 02c8 82B0     		sub	sp, sp, #8
 600              		.cfi_def_cfa_offset 16
 601 02ca 00AF     		add	r7, sp, #0
 602              		.cfi_def_cfa_register 7
 603 02cc 0200     		movs	r2, r0
 604 02ce FB1D     		adds	r3, r7, #7
 605 02d0 1A70     		strb	r2, [r3]
  99:graphic.c     **** 	(void) graphic_read(controller);
 606              		.loc 1 99 0
 607 02d2 FB1D     		adds	r3, r7, #7
 608 02d4 1B78     		ldrb	r3, [r3]
 609 02d6 1800     		movs	r0, r3
 610 02d8 FFF7FEFF 		bl	graphic_read
 100:graphic.c     **** 	
 101:graphic.c     **** 	return graphic_read(controller);
 611              		.loc 1 101 0
 612 02dc FB1D     		adds	r3, r7, #7
 613 02de 1B78     		ldrb	r3, [r3]
 614 02e0 1800     		movs	r0, r3
 615 02e2 FFF7FEFF 		bl	graphic_read
 616 02e6 0300     		movs	r3, r0
 102:graphic.c     **** }
 617              		.loc 1 102 0
 618 02e8 1800     		movs	r0, r3
 619 02ea BD46     		mov	sp, r7
 620 02ec 02B0     		add	sp, sp, #8
 621              		@ sp needed
 622 02ee 80BD     		pop	{r7, pc}
 623              		.cfi_endproc
 624              	.LFE8:
 626              		.align	1
 627              		.global	graphic_init
 628              		.syntax unified
 629              		.code	16
 630              		.thumb_func
 631              		.fpu softvfp
 633              	graphic_init:
 634              	.LFB9:
 103:graphic.c     **** 
 104:graphic.c     **** void graphic_init(){
 635              		.loc 1 104 0
 636              		.cfi_startproc
 637              		@ args = 0, pretend = 0, frame = 0
 638              		@ frame_needed = 1, uses_anonymous_args = 0
 639 02f0 80B5     		push	{r7, lr}
 640              		.cfi_def_cfa_offset 8
 641              		.cfi_offset 7, -8
 642              		.cfi_offset 14, -4
 643 02f2 00AF     		add	r7, sp, #0
 644              		.cfi_def_cfa_register 7
 105:graphic.c     **** 	GPIO_MODER_E = 0x55555555;
 645              		.loc 1 105 0
 646 02f4 154B     		ldr	r3, .L36
 647 02f6 164A     		ldr	r2, .L36+4
 648 02f8 1A60     		str	r2, [r3]
 106:graphic.c     **** 	
 107:graphic.c     **** 	graphic_ctrl_bit_set(B_E);
 649              		.loc 1 107 0
 650 02fa 4020     		movs	r0, #64
 651 02fc FFF7FEFF 		bl	graphic_ctrl_bit_set
 108:graphic.c     **** 	delay_micro(10);
 652              		.loc 1 108 0
 653 0300 0A20     		movs	r0, #10
 654 0302 FFF7FEFF 		bl	delay_micro
 109:graphic.c     **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RESET | B_E);
 655              		.loc 1 109 0
 656 0306 7820     		movs	r0, #120
 657 0308 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 110:graphic.c     **** 	delay_milli(30);
 658              		.loc 1 110 0
 659 030c 1E20     		movs	r0, #30
 660 030e FFF7FEFF 		bl	delay_milli
 111:graphic.c     **** 	graphic_ctrl_bit_set(B_RESET);
 661              		.loc 1 111 0
 662 0312 2020     		movs	r0, #32
 663 0314 FFF7FEFF 		bl	graphic_ctrl_bit_set
 112:graphic.c     **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 664              		.loc 1 112 0
 665 0318 1821     		movs	r1, #24
 666 031a 3E20     		movs	r0, #62
 667 031c FFF7FEFF 		bl	graphic_write_command
 113:graphic.c     **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 668              		.loc 1 113 0
 669 0320 1821     		movs	r1, #24
 670 0322 3F20     		movs	r0, #63
 671 0324 FFF7FEFF 		bl	graphic_write_command
 114:graphic.c     **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 672              		.loc 1 114 0
 673 0328 1821     		movs	r1, #24
 674 032a C020     		movs	r0, #192
 675 032c FFF7FEFF 		bl	graphic_write_command
 115:graphic.c     **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 676              		.loc 1 115 0
 677 0330 1821     		movs	r1, #24
 678 0332 4020     		movs	r0, #64
 679 0334 FFF7FEFF 		bl	graphic_write_command
 116:graphic.c     **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
 680              		.loc 1 116 0
 681 0338 1821     		movs	r1, #24
 682 033a B820     		movs	r0, #184
 683 033c FFF7FEFF 		bl	graphic_write_command
 117:graphic.c     **** 	select_controller(0);
 684              		.loc 1 117 0
 685 0340 0020     		movs	r0, #0
 686 0342 FFF797FE 		bl	select_controller
 118:graphic.c     **** }
 687              		.loc 1 118 0
 688 0346 C046     		nop
 689 0348 BD46     		mov	sp, r7
 690              		@ sp needed
 691 034a 80BD     		pop	{r7, pc}
 692              	.L37:
 693              		.align	2
 694              	.L36:
 695 034c 00100240 		.word	1073876992
 696 0350 55555555 		.word	1431655765
 697              		.cfi_endproc
 698              	.LFE9:
 700              		.align	1
 701              		.global	graphic_clear_screen
 702              		.syntax unified
 703              		.code	16
 704              		.thumb_func
 705              		.fpu softvfp
 707              	graphic_clear_screen:
 708              	.LFB10:
 119:graphic.c     **** 
 120:graphic.c     **** void graphic_clear_screen(){
 709              		.loc 1 120 0
 710              		.cfi_startproc
 711              		@ args = 0, pretend = 0, frame = 8
 712              		@ frame_needed = 1, uses_anonymous_args = 0
 713 0354 80B5     		push	{r7, lr}
 714              		.cfi_def_cfa_offset 8
 715              		.cfi_offset 7, -8
 716              		.cfi_offset 14, -4
 717 0356 82B0     		sub	sp, sp, #8
 718              		.cfi_def_cfa_offset 16
 719 0358 00AF     		add	r7, sp, #0
 720              		.cfi_def_cfa_register 7
 721              	.LBB2:
 121:graphic.c     **** 	for(int page = 0; page <=7; page++){
 722              		.loc 1 121 0
 723 035a 0023     		movs	r3, #0
 724 035c 7B60     		str	r3, [r7, #4]
 725 035e 1EE0     		b	.L39
 726              	.L42:
 122:graphic.c     **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 727              		.loc 1 122 0
 728 0360 7B68     		ldr	r3, [r7, #4]
 729 0362 5BB2     		sxtb	r3, r3
 730 0364 4822     		movs	r2, #72
 731 0366 5242     		rsbs	r2, r2, #0
 732 0368 1343     		orrs	r3, r2
 733 036a 5BB2     		sxtb	r3, r3
 734 036c DBB2     		uxtb	r3, r3
 735 036e 1821     		movs	r1, #24
 736 0370 1800     		movs	r0, r3
 737 0372 FFF7FEFF 		bl	graphic_write_command
 123:graphic.c     **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 738              		.loc 1 123 0
 739 0376 1821     		movs	r1, #24
 740 0378 4020     		movs	r0, #64
 741 037a FFF7FEFF 		bl	graphic_write_command
 742              	.LBB3:
 124:graphic.c     **** 		for (int adress = 0; adress <= 63; adress++)
 743              		.loc 1 124 0
 744 037e 0023     		movs	r3, #0
 745 0380 3B60     		str	r3, [r7]
 746 0382 06E0     		b	.L40
 747              	.L41:
 125:graphic.c     **** 			graphic_write_data(0, B_CS1 | B_CS2);
 748              		.loc 1 125 0 discriminator 3
 749 0384 1821     		movs	r1, #24
 750 0386 0020     		movs	r0, #0
 751 0388 FFF7FEFF 		bl	graphic_write_data
 124:graphic.c     **** 		for (int adress = 0; adress <= 63; adress++)
 752              		.loc 1 124 0 discriminator 3
 753 038c 3B68     		ldr	r3, [r7]
 754 038e 0133     		adds	r3, r3, #1
 755 0390 3B60     		str	r3, [r7]
 756              	.L40:
 124:graphic.c     **** 		for (int adress = 0; adress <= 63; adress++)
 757              		.loc 1 124 0 is_stmt 0 discriminator 1
 758 0392 3B68     		ldr	r3, [r7]
 759 0394 3F2B     		cmp	r3, #63
 760 0396 F5DD     		ble	.L41
 761              	.LBE3:
 121:graphic.c     **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 762              		.loc 1 121 0 is_stmt 1 discriminator 2
 763 0398 7B68     		ldr	r3, [r7, #4]
 764 039a 0133     		adds	r3, r3, #1
 765 039c 7B60     		str	r3, [r7, #4]
 766              	.L39:
 121:graphic.c     **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 767              		.loc 1 121 0 is_stmt 0 discriminator 1
 768 039e 7B68     		ldr	r3, [r7, #4]
 769 03a0 072B     		cmp	r3, #7
 770 03a2 DDDD     		ble	.L42
 771              	.LBE2:
 126:graphic.c     **** 	}
 127:graphic.c     **** }
 772              		.loc 1 127 0 is_stmt 1
 773 03a4 C046     		nop
 774 03a6 BD46     		mov	sp, r7
 775 03a8 02B0     		add	sp, sp, #8
 776              		@ sp needed
 777 03aa 80BD     		pop	{r7, pc}
 778              		.cfi_endproc
 779              	.LFE10:
 781              		.align	1
 782              		.global	pixel
 783              		.syntax unified
 784              		.code	16
 785              		.thumb_func
 786              		.fpu softvfp
 788              	pixel:
 789              	.LFB11:
 128:graphic.c     **** 
 129:graphic.c     **** void pixel (unsigned int x, unsigned int y, unsigned int set){
 790              		.loc 1 129 0
 791              		.cfi_startproc
 792              		@ args = 0, pretend = 0, frame = 32
 793              		@ frame_needed = 1, uses_anonymous_args = 0
 794 03ac B0B5     		push	{r4, r5, r7, lr}
 795              		.cfi_def_cfa_offset 16
 796              		.cfi_offset 4, -16
 797              		.cfi_offset 5, -12
 798              		.cfi_offset 7, -8
 799              		.cfi_offset 14, -4
 800 03ae 88B0     		sub	sp, sp, #32
 801              		.cfi_def_cfa_offset 48
 802 03b0 00AF     		add	r7, sp, #0
 803              		.cfi_def_cfa_register 7
 804 03b2 F860     		str	r0, [r7, #12]
 805 03b4 B960     		str	r1, [r7, #8]
 806 03b6 7A60     		str	r2, [r7, #4]
 130:graphic.c     **** 	uint8_t mask, c, controller;
 131:graphic.c     **** 	int index;
 132:graphic.c     **** 	if (y < 1 || y > 64 || x < 1 || x > 128) 
 807              		.loc 1 132 0
 808 03b8 BB68     		ldr	r3, [r7, #8]
 809 03ba 002B     		cmp	r3, #0
 810 03bc 00D1     		bne	.LCB654
 811 03be ABE0     		b	.L62	@long jump
 812              	.LCB654:
 813              		.loc 1 132 0 is_stmt 0 discriminator 1
 814 03c0 BB68     		ldr	r3, [r7, #8]
 815 03c2 402B     		cmp	r3, #64
 816 03c4 00D9     		bls	.LCB657
 817 03c6 A7E0     		b	.L62	@long jump
 818              	.LCB657:
 819              		.loc 1 132 0 discriminator 2
 820 03c8 FB68     		ldr	r3, [r7, #12]
 821 03ca 002B     		cmp	r3, #0
 822 03cc 00D1     		bne	.LCB660
 823 03ce A3E0     		b	.L62	@long jump
 824              	.LCB660:
 825              		.loc 1 132 0 discriminator 3
 826 03d0 FB68     		ldr	r3, [r7, #12]
 827 03d2 802B     		cmp	r3, #128
 828 03d4 00D9     		bls	.LCB663
 829 03d6 9FE0     		b	.L62	@long jump
 830              	.LCB663:
 133:graphic.c     **** 		return;
 134:graphic.c     **** 	
 135:graphic.c     **** 	index = (y-1) / 8;
 831              		.loc 1 135 0 is_stmt 1
 832 03d8 BB68     		ldr	r3, [r7, #8]
 833 03da 013B     		subs	r3, r3, #1
 834 03dc DB08     		lsrs	r3, r3, #3
 835 03de BB61     		str	r3, [r7, #24]
 136:graphic.c     **** 	
 137:graphic.c     **** 	switch((y-1) % 8){
 836              		.loc 1 137 0
 837 03e0 BB68     		ldr	r3, [r7, #8]
 838 03e2 013B     		subs	r3, r3, #1
 839 03e4 0722     		movs	r2, #7
 840 03e6 1340     		ands	r3, r2
 841 03e8 072B     		cmp	r3, #7
 842 03ea 2CD8     		bhi	.L47
 843 03ec 9A00     		lsls	r2, r3, #2
 844 03ee 4C4B     		ldr	r3, .L63
 845 03f0 D318     		adds	r3, r2, r3
 846 03f2 1B68     		ldr	r3, [r3]
 847 03f4 9F46     		mov	pc, r3
 848              		.section	.rodata
 849              		.align	2
 850              	.L49:
 851 0000 F6030000 		.word	.L48
 852 0004 00040000 		.word	.L50
 853 0008 0A040000 		.word	.L51
 854 000c 14040000 		.word	.L52
 855 0010 1E040000 		.word	.L53
 856 0014 28040000 		.word	.L54
 857 0018 32040000 		.word	.L55
 858 001c 3C040000 		.word	.L56
 859              		.text
 860              	.L48:
 138:graphic.c     **** 		case 0: mask = 1; break;
 861              		.loc 1 138 0
 862 03f6 1F23     		movs	r3, #31
 863 03f8 FB18     		adds	r3, r7, r3
 864 03fa 0122     		movs	r2, #1
 865 03fc 1A70     		strb	r2, [r3]
 866 03fe 22E0     		b	.L47
 867              	.L50:
 139:graphic.c     **** 		case 1: mask = 2; break;
 868              		.loc 1 139 0
 869 0400 1F23     		movs	r3, #31
 870 0402 FB18     		adds	r3, r7, r3
 871 0404 0222     		movs	r2, #2
 872 0406 1A70     		strb	r2, [r3]
 873 0408 1DE0     		b	.L47
 874              	.L51:
 140:graphic.c     **** 		case 2: mask = 4; break;
 875              		.loc 1 140 0
 876 040a 1F23     		movs	r3, #31
 877 040c FB18     		adds	r3, r7, r3
 878 040e 0422     		movs	r2, #4
 879 0410 1A70     		strb	r2, [r3]
 880 0412 18E0     		b	.L47
 881              	.L52:
 141:graphic.c     **** 		case 3: mask = 8; break;
 882              		.loc 1 141 0
 883 0414 1F23     		movs	r3, #31
 884 0416 FB18     		adds	r3, r7, r3
 885 0418 0822     		movs	r2, #8
 886 041a 1A70     		strb	r2, [r3]
 887 041c 13E0     		b	.L47
 888              	.L53:
 142:graphic.c     **** 		case 4: mask = 0x10; break;
 889              		.loc 1 142 0
 890 041e 1F23     		movs	r3, #31
 891 0420 FB18     		adds	r3, r7, r3
 892 0422 1022     		movs	r2, #16
 893 0424 1A70     		strb	r2, [r3]
 894 0426 0EE0     		b	.L47
 895              	.L54:
 143:graphic.c     **** 		case 5: mask = 0x20; break;
 896              		.loc 1 143 0
 897 0428 1F23     		movs	r3, #31
 898 042a FB18     		adds	r3, r7, r3
 899 042c 2022     		movs	r2, #32
 900 042e 1A70     		strb	r2, [r3]
 901 0430 09E0     		b	.L47
 902              	.L55:
 144:graphic.c     **** 		case 6: mask = 0x40; break;
 903              		.loc 1 144 0
 904 0432 1F23     		movs	r3, #31
 905 0434 FB18     		adds	r3, r7, r3
 906 0436 4022     		movs	r2, #64
 907 0438 1A70     		strb	r2, [r3]
 908 043a 04E0     		b	.L47
 909              	.L56:
 145:graphic.c     **** 		case 7: mask = 0x80; break;
 910              		.loc 1 145 0
 911 043c 1F23     		movs	r3, #31
 912 043e FB18     		adds	r3, r7, r3
 913 0440 8022     		movs	r2, #128
 914 0442 1A70     		strb	r2, [r3]
 915 0444 C046     		nop
 916              	.L47:
 146:graphic.c     **** 	}
 147:graphic.c     **** 	
 148:graphic.c     **** 	if (!set)
 917              		.loc 1 148 0
 918 0446 7B68     		ldr	r3, [r7, #4]
 919 0448 002B     		cmp	r3, #0
 920 044a 05D1     		bne	.L57
 149:graphic.c     **** 		mask = ~mask;
 921              		.loc 1 149 0
 922 044c 1F22     		movs	r2, #31
 923 044e BB18     		adds	r3, r7, r2
 924 0450 BA18     		adds	r2, r7, r2
 925 0452 1278     		ldrb	r2, [r2]
 926 0454 D243     		mvns	r2, r2
 927 0456 1A70     		strb	r2, [r3]
 928              	.L57:
 150:graphic.c     **** 	if(x > 64){
 929              		.loc 1 150 0
 930 0458 FB68     		ldr	r3, [r7, #12]
 931 045a 402B     		cmp	r3, #64
 932 045c 07D9     		bls	.L58
 151:graphic.c     **** 		controller = B_CS2;
 933              		.loc 1 151 0
 934 045e 1E23     		movs	r3, #30
 935 0460 FB18     		adds	r3, r7, r3
 936 0462 1022     		movs	r2, #16
 937 0464 1A70     		strb	r2, [r3]
 152:graphic.c     **** 		x = x-65;
 938              		.loc 1 152 0
 939 0466 FB68     		ldr	r3, [r7, #12]
 940 0468 413B     		subs	r3, r3, #65
 941 046a FB60     		str	r3, [r7, #12]
 942 046c 06E0     		b	.L59
 943              	.L58:
 153:graphic.c     **** 	}
 154:graphic.c     **** 	else{
 155:graphic.c     **** 		controller = B_CS1;
 944              		.loc 1 155 0
 945 046e 1E23     		movs	r3, #30
 946 0470 FB18     		adds	r3, r7, r3
 947 0472 0822     		movs	r2, #8
 948 0474 1A70     		strb	r2, [r3]
 156:graphic.c     **** 		x = x-1;
 949              		.loc 1 156 0
 950 0476 FB68     		ldr	r3, [r7, #12]
 951 0478 013B     		subs	r3, r3, #1
 952 047a FB60     		str	r3, [r7, #12]
 953              	.L59:
 157:graphic.c     **** 	}
 158:graphic.c     **** 	graphic_write_command(LCD_SET_ADD | x, controller);
 954              		.loc 1 158 0
 955 047c FB68     		ldr	r3, [r7, #12]
 956 047e DBB2     		uxtb	r3, r3
 957 0480 4022     		movs	r2, #64
 958 0482 1343     		orrs	r3, r2
 959 0484 DAB2     		uxtb	r2, r3
 960 0486 1E25     		movs	r5, #30
 961 0488 7B19     		adds	r3, r7, r5
 962 048a 1B78     		ldrb	r3, [r3]
 963 048c 1900     		movs	r1, r3
 964 048e 1000     		movs	r0, r2
 965 0490 FFF7FEFF 		bl	graphic_write_command
 159:graphic.c     **** 	graphic_write_command(LCD_SET_PAGE | index, controller);
 966              		.loc 1 159 0
 967 0494 BB69     		ldr	r3, [r7, #24]
 968 0496 5BB2     		sxtb	r3, r3
 969 0498 4822     		movs	r2, #72
 970 049a 5242     		rsbs	r2, r2, #0
 971 049c 1343     		orrs	r3, r2
 972 049e 5BB2     		sxtb	r3, r3
 973 04a0 DAB2     		uxtb	r2, r3
 974 04a2 7B19     		adds	r3, r7, r5
 975 04a4 1B78     		ldrb	r3, [r3]
 976 04a6 1900     		movs	r1, r3
 977 04a8 1000     		movs	r0, r2
 978 04aa FFF7FEFF 		bl	graphic_write_command
 160:graphic.c     **** 	c = graphic_read_data(controller);
 979              		.loc 1 160 0
 980 04ae 1723     		movs	r3, #23
 981 04b0 FC18     		adds	r4, r7, r3
 982 04b2 7B19     		adds	r3, r7, r5
 983 04b4 1B78     		ldrb	r3, [r3]
 984 04b6 1800     		movs	r0, r3
 985 04b8 FFF7FEFF 		bl	graphic_read_data
 986 04bc 0300     		movs	r3, r0
 987 04be 2370     		strb	r3, [r4]
 161:graphic.c     **** 	graphic_write_data(LCD_SET_ADD | x, controller);
 988              		.loc 1 161 0
 989 04c0 FB68     		ldr	r3, [r7, #12]
 990 04c2 DBB2     		uxtb	r3, r3
 991 04c4 4022     		movs	r2, #64
 992 04c6 1343     		orrs	r3, r2
 993 04c8 DAB2     		uxtb	r2, r3
 994 04ca 7B19     		adds	r3, r7, r5
 995 04cc 1B78     		ldrb	r3, [r3]
 996 04ce 1900     		movs	r1, r3
 997 04d0 1000     		movs	r0, r2
 998 04d2 FFF7FEFF 		bl	graphic_write_data
 162:graphic.c     **** 	
 163:graphic.c     **** 	if(set)
 999              		.loc 1 163 0
 1000 04d6 7B68     		ldr	r3, [r7, #4]
 1001 04d8 002B     		cmp	r3, #0
 1002 04da 09D0     		beq	.L60
 164:graphic.c     **** 		mask = mask | c;
 1003              		.loc 1 164 0
 1004 04dc 1F22     		movs	r2, #31
 1005 04de BB18     		adds	r3, r7, r2
 1006 04e0 B918     		adds	r1, r7, r2
 1007 04e2 1722     		movs	r2, #23
 1008 04e4 BA18     		adds	r2, r7, r2
 1009 04e6 0978     		ldrb	r1, [r1]
 1010 04e8 1278     		ldrb	r2, [r2]
 1011 04ea 0A43     		orrs	r2, r1
 1012 04ec 1A70     		strb	r2, [r3]
 1013 04ee 08E0     		b	.L61
 1014              	.L60:
 165:graphic.c     **** 	else
 166:graphic.c     **** 		mask = mask & c;
 1015              		.loc 1 166 0
 1016 04f0 1F22     		movs	r2, #31
 1017 04f2 BB18     		adds	r3, r7, r2
 1018 04f4 BA18     		adds	r2, r7, r2
 1019 04f6 1721     		movs	r1, #23
 1020 04f8 7918     		adds	r1, r7, r1
 1021 04fa 1278     		ldrb	r2, [r2]
 1022 04fc 0978     		ldrb	r1, [r1]
 1023 04fe 0A40     		ands	r2, r1
 1024 0500 1A70     		strb	r2, [r3]
 1025              	.L61:
 167:graphic.c     **** 		
 168:graphic.c     **** 	graphic_write_data(mask, controller);
 1026              		.loc 1 168 0
 1027 0502 1E23     		movs	r3, #30
 1028 0504 FB18     		adds	r3, r7, r3
 1029 0506 1A78     		ldrb	r2, [r3]
 1030 0508 1F23     		movs	r3, #31
 1031 050a FB18     		adds	r3, r7, r3
 1032 050c 1B78     		ldrb	r3, [r3]
 1033 050e 1100     		movs	r1, r2
 1034 0510 1800     		movs	r0, r3
 1035 0512 FFF7FEFF 		bl	graphic_write_data
 1036 0516 00E0     		b	.L43
 1037              	.L62:
 133:graphic.c     **** 	
 1038              		.loc 1 133 0
 1039 0518 C046     		nop
 1040              	.L43:
 169:graphic.c     **** }
 1041              		.loc 1 169 0
 1042 051a BD46     		mov	sp, r7
 1043 051c 08B0     		add	sp, sp, #32
 1044              		@ sp needed
 1045 051e B0BD     		pop	{r4, r5, r7, pc}
 1046              	.L64:
 1047              		.align	2
 1048              	.L63:
 1049 0520 00000000 		.word	.L49
 1050              		.cfi_endproc
 1051              	.LFE11:
 1053              		.global	ball_geometry
 1054              		.data
 1055              		.align	2
 1058              	ball_geometry:
 1059 0000 0C000000 		.word	12
 1060 0004 04000000 		.word	4
 1061 0008 04000000 		.word	4
 1062 000c 00       		.byte	0
 1063 000d 01       		.byte	1
 1064 000e 00       		.byte	0
 1065 000f 02       		.byte	2
 1066 0010 01       		.byte	1
 1067 0011 00       		.byte	0
 1068 0012 01       		.byte	1
 1069 0013 01       		.byte	1
 1070 0014 01       		.byte	1
 1071 0015 02       		.byte	2
 1072 0016 01       		.byte	1
 1073 0017 03       		.byte	3
 1074 0018 02       		.byte	2
 1075 0019 00       		.byte	0
 1076 001a 02       		.byte	2
 1077 001b 01       		.byte	1
 1078 001c 02       		.byte	2
 1079 001d 02       		.byte	2
 1080 001e 02       		.byte	2
 1081 001f 03       		.byte	3
 1082 0020 03       		.byte	3
 1083 0021 01       		.byte	1
 1084 0022 03       		.byte	3
 1085 0023 02       		.byte	2
 1086 0024 00000000 		.space	16
 1086      00000000 
 1086      00000000 
 1086      00000000 
 1087              		.text
 1088              		.align	1
 1089              		.global	set_object_speed
 1090              		.syntax unified
 1091              		.code	16
 1092              		.thumb_func
 1093              		.fpu softvfp
 1095              	set_object_speed:
 1096              	.LFB12:
 170:graphic.c     **** 
 171:graphic.c     **** //structs
 172:graphic.c     **** typedef struct tPoint{
 173:graphic.c     **** 	unsigned char x;
 174:graphic.c     **** 	unsigned char y;
 175:graphic.c     **** } POINT;
 176:graphic.c     **** 
 177:graphic.c     **** #define MAX_POINTS 20
 178:graphic.c     **** 
 179:graphic.c     **** typedef struct tGeometry{
 180:graphic.c     **** 	int numpoints;
 181:graphic.c     **** 	int sizex;
 182:graphic.c     **** 	int sizey;
 183:graphic.c     **** 	POINT px [MAX_POINTS];
 184:graphic.c     **** } GEOMETRY, *PGEOMETRY;
 185:graphic.c     **** 
 186:graphic.c     **** GEOMETRY ball_geometry = {12,
 187:graphic.c     ****  4, 4, 
 188:graphic.c     ****  { {0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} } };
 189:graphic.c     ****  
 190:graphic.c     ****  typedef struct tObj{
 191:graphic.c     **** 	 PGEOMETRY geo;
 192:graphic.c     **** 	 int dirx,diry;
 193:graphic.c     **** 	 int posx,posy;
 194:graphic.c     **** 	 void(*draw)(struct tObj *);
 195:graphic.c     **** 	 void(*clear)(struct tObj *);
 196:graphic.c     **** 	 void(*move)(struct tObj *);
 197:graphic.c     **** 	 void(*set_speed)(struct tObj *, int, int);
 198:graphic.c     ****  } OBJECT,*POBJECT;
 199:graphic.c     ****  
 200:graphic.c     ****  void set_object_speed(POBJECT o, int speedx, int speedy){
 1097              		.loc 1 200 0
 1098              		.cfi_startproc
 1099              		@ args = 0, pretend = 0, frame = 16
 1100              		@ frame_needed = 1, uses_anonymous_args = 0
 1101 0524 80B5     		push	{r7, lr}
 1102              		.cfi_def_cfa_offset 8
 1103              		.cfi_offset 7, -8
 1104              		.cfi_offset 14, -4
 1105 0526 84B0     		sub	sp, sp, #16
 1106              		.cfi_def_cfa_offset 24
 1107 0528 00AF     		add	r7, sp, #0
 1108              		.cfi_def_cfa_register 7
 1109 052a F860     		str	r0, [r7, #12]
 1110 052c B960     		str	r1, [r7, #8]
 1111 052e 7A60     		str	r2, [r7, #4]
 201:graphic.c     **** 	 o->dirx = speedx;
 1112              		.loc 1 201 0
 1113 0530 FB68     		ldr	r3, [r7, #12]
 1114 0532 BA68     		ldr	r2, [r7, #8]
 1115 0534 5A60     		str	r2, [r3, #4]
 202:graphic.c     **** 	 o->diry = speedy;
 1116              		.loc 1 202 0
 1117 0536 FB68     		ldr	r3, [r7, #12]
 1118 0538 7A68     		ldr	r2, [r7, #4]
 1119 053a 9A60     		str	r2, [r3, #8]
 203:graphic.c     ****  }	
 1120              		.loc 1 203 0
 1121 053c C046     		nop
 1122 053e BD46     		mov	sp, r7
 1123 0540 04B0     		add	sp, sp, #16
 1124              		@ sp needed
 1125 0542 80BD     		pop	{r7, pc}
 1126              		.cfi_endproc
 1127              	.LFE12:
 1129              		.align	1
 1130              		.global	draw_object
 1131              		.syntax unified
 1132              		.code	16
 1133              		.thumb_func
 1134              		.fpu softvfp
 1136              	draw_object:
 1137              	.LFB13:
 204:graphic.c     ****  
 205:graphic.c     ****  void draw_object(POBJECT o){
 1138              		.loc 1 205 0
 1139              		.cfi_startproc
 1140              		@ args = 0, pretend = 0, frame = 16
 1141              		@ frame_needed = 1, uses_anonymous_args = 0
 1142 0544 80B5     		push	{r7, lr}
 1143              		.cfi_def_cfa_offset 8
 1144              		.cfi_offset 7, -8
 1145              		.cfi_offset 14, -4
 1146 0546 84B0     		sub	sp, sp, #16
 1147              		.cfi_def_cfa_offset 24
 1148 0548 00AF     		add	r7, sp, #0
 1149              		.cfi_def_cfa_register 7
 1150 054a 7860     		str	r0, [r7, #4]
 1151              	.LBB4:
 206:graphic.c     **** 	 for(int i= 0; i<= o->geo->numpoints; i++){
 1152              		.loc 1 206 0
 1153 054c 0023     		movs	r3, #0
 1154 054e FB60     		str	r3, [r7, #12]
 1155 0550 1DE0     		b	.L67
 1156              	.L68:
 207:graphic.c     **** 		 pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y, 1);
 1157              		.loc 1 207 0 discriminator 3
 1158 0552 7B68     		ldr	r3, [r7, #4]
 1159 0554 DA68     		ldr	r2, [r3, #12]
 1160 0556 7B68     		ldr	r3, [r7, #4]
 1161 0558 1968     		ldr	r1, [r3]
 1162 055a FB68     		ldr	r3, [r7, #12]
 1163 055c 0433     		adds	r3, r3, #4
 1164 055e 5B00     		lsls	r3, r3, #1
 1165 0560 CB18     		adds	r3, r1, r3
 1166 0562 0433     		adds	r3, r3, #4
 1167 0564 1B78     		ldrb	r3, [r3]
 1168 0566 D318     		adds	r3, r2, r3
 1169 0568 1800     		movs	r0, r3
 1170 056a 7B68     		ldr	r3, [r7, #4]
 1171 056c 1A69     		ldr	r2, [r3, #16]
 1172 056e 7B68     		ldr	r3, [r7, #4]
 1173 0570 1968     		ldr	r1, [r3]
 1174 0572 FB68     		ldr	r3, [r7, #12]
 1175 0574 0433     		adds	r3, r3, #4
 1176 0576 5B00     		lsls	r3, r3, #1
 1177 0578 CB18     		adds	r3, r1, r3
 1178 057a 0533     		adds	r3, r3, #5
 1179 057c 1B78     		ldrb	r3, [r3]
 1180 057e D318     		adds	r3, r2, r3
 1181 0580 0122     		movs	r2, #1
 1182 0582 1900     		movs	r1, r3
 1183 0584 FFF7FEFF 		bl	pixel
 206:graphic.c     **** 	 for(int i= 0; i<= o->geo->numpoints; i++){
 1184              		.loc 1 206 0 discriminator 3
 1185 0588 FB68     		ldr	r3, [r7, #12]
 1186 058a 0133     		adds	r3, r3, #1
 1187 058c FB60     		str	r3, [r7, #12]
 1188              	.L67:
 206:graphic.c     **** 	 for(int i= 0; i<= o->geo->numpoints; i++){
 1189              		.loc 1 206 0 is_stmt 0 discriminator 1
 1190 058e 7B68     		ldr	r3, [r7, #4]
 1191 0590 1B68     		ldr	r3, [r3]
 1192 0592 1B68     		ldr	r3, [r3]
 1193 0594 FA68     		ldr	r2, [r7, #12]
 1194 0596 9A42     		cmp	r2, r3
 1195 0598 DBDD     		ble	.L68
 1196              	.LBE4:
 208:graphic.c     **** 	}
 209:graphic.c     ****  }
 1197              		.loc 1 209 0 is_stmt 1
 1198 059a C046     		nop
 1199 059c BD46     		mov	sp, r7
 1200 059e 04B0     		add	sp, sp, #16
 1201              		@ sp needed
 1202 05a0 80BD     		pop	{r7, pc}
 1203              		.cfi_endproc
 1204              	.LFE13:
 1206              		.align	1
 1207              		.global	clear_object
 1208              		.syntax unified
 1209              		.code	16
 1210              		.thumb_func
 1211              		.fpu softvfp
 1213              	clear_object:
 1214              	.LFB14:
 210:graphic.c     ****  void clear_object(POBJECT o){
 1215              		.loc 1 210 0
 1216              		.cfi_startproc
 1217              		@ args = 0, pretend = 0, frame = 16
 1218              		@ frame_needed = 1, uses_anonymous_args = 0
 1219 05a2 80B5     		push	{r7, lr}
 1220              		.cfi_def_cfa_offset 8
 1221              		.cfi_offset 7, -8
 1222              		.cfi_offset 14, -4
 1223 05a4 84B0     		sub	sp, sp, #16
 1224              		.cfi_def_cfa_offset 24
 1225 05a6 00AF     		add	r7, sp, #0
 1226              		.cfi_def_cfa_register 7
 1227 05a8 7860     		str	r0, [r7, #4]
 1228              	.LBB5:
 211:graphic.c     **** 	 for(int i= 0; i<= o->geo->numpoints; i++){
 1229              		.loc 1 211 0
 1230 05aa 0023     		movs	r3, #0
 1231 05ac FB60     		str	r3, [r7, #12]
 1232 05ae 1DE0     		b	.L70
 1233              	.L71:
 212:graphic.c     **** 		 pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y, 0);
 1234              		.loc 1 212 0 discriminator 3
 1235 05b0 7B68     		ldr	r3, [r7, #4]
 1236 05b2 DA68     		ldr	r2, [r3, #12]
 1237 05b4 7B68     		ldr	r3, [r7, #4]
 1238 05b6 1968     		ldr	r1, [r3]
 1239 05b8 FB68     		ldr	r3, [r7, #12]
 1240 05ba 0433     		adds	r3, r3, #4
 1241 05bc 5B00     		lsls	r3, r3, #1
 1242 05be CB18     		adds	r3, r1, r3
 1243 05c0 0433     		adds	r3, r3, #4
 1244 05c2 1B78     		ldrb	r3, [r3]
 1245 05c4 D318     		adds	r3, r2, r3
 1246 05c6 1800     		movs	r0, r3
 1247 05c8 7B68     		ldr	r3, [r7, #4]
 1248 05ca 1A69     		ldr	r2, [r3, #16]
 1249 05cc 7B68     		ldr	r3, [r7, #4]
 1250 05ce 1968     		ldr	r1, [r3]
 1251 05d0 FB68     		ldr	r3, [r7, #12]
 1252 05d2 0433     		adds	r3, r3, #4
 1253 05d4 5B00     		lsls	r3, r3, #1
 1254 05d6 CB18     		adds	r3, r1, r3
 1255 05d8 0533     		adds	r3, r3, #5
 1256 05da 1B78     		ldrb	r3, [r3]
 1257 05dc D318     		adds	r3, r2, r3
 1258 05de 0022     		movs	r2, #0
 1259 05e0 1900     		movs	r1, r3
 1260 05e2 FFF7FEFF 		bl	pixel
 211:graphic.c     **** 	 for(int i= 0; i<= o->geo->numpoints; i++){
 1261              		.loc 1 211 0 discriminator 3
 1262 05e6 FB68     		ldr	r3, [r7, #12]
 1263 05e8 0133     		adds	r3, r3, #1
 1264 05ea FB60     		str	r3, [r7, #12]
 1265              	.L70:
 211:graphic.c     **** 	 for(int i= 0; i<= o->geo->numpoints; i++){
 1266              		.loc 1 211 0 is_stmt 0 discriminator 1
 1267 05ec 7B68     		ldr	r3, [r7, #4]
 1268 05ee 1B68     		ldr	r3, [r3]
 1269 05f0 1B68     		ldr	r3, [r3]
 1270 05f2 FA68     		ldr	r2, [r7, #12]
 1271 05f4 9A42     		cmp	r2, r3
 1272 05f6 DBDD     		ble	.L71
 1273              	.LBE5:
 213:graphic.c     **** 	}
 214:graphic.c     ****  }
 1274              		.loc 1 214 0 is_stmt 1
 1275 05f8 C046     		nop
 1276 05fa BD46     		mov	sp, r7
 1277 05fc 04B0     		add	sp, sp, #16
 1278              		@ sp needed
 1279 05fe 80BD     		pop	{r7, pc}
 1280              		.cfi_endproc
 1281              	.LFE14:
 1283              		.align	1
 1284              		.global	move_object
 1285              		.syntax unified
 1286              		.code	16
 1287              		.thumb_func
 1288              		.fpu softvfp
 1290              	move_object:
 1291              	.LFB15:
 215:graphic.c     ****  
 216:graphic.c     ****  void move_object(POBJECT o){
 1292              		.loc 1 216 0
 1293              		.cfi_startproc
 1294              		@ args = 0, pretend = 0, frame = 8
 1295              		@ frame_needed = 1, uses_anonymous_args = 0
 1296 0600 90B5     		push	{r4, r7, lr}
 1297              		.cfi_def_cfa_offset 12
 1298              		.cfi_offset 4, -12
 1299              		.cfi_offset 7, -8
 1300              		.cfi_offset 14, -4
 1301 0602 83B0     		sub	sp, sp, #12
 1302              		.cfi_def_cfa_offset 24
 1303 0604 00AF     		add	r7, sp, #0
 1304              		.cfi_def_cfa_register 7
 1305 0606 7860     		str	r0, [r7, #4]
 217:graphic.c     **** 	o->clear(o);
 1306              		.loc 1 217 0
 1307 0608 7B68     		ldr	r3, [r7, #4]
 1308 060a 9B69     		ldr	r3, [r3, #24]
 1309 060c 7A68     		ldr	r2, [r7, #4]
 1310 060e 1000     		movs	r0, r2
 1311 0610 9847     		blx	r3
 1312              	.LVL0:
 218:graphic.c     **** 	if(o->posx < 1)
 1313              		.loc 1 218 0
 1314 0612 7B68     		ldr	r3, [r7, #4]
 1315 0614 DB68     		ldr	r3, [r3, #12]
 1316 0616 002B     		cmp	r3, #0
 1317 0618 09DC     		bgt	.L73
 219:graphic.c     **** 		o->set_speed(o, -o->dirx, o->diry);
 1318              		.loc 1 219 0
 1319 061a 7B68     		ldr	r3, [r7, #4]
 1320 061c 1C6A     		ldr	r4, [r3, #32]
 1321 061e 7B68     		ldr	r3, [r7, #4]
 1322 0620 5B68     		ldr	r3, [r3, #4]
 1323 0622 5942     		rsbs	r1, r3, #0
 1324 0624 7B68     		ldr	r3, [r7, #4]
 1325 0626 9A68     		ldr	r2, [r3, #8]
 1326 0628 7B68     		ldr	r3, [r7, #4]
 1327 062a 1800     		movs	r0, r3
 1328 062c A047     		blx	r4
 1329              	.LVL1:
 1330              	.L73:
 220:graphic.c     **** 	
 221:graphic.c     **** 	if(o->posx > 128)
 1331              		.loc 1 221 0
 1332 062e 7B68     		ldr	r3, [r7, #4]
 1333 0630 DB68     		ldr	r3, [r3, #12]
 1334 0632 802B     		cmp	r3, #128
 1335 0634 09DD     		ble	.L74
 222:graphic.c     **** 		o->set_speed(o, -o->dirx, o->diry);
 1336              		.loc 1 222 0
 1337 0636 7B68     		ldr	r3, [r7, #4]
 1338 0638 1C6A     		ldr	r4, [r3, #32]
 1339 063a 7B68     		ldr	r3, [r7, #4]
 1340 063c 5B68     		ldr	r3, [r3, #4]
 1341 063e 5942     		rsbs	r1, r3, #0
 1342 0640 7B68     		ldr	r3, [r7, #4]
 1343 0642 9A68     		ldr	r2, [r3, #8]
 1344 0644 7B68     		ldr	r3, [r7, #4]
 1345 0646 1800     		movs	r0, r3
 1346 0648 A047     		blx	r4
 1347              	.LVL2:
 1348              	.L74:
 223:graphic.c     **** 		
 224:graphic.c     **** 	if(o->posy < 1)
 1349              		.loc 1 224 0
 1350 064a 7B68     		ldr	r3, [r7, #4]
 1351 064c 1B69     		ldr	r3, [r3, #16]
 1352 064e 002B     		cmp	r3, #0
 1353 0650 09DC     		bgt	.L75
 225:graphic.c     **** 		o->set_speed(o, o->dirx, -o->diry);
 1354              		.loc 1 225 0
 1355 0652 7B68     		ldr	r3, [r7, #4]
 1356 0654 1C6A     		ldr	r4, [r3, #32]
 1357 0656 7B68     		ldr	r3, [r7, #4]
 1358 0658 5968     		ldr	r1, [r3, #4]
 1359 065a 7B68     		ldr	r3, [r7, #4]
 1360 065c 9B68     		ldr	r3, [r3, #8]
 1361 065e 5A42     		rsbs	r2, r3, #0
 1362 0660 7B68     		ldr	r3, [r7, #4]
 1363 0662 1800     		movs	r0, r3
 1364 0664 A047     		blx	r4
 1365              	.LVL3:
 1366              	.L75:
 226:graphic.c     **** 		
 227:graphic.c     **** 	if(o->posy > 64)
 1367              		.loc 1 227 0
 1368 0666 7B68     		ldr	r3, [r7, #4]
 1369 0668 1B69     		ldr	r3, [r3, #16]
 1370 066a 402B     		cmp	r3, #64
 1371 066c 09DD     		ble	.L76
 228:graphic.c     **** 		o->set_speed(o, o->dirx, -o->diry);
 1372              		.loc 1 228 0
 1373 066e 7B68     		ldr	r3, [r7, #4]
 1374 0670 1C6A     		ldr	r4, [r3, #32]
 1375 0672 7B68     		ldr	r3, [r7, #4]
 1376 0674 5968     		ldr	r1, [r3, #4]
 1377 0676 7B68     		ldr	r3, [r7, #4]
 1378 0678 9B68     		ldr	r3, [r3, #8]
 1379 067a 5A42     		rsbs	r2, r3, #0
 1380 067c 7B68     		ldr	r3, [r7, #4]
 1381 067e 1800     		movs	r0, r3
 1382 0680 A047     		blx	r4
 1383              	.LVL4:
 1384              	.L76:
 229:graphic.c     **** 		
 230:graphic.c     **** 	o->draw(o);
 1385              		.loc 1 230 0
 1386 0682 7B68     		ldr	r3, [r7, #4]
 1387 0684 5B69     		ldr	r3, [r3, #20]
 1388 0686 7A68     		ldr	r2, [r7, #4]
 1389 0688 1000     		movs	r0, r2
 1390 068a 9847     		blx	r3
 1391              	.LVL5:
 231:graphic.c     ****  }
 1392              		.loc 1 231 0
 1393 068c C046     		nop
 1394 068e BD46     		mov	sp, r7
 1395 0690 03B0     		add	sp, sp, #12
 1396              		@ sp needed
 1397 0692 90BD     		pop	{r4, r7, pc}
 1398              		.cfi_endproc
 1399              	.LFE15:
 1401              		.data
 1402              		.align	2
 1405              	ball:
 1406 0034 00000000 		.word	ball_geometry
 1407 0038 00000000 		.word	0
 1408 003c 00000000 		.word	0
 1409 0040 01000000 		.word	1
 1410 0044 01000000 		.word	1
 1411 0048 00000000 		.word	draw_object
 1412 004c 00000000 		.word	clear_object
 1413 0050 00000000 		.word	move_object
 1414 0054 00000000 		.word	set_object_speed
 1415              		.text
 1416              	.Letext0:
 1417              		.file 2 "startup.h"
