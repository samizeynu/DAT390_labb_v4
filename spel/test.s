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
  11              		.file	"graphics.c"
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
  24              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/graphics.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c ****  * 	graphics.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_ctrl_bit_set(uint8_t x){
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
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_ODR_E_LOW |= (~B_SELECT & x); 			//Dubbelkolla sedan
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
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_ctrl_bit_clear(uint8_t x){
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
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_ODR_E_LOW &= ~(B_SELECT | x);			//Dubbelkolla sedan
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
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** static void select_controller(uint8_t controller){
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
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	switch(controller){
 147              		.loc 1 17 0
 148 0080 FB1D     		adds	r3, r7, #7
 149 0082 1B78     		ldrb	r3, [r3]
 150 0084 082B     		cmp	r3, #8
 151 0086 0CD0     		beq	.L9
 152 0088 02DC     		bgt	.L10
 153 008a 002B     		cmp	r3, #0
 154 008c 05D0     		beq	.L11
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0x08: graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2); break;
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}	
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
 155              		.loc 1 23 0
 156 008e 1AE0     		b	.L14
 157              	.L10:
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	switch(controller){
 158              		.loc 1 17 0
 159 0090 102B     		cmp	r3, #16
 160 0092 0DD0     		beq	.L12
 161 0094 182B     		cmp	r3, #24
 162 0096 12D0     		beq	.L13
 163              		.loc 1 23 0
 164 0098 15E0     		b	.L14
 165              	.L11:
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
 166              		.loc 1 18 0
 167 009a 1820     		movs	r0, #24
 168 009c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 169 00a0 11E0     		b	.L8
 170              	.L9:
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
 171              		.loc 1 19 0
 172 00a2 0820     		movs	r0, #8
 173 00a4 FFF7FEFF 		bl	graphic_ctrl_bit_set
 174 00a8 1020     		movs	r0, #16
 175 00aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
 176 00ae 0AE0     		b	.L8
 177              	.L12:
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
 178              		.loc 1 20 0
 179 00b0 1020     		movs	r0, #16
 180 00b2 FFF7FEFF 		bl	graphic_ctrl_bit_set
 181 00b6 0820     		movs	r0, #8
 182 00b8 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 183 00bc 03E0     		b	.L8
 184              	.L13:
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}	
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
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** static void graphic_wait_ready(void){
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
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 218              		.loc 1 26 0
 219 00d2 4020     		movs	r0, #64
 220 00d4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_MODER_E = 0x00005555;
 221              		.loc 1 27 0
 222 00d8 124B     		ldr	r3, .L18
 223 00da 134A     		ldr	r2, .L18+4
 224 00dc 1A60     		str	r2, [r3]
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_RS);
 225              		.loc 1 28 0
 226 00de 0120     		movs	r0, #1
 227 00e0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_RW);
 228              		.loc 1 29 0
 229 00e4 0220     		movs	r0, #2
 230 00e6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	delay_500ns();
 231              		.loc 1 30 0
 232 00ea FFF7FEFF 		bl	delay_500ns
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	while(GPIO_IDR_E_HIGH & LCD_BUSY){
 233              		.loc 1 31 0
 234 00ee 09E0     		b	.L16
 235              	.L17:
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_ctrl_bit_set(B_E);
 236              		.loc 1 32 0
 237 00f0 4020     		movs	r0, #64
 238 00f2 FFF7FEFF 		bl	graphic_ctrl_bit_set
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		delay_500ns();
 239              		.loc 1 33 0
 240 00f6 FFF7FEFF 		bl	delay_500ns
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_ctrl_bit_clear(B_E);
 241              		.loc 1 34 0
 242 00fa 4020     		movs	r0, #64
 243 00fc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		delay_500ns();
 244              		.loc 1 35 0
 245 0100 FFF7FEFF 		bl	delay_500ns
 246              	.L16:
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_ctrl_bit_set(B_E);
 247              		.loc 1 31 0
 248 0104 094B     		ldr	r3, .L18+8
 249 0106 1B78     		ldrb	r3, [r3]
 250 0108 DBB2     		uxtb	r3, r3
 251 010a 5BB2     		sxtb	r3, r3
 252 010c 002B     		cmp	r3, #0
 253 010e EFDB     		blt	.L17
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 254              		.loc 1 37 0
 255 0110 4020     		movs	r0, #64
 256 0112 FFF7FEFF 		bl	graphic_ctrl_bit_set
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_MODER_E = 0x55555555;
 257              		.loc 1 38 0
 258 0116 034B     		ldr	r3, .L18
 259 0118 054A     		ldr	r2, .L18+12
 260 011a 1A60     		str	r2, [r3]
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** unsigned char graphic_read(unsigned char controller){
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
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	unsigned char read_data;
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 300              		.loc 1 43 0
 301 0140 4020     		movs	r0, #64
 302 0142 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_MODER_E = 0x00005555;
 303              		.loc 1 44 0
 304 0146 1A4B     		ldr	r3, .L24
 305 0148 1A4A     		ldr	r2, .L24+4
 306 014a 1A60     		str	r2, [r3]
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_RS | B_RW);
 307              		.loc 1 45 0
 308 014c 0320     		movs	r0, #3
 309 014e FFF7FEFF 		bl	graphic_ctrl_bit_set
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	select_controller(controller);
 310              		.loc 1 46 0
 311 0152 FB1D     		adds	r3, r7, #7
 312 0154 1B78     		ldrb	r3, [r3]
 313 0156 1800     		movs	r0, r3
 314 0158 FFF78CFF 		bl	select_controller
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	delay_500ns();
 315              		.loc 1 47 0
 316 015c FFF7FEFF 		bl	delay_500ns
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 317              		.loc 1 48 0
 318 0160 4020     		movs	r0, #64
 319 0162 FFF7FEFF 		bl	graphic_ctrl_bit_set
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	read_data = GPIO_IDR_E_HIGH;
 320              		.loc 1 49 0
 321 0166 144A     		ldr	r2, .L24+8
 322 0168 0F23     		movs	r3, #15
 323 016a FB18     		adds	r3, r7, r3
 324 016c 1278     		ldrb	r2, [r2]
 325 016e 1A70     		strb	r2, [r3]
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 326              		.loc 1 50 0
 327 0170 4020     		movs	r0, #64
 328 0172 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_MODER_E = 0x55555555;
 329              		.loc 1 51 0
 330 0176 0E4B     		ldr	r3, .L24
 331 0178 104A     		ldr	r2, .L24+12
 332 017a 1A60     		str	r2, [r3]
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	if(controller == B_CS1){
 333              		.loc 1 52 0
 334 017c FB1D     		adds	r3, r7, #7
 335 017e 1B78     		ldrb	r3, [r3]
 336 0180 082B     		cmp	r3, #8
 337 0182 04D1     		bne	.L21
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		select_controller(B_CS1);
 338              		.loc 1 53 0
 339 0184 0820     		movs	r0, #8
 340 0186 FFF775FF 		bl	select_controller
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_wait_ready();
 341              		.loc 1 54 0
 342 018a FFF7A0FF 		bl	graphic_wait_ready
 343              	.L21:
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	if (controller == B_CS2){
 344              		.loc 1 56 0
 345 018e FB1D     		adds	r3, r7, #7
 346 0190 1B78     		ldrb	r3, [r3]
 347 0192 102B     		cmp	r3, #16
 348 0194 04D1     		bne	.L22
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		select_controller(B_CS2);
 349              		.loc 1 57 0
 350 0196 1020     		movs	r0, #16
 351 0198 FFF76CFF 		bl	select_controller
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_wait_ready();
 352              		.loc 1 58 0
 353 019c FFF797FF 		bl	graphic_wait_ready
 354              	.L22:
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	return read_data;
 355              		.loc 1 60 0
 356 01a0 0F23     		movs	r3, #15
 357 01a2 FB18     		adds	r3, r7, r3
 358 01a4 1B78     		ldrb	r3, [r3]
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_write(unsigned char value, unsigned char controller){
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
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_ODR_E_HIGH = value;
 402              		.loc 1 64 0
 403 01d2 1A4A     		ldr	r2, .L29
 404 01d4 FB1D     		adds	r3, r7, #7
 405 01d6 1B78     		ldrb	r3, [r3]
 406 01d8 1370     		strb	r3, [r2]
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	select_controller(controller);
 407              		.loc 1 65 0
 408 01da BB1D     		adds	r3, r7, #6
 409 01dc 1B78     		ldrb	r3, [r3]
 410 01de 1800     		movs	r0, r3
 411 01e0 FFF748FF 		bl	select_controller
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	delay_500ns();
 412              		.loc 1 66 0
 413 01e4 FFF7FEFF 		bl	delay_500ns
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 414              		.loc 1 67 0
 415 01e8 4020     		movs	r0, #64
 416 01ea FFF7FEFF 		bl	graphic_ctrl_bit_set
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	delay_500ns();
 417              		.loc 1 68 0
 418 01ee FFF7FEFF 		bl	delay_500ns
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 419              		.loc 1 69 0
 420 01f2 4020     		movs	r0, #64
 421 01f4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	if(controller & B_CS1){
 422              		.loc 1 70 0
 423 01f8 BB1D     		adds	r3, r7, #6
 424 01fa 1B78     		ldrb	r3, [r3]
 425 01fc 0822     		movs	r2, #8
 426 01fe 1340     		ands	r3, r2
 427 0200 04D0     		beq	.L27
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		select_controller(B_CS1);
 428              		.loc 1 71 0
 429 0202 0820     		movs	r0, #8
 430 0204 FFF736FF 		bl	select_controller
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_wait_ready();
 431              		.loc 1 72 0
 432 0208 FFF761FF 		bl	graphic_wait_ready
 433              	.L27:
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	if(controller & B_CS2){
 434              		.loc 1 74 0
 435 020c BB1D     		adds	r3, r7, #6
 436 020e 1B78     		ldrb	r3, [r3]
 437 0210 1022     		movs	r2, #16
 438 0212 1340     		ands	r3, r2
 439 0214 04D0     		beq	.L28
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		select_controller(B_CS2);
 440              		.loc 1 75 0
 441 0216 1020     		movs	r0, #16
 442 0218 FFF72CFF 		bl	select_controller
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_wait_ready();
 443              		.loc 1 76 0
 444 021c FFF757FF 		bl	graphic_wait_ready
 445              	.L28:
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_ODR_E_HIGH = 0;
 446              		.loc 1 78 0
 447 0220 064B     		ldr	r3, .L29
 448 0222 0022     		movs	r2, #0
 449 0224 1A70     		strb	r2, [r3]
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_E);  		//ettställs som förberedelse för nästa arbetscykel
 450              		.loc 1 79 0
 451 0226 4020     		movs	r0, #64
 452 0228 FFF7FEFF 		bl	graphic_ctrl_bit_set
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	select_controller(0);
 453              		.loc 1 80 0
 454 022c 0020     		movs	r0, #0
 455 022e FFF721FF 		bl	select_controller
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_write_command(uint8_t command, uint8_t controller){
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
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 496              		.loc 1 84 0
 497 0252 4020     		movs	r0, #64
 498 0254 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	select_controller(controller);
 499              		.loc 1 85 0
 500 0258 BB1D     		adds	r3, r7, #6
 501 025a 1B78     		ldrb	r3, [r3]
 502 025c 1800     		movs	r0, r3
 503 025e FFF709FF 		bl	select_controller
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 504              		.loc 1 86 0
 505 0262 0320     		movs	r0, #3
 506 0264 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write(command, controller);
 507              		.loc 1 87 0
 508 0268 BB1D     		adds	r3, r7, #6
 509 026a 1A78     		ldrb	r2, [r3]
 510 026c FB1D     		adds	r3, r7, #7
 511 026e 1B78     		ldrb	r3, [r3]
 512 0270 1100     		movs	r1, r2
 513 0272 1800     		movs	r0, r3
 514 0274 FFF7FEFF 		bl	graphic_write
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_write_data(uint8_t data, uint8_t controller){
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
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 551              		.loc 1 91 0
 552 0292 4020     		movs	r0, #64
 553 0294 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	select_controller(controller);
 554              		.loc 1 92 0
 555 0298 BB1D     		adds	r3, r7, #6
 556 029a 1B78     		ldrb	r3, [r3]
 557 029c 1800     		movs	r0, r3
 558 029e FFF7E9FE 		bl	select_controller
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_RS);
 559              		.loc 1 93 0
 560 02a2 0120     		movs	r0, #1
 561 02a4 FFF7FEFF 		bl	graphic_ctrl_bit_set
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_RW);
 562              		.loc 1 94 0
 563 02a8 0220     		movs	r0, #2
 564 02aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write(data, controller);
 565              		.loc 1 95 0
 566 02ae BB1D     		adds	r3, r7, #6
 567 02b0 1A78     		ldrb	r2, [r3]
 568 02b2 FB1D     		adds	r3, r7, #7
 569 02b4 1B78     		ldrb	r3, [r3]
 570 02b6 1100     		movs	r1, r2
 571 02b8 1800     		movs	r0, r3
 572 02ba FFF7FEFF 		bl	graphic_write
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** unsigned char graphic_read_data(unsigned char controller){
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
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	(void) graphic_read(controller);
 606              		.loc 1 99 0
 607 02d2 FB1D     		adds	r3, r7, #7
 608 02d4 1B78     		ldrb	r3, [r3]
 609 02d6 1800     		movs	r0, r3
 610 02d8 FFF7FEFF 		bl	graphic_read
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	return graphic_read(controller);
 611              		.loc 1 101 0
 612 02dc FB1D     		adds	r3, r7, #7
 613 02de 1B78     		ldrb	r3, [r3]
 614 02e0 1800     		movs	r0, r3
 615 02e2 FFF7FEFF 		bl	graphic_read
 616 02e6 0300     		movs	r3, r0
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_init(){
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
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	GPIO_MODER_E = 0x55555555;
 645              		.loc 1 105 0
 646 02f4 154B     		ldr	r3, .L36
 647 02f6 164A     		ldr	r2, .L36+4
 648 02f8 1A60     		str	r2, [r3]
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 649              		.loc 1 107 0
 650 02fa 4020     		movs	r0, #64
 651 02fc FFF7FEFF 		bl	graphic_ctrl_bit_set
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	delay_micro(10);
 652              		.loc 1 108 0
 653 0300 0A20     		movs	r0, #10
 654 0302 FFF7FEFF 		bl	delay_micro
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RESET | B_E);
 655              		.loc 1 109 0
 656 0306 7820     		movs	r0, #120
 657 0308 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	delay_milli(30);
 658              		.loc 1 110 0
 659 030c 1E20     		movs	r0, #30
 660 030e FFF7FEFF 		bl	delay_milli
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_ctrl_bit_set(B_RESET);
 661              		.loc 1 111 0
 662 0312 2020     		movs	r0, #32
 663 0314 FFF7FEFF 		bl	graphic_ctrl_bit_set
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 664              		.loc 1 112 0
 665 0318 1821     		movs	r1, #24
 666 031a 3E20     		movs	r0, #62
 667 031c FFF7FEFF 		bl	graphic_write_command
 113:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 668              		.loc 1 113 0
 669 0320 1821     		movs	r1, #24
 670 0322 3F20     		movs	r0, #63
 671 0324 FFF7FEFF 		bl	graphic_write_command
 114:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 672              		.loc 1 114 0
 673 0328 1821     		movs	r1, #24
 674 032a C020     		movs	r0, #192
 675 032c FFF7FEFF 		bl	graphic_write_command
 115:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 676              		.loc 1 115 0
 677 0330 1821     		movs	r1, #24
 678 0332 4020     		movs	r0, #64
 679 0334 FFF7FEFF 		bl	graphic_write_command
 116:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
 680              		.loc 1 116 0
 681 0338 1821     		movs	r1, #24
 682 033a B820     		movs	r0, #184
 683 033c FFF7FEFF 		bl	graphic_write_command
 117:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	select_controller(0);
 684              		.loc 1 117 0
 685 0340 0020     		movs	r0, #0
 686 0342 FFF797FE 		bl	select_controller
 118:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
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
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
 120:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_clear_screen(){
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
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	for(int page = 0; page <=7; page++){
 722              		.loc 1 121 0
 723 035a 0023     		movs	r3, #0
 724 035c 7B60     		str	r3, [r7, #4]
 725 035e 1EE0     		b	.L39
 726              	.L42:
 122:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
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
 123:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 738              		.loc 1 123 0
 739 0376 1821     		movs	r1, #24
 740 0378 4020     		movs	r0, #64
 741 037a FFF7FEFF 		bl	graphic_write_command
 742              	.LBB3:
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		for (int adress = 0; adress <= 63; adress++)
 743              		.loc 1 124 0
 744 037e 0023     		movs	r3, #0
 745 0380 3B60     		str	r3, [r7]
 746 0382 06E0     		b	.L40
 747              	.L41:
 125:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 748              		.loc 1 125 0 discriminator 3
 749 0384 1821     		movs	r1, #24
 750 0386 0020     		movs	r0, #0
 751 0388 FFF7FEFF 		bl	graphic_write_data
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		for (int adress = 0; adress <= 63; adress++)
 752              		.loc 1 124 0 discriminator 3
 753 038c 3B68     		ldr	r3, [r7]
 754 038e 0133     		adds	r3, r3, #1
 755 0390 3B60     		str	r3, [r7]
 756              	.L40:
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		for (int adress = 0; adress <= 63; adress++)
 757              		.loc 1 124 0 is_stmt 0 discriminator 1
 758 0392 3B68     		ldr	r3, [r7]
 759 0394 3F2B     		cmp	r3, #63
 760 0396 F5DD     		ble	.L41
 761              	.LBE3:
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 762              		.loc 1 121 0 is_stmt 1 discriminator 2
 763 0398 7B68     		ldr	r3, [r7, #4]
 764 039a 0133     		adds	r3, r3, #1
 765 039c 7B60     		str	r3, [r7, #4]
 766              	.L39:
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 767              		.loc 1 121 0 is_stmt 0 discriminator 1
 768 039e 7B68     		ldr	r3, [r7, #4]
 769 03a0 072B     		cmp	r3, #7
 770 03a2 DDDD     		ble	.L42
 771              	.LBE2:
 126:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
 127:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
 772              		.loc 1 127 0 is_stmt 1
 773 03a4 C046     		nop
 774 03a6 BD46     		mov	sp, r7
 775 03a8 02B0     		add	sp, sp, #8
 776              		@ sp needed
 777 03aa 80BD     		pop	{r7, pc}
 778              		.cfi_endproc
 779              	.LFE10:
 781              		.comm	backBuffer,1024,4
 782              		.align	1
 783              		.global	pixel
 784              		.syntax unified
 785              		.code	16
 786              		.thumb_func
 787              		.fpu softvfp
 789              	pixel:
 790              	.LFB11:
 128:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
 129:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** uint8_t backBuffer[1024]; // 128 * 64 / 8
 130:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
 131:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void pixel (unsigned int x, unsigned int y){
 791              		.loc 1 131 0
 792              		.cfi_startproc
 793              		@ args = 0, pretend = 0, frame = 16
 794              		@ frame_needed = 1, uses_anonymous_args = 0
 795 03ac 80B5     		push	{r7, lr}
 796              		.cfi_def_cfa_offset 8
 797              		.cfi_offset 7, -8
 798              		.cfi_offset 14, -4
 799 03ae 84B0     		sub	sp, sp, #16
 800              		.cfi_def_cfa_offset 24
 801 03b0 00AF     		add	r7, sp, #0
 802              		.cfi_def_cfa_register 7
 803 03b2 7860     		str	r0, [r7, #4]
 804 03b4 3960     		str	r1, [r7]
 132:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	uint8_t mask;
 133:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	int index = 0;
 805              		.loc 1 133 0
 806 03b6 0023     		movs	r3, #0
 807 03b8 FB60     		str	r3, [r7, #12]
 134:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	if (y < 1 || y > 64 || x < 1 || x > 128) 
 808              		.loc 1 134 0
 809 03ba 3B68     		ldr	r3, [r7]
 810 03bc 002B     		cmp	r3, #0
 811 03be 32D0     		beq	.L48
 812              		.loc 1 134 0 is_stmt 0 discriminator 1
 813 03c0 3B68     		ldr	r3, [r7]
 814 03c2 402B     		cmp	r3, #64
 815 03c4 2FD8     		bhi	.L48
 816              		.loc 1 134 0 discriminator 2
 817 03c6 7B68     		ldr	r3, [r7, #4]
 818 03c8 002B     		cmp	r3, #0
 819 03ca 2CD0     		beq	.L48
 820              		.loc 1 134 0 discriminator 3
 821 03cc 7B68     		ldr	r3, [r7, #4]
 822 03ce 802B     		cmp	r3, #128
 823 03d0 29D8     		bhi	.L48
 135:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		return;
 136:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 137:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	mask = 1 << ((y-1) % 8);
 824              		.loc 1 137 0 is_stmt 1
 825 03d2 3B68     		ldr	r3, [r7]
 826 03d4 013B     		subs	r3, r3, #1
 827 03d6 0722     		movs	r2, #7
 828 03d8 1340     		ands	r3, r2
 829 03da 0122     		movs	r2, #1
 830 03dc 9A40     		lsls	r2, r2, r3
 831 03de 0B23     		movs	r3, #11
 832 03e0 FB18     		adds	r3, r7, r3
 833 03e2 1A70     		strb	r2, [r3]
 138:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 139:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	if(x > 64){
 834              		.loc 1 139 0
 835 03e4 7B68     		ldr	r3, [r7, #4]
 836 03e6 402B     		cmp	r3, #64
 837 03e8 05D9     		bls	.L47
 140:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		index = 512;
 838              		.loc 1 140 0
 839 03ea 8023     		movs	r3, #128
 840 03ec 9B00     		lsls	r3, r3, #2
 841 03ee FB60     		str	r3, [r7, #12]
 141:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		x -= 65;
 842              		.loc 1 141 0
 843 03f0 7B68     		ldr	r3, [r7, #4]
 844 03f2 413B     		subs	r3, r3, #65
 845 03f4 7B60     		str	r3, [r7, #4]
 846              	.L47:
 142:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}
 143:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 144:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	index += x + ((y-1) / 8) * 64; 
 847              		.loc 1 144 0
 848 03f6 3B68     		ldr	r3, [r7]
 849 03f8 013B     		subs	r3, r3, #1
 850 03fa DB08     		lsrs	r3, r3, #3
 851 03fc 9A01     		lsls	r2, r3, #6
 852 03fe 7B68     		ldr	r3, [r7, #4]
 853 0400 D218     		adds	r2, r2, r3
 854 0402 FB68     		ldr	r3, [r7, #12]
 855 0404 D318     		adds	r3, r2, r3
 856 0406 FB60     		str	r3, [r7, #12]
 145:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 146:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	backBuffer[index] |= mask;
 857              		.loc 1 146 0
 858 0408 094A     		ldr	r2, .L49
 859 040a FB68     		ldr	r3, [r7, #12]
 860 040c D318     		adds	r3, r2, r3
 861 040e 1A78     		ldrb	r2, [r3]
 862 0410 0B23     		movs	r3, #11
 863 0412 FB18     		adds	r3, r7, r3
 864 0414 1B78     		ldrb	r3, [r3]
 865 0416 1343     		orrs	r3, r2
 866 0418 D9B2     		uxtb	r1, r3
 867 041a 054A     		ldr	r2, .L49
 868 041c FB68     		ldr	r3, [r7, #12]
 869 041e D318     		adds	r3, r2, r3
 870 0420 0A1C     		adds	r2, r1, #0
 871 0422 1A70     		strb	r2, [r3]
 872 0424 00E0     		b	.L43
 873              	.L48:
 135:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	
 874              		.loc 1 135 0
 875 0426 C046     		nop
 876              	.L43:
 147:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
 877              		.loc 1 147 0
 878 0428 BD46     		mov	sp, r7
 879 042a 04B0     		add	sp, sp, #16
 880              		@ sp needed
 881 042c 80BD     		pop	{r7, pc}
 882              	.L50:
 883 042e C046     		.align	2
 884              	.L49:
 885 0430 00000000 		.word	backBuffer
 886              		.cfi_endproc
 887              	.LFE11:
 889              		.align	1
 890              		.global	graphic_draw_screen
 891              		.syntax unified
 892              		.code	16
 893              		.thumb_func
 894              		.fpu softvfp
 896              	graphic_draw_screen:
 897              	.LFB12:
 148:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
 149:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void graphic_draw_screen(void) {
 898              		.loc 1 149 0
 899              		.cfi_startproc
 900              		@ args = 0, pretend = 0, frame = 16
 901              		@ frame_needed = 1, uses_anonymous_args = 0
 902 0434 80B5     		push	{r7, lr}
 903              		.cfi_def_cfa_offset 8
 904              		.cfi_offset 7, -8
 905              		.cfi_offset 14, -4
 906 0436 84B0     		sub	sp, sp, #16
 907              		.cfi_def_cfa_offset 24
 908 0438 00AF     		add	r7, sp, #0
 909              		.cfi_def_cfa_register 7
 150:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	uint8_t i, j, controller, c;
 151:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	unsigned int k = 0;
 910              		.loc 1 151 0
 911 043a 0023     		movs	r3, #0
 912 043c BB60     		str	r3, [r7, #8]
 152:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	for(c = 0; c < 2; c++) {
 913              		.loc 1 152 0
 914 043e 0D23     		movs	r3, #13
 915 0440 FB18     		adds	r3, r7, r3
 916 0442 0022     		movs	r2, #0
 917 0444 1A70     		strb	r2, [r3]
 918 0446 4FE0     		b	.L52
 919              	.L59:
 153:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 920              		.loc 1 153 0
 921 0448 0D23     		movs	r3, #13
 922 044a FB18     		adds	r3, r7, r3
 923 044c 1B78     		ldrb	r3, [r3]
 924 044e 002B     		cmp	r3, #0
 925 0450 01D1     		bne	.L53
 926              		.loc 1 153 0 is_stmt 0 discriminator 1
 927 0452 0822     		movs	r2, #8
 928 0454 00E0     		b	.L54
 929              	.L53:
 930              		.loc 1 153 0 discriminator 2
 931 0456 1022     		movs	r2, #16
 932              	.L54:
 933              		.loc 1 153 0 discriminator 4
 934 0458 FB1D     		adds	r3, r7, #7
 935 045a 1A70     		strb	r2, [r3]
 154:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		for(j = 0; j < 8; j++) {
 936              		.loc 1 154 0 is_stmt 1 discriminator 4
 937 045c 0E23     		movs	r3, #14
 938 045e FB18     		adds	r3, r7, r3
 939 0460 0022     		movs	r2, #0
 940 0462 1A70     		strb	r2, [r3]
 941 0464 35E0     		b	.L55
 942              	.L58:
 155:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 943              		.loc 1 155 0
 944 0466 0E23     		movs	r3, #14
 945 0468 FB18     		adds	r3, r7, r3
 946 046a 1B78     		ldrb	r3, [r3]
 947 046c 4822     		movs	r2, #72
 948 046e 5242     		rsbs	r2, r2, #0
 949 0470 1343     		orrs	r3, r2
 950 0472 DAB2     		uxtb	r2, r3
 951 0474 FB1D     		adds	r3, r7, #7
 952 0476 1B78     		ldrb	r3, [r3]
 953 0478 1900     		movs	r1, r3
 954 047a 1000     		movs	r0, r2
 955 047c FFF7FEFF 		bl	graphic_write_command
 156:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			graphic_write_command(LCD_SET_ADD | 0, controller);
 956              		.loc 1 156 0
 957 0480 FB1D     		adds	r3, r7, #7
 958 0482 1B78     		ldrb	r3, [r3]
 959 0484 1900     		movs	r1, r3
 960 0486 4020     		movs	r0, #64
 961 0488 FFF7FEFF 		bl	graphic_write_command
 157:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			for(i = 0; i <= 63; i++, k++) {
 962              		.loc 1 157 0
 963 048c 0F23     		movs	r3, #15
 964 048e FB18     		adds	r3, r7, r3
 965 0490 0022     		movs	r2, #0
 966 0492 1A70     		strb	r2, [r3]
 967 0494 12E0     		b	.L56
 968              	.L57:
 158:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 				graphic_write_data(backBuffer[k], controller);
 969              		.loc 1 158 0 discriminator 3
 970 0496 194A     		ldr	r2, .L60
 971 0498 BB68     		ldr	r3, [r7, #8]
 972 049a D318     		adds	r3, r2, r3
 973 049c 1A78     		ldrb	r2, [r3]
 974 049e FB1D     		adds	r3, r7, #7
 975 04a0 1B78     		ldrb	r3, [r3]
 976 04a2 1900     		movs	r1, r3
 977 04a4 1000     		movs	r0, r2
 978 04a6 FFF7FEFF 		bl	graphic_write_data
 157:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			for(i = 0; i <= 63; i++, k++) {
 979              		.loc 1 157 0 discriminator 3
 980 04aa 0F21     		movs	r1, #15
 981 04ac 7B18     		adds	r3, r7, r1
 982 04ae 1A78     		ldrb	r2, [r3]
 983 04b0 7B18     		adds	r3, r7, r1
 984 04b2 0132     		adds	r2, r2, #1
 985 04b4 1A70     		strb	r2, [r3]
 986 04b6 BB68     		ldr	r3, [r7, #8]
 987 04b8 0133     		adds	r3, r3, #1
 988 04ba BB60     		str	r3, [r7, #8]
 989              	.L56:
 157:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			for(i = 0; i <= 63; i++, k++) {
 990              		.loc 1 157 0 is_stmt 0 discriminator 1
 991 04bc 0F23     		movs	r3, #15
 992 04be FB18     		adds	r3, r7, r3
 993 04c0 1B78     		ldrb	r3, [r3]
 994 04c2 3F2B     		cmp	r3, #63
 995 04c4 E7D9     		bls	.L57
 154:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 996              		.loc 1 154 0 is_stmt 1 discriminator 2
 997 04c6 0E21     		movs	r1, #14
 998 04c8 7B18     		adds	r3, r7, r1
 999 04ca 1A78     		ldrb	r2, [r3]
 1000 04cc 7B18     		adds	r3, r7, r1
 1001 04ce 0132     		adds	r2, r2, #1
 1002 04d0 1A70     		strb	r2, [r3]
 1003              	.L55:
 154:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1004              		.loc 1 154 0 is_stmt 0 discriminator 1
 1005 04d2 0E23     		movs	r3, #14
 1006 04d4 FB18     		adds	r3, r7, r3
 1007 04d6 1B78     		ldrb	r3, [r3]
 1008 04d8 072B     		cmp	r3, #7
 1009 04da C4D9     		bls	.L58
 152:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1010              		.loc 1 152 0 is_stmt 1 discriminator 2
 1011 04dc 0D21     		movs	r1, #13
 1012 04de 7B18     		adds	r3, r7, r1
 1013 04e0 1A78     		ldrb	r2, [r3]
 1014 04e2 7B18     		adds	r3, r7, r1
 1015 04e4 0132     		adds	r2, r2, #1
 1016 04e6 1A70     		strb	r2, [r3]
 1017              	.L52:
 152:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1018              		.loc 1 152 0 is_stmt 0 discriminator 1
 1019 04e8 0D23     		movs	r3, #13
 1020 04ea FB18     		adds	r3, r7, r3
 1021 04ec 1B78     		ldrb	r3, [r3]
 1022 04ee 012B     		cmp	r3, #1
 1023 04f0 AAD9     		bls	.L59
 159:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	}	}	}
 160:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
 1024              		.loc 1 160 0 is_stmt 1
 1025 04f2 C046     		nop
 1026 04f4 BD46     		mov	sp, r7
 1027 04f6 04B0     		add	sp, sp, #16
 1028              		@ sp needed
 1029 04f8 80BD     		pop	{r7, pc}
 1030              	.L61:
 1031 04fa C046     		.align	2
 1032              	.L60:
 1033 04fc 00000000 		.word	backBuffer
 1034              		.cfi_endproc
 1035              	.LFE12:
 1037              		.align	1
 1038              		.global	clear_backBuffer
 1039              		.syntax unified
 1040              		.code	16
 1041              		.thumb_func
 1042              		.fpu softvfp
 1044              	clear_backBuffer:
 1045              	.LFB13:
 161:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 
 162:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** void clear_backBuffer() {
 1046              		.loc 1 162 0
 1047              		.cfi_startproc
 1048              		@ args = 0, pretend = 0, frame = 8
 1049              		@ frame_needed = 1, uses_anonymous_args = 0
 1050 0500 80B5     		push	{r7, lr}
 1051              		.cfi_def_cfa_offset 8
 1052              		.cfi_offset 7, -8
 1053              		.cfi_offset 14, -4
 1054 0502 82B0     		sub	sp, sp, #8
 1055              		.cfi_def_cfa_offset 16
 1056 0504 00AF     		add	r7, sp, #0
 1057              		.cfi_def_cfa_register 7
 163:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	int i;
 164:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 	for (i = 0; i < 1024; i++)
 1058              		.loc 1 164 0
 1059 0506 0023     		movs	r3, #0
 1060 0508 7B60     		str	r3, [r7, #4]
 1061 050a 07E0     		b	.L63
 1062              	.L64:
 165:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		backBuffer[i] = 0;
 1063              		.loc 1 165 0 discriminator 3
 1064 050c 074A     		ldr	r2, .L65
 1065 050e 7B68     		ldr	r3, [r7, #4]
 1066 0510 D318     		adds	r3, r2, r3
 1067 0512 0022     		movs	r2, #0
 1068 0514 1A70     		strb	r2, [r3]
 164:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		backBuffer[i] = 0;
 1069              		.loc 1 164 0 discriminator 3
 1070 0516 7B68     		ldr	r3, [r7, #4]
 1071 0518 0133     		adds	r3, r3, #1
 1072 051a 7B60     		str	r3, [r7, #4]
 1073              	.L63:
 164:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** 		backBuffer[i] = 0;
 1074              		.loc 1 164 0 is_stmt 0 discriminator 1
 1075 051c 7B68     		ldr	r3, [r7, #4]
 1076 051e 044A     		ldr	r2, .L65+4
 1077 0520 9342     		cmp	r3, r2
 1078 0522 F3DD     		ble	.L64
 166:C:/Users/Andre/Desktop/DAT390_labb_v4/spel\graphics.c **** }
 1079              		.loc 1 166 0 is_stmt 1
 1080 0524 C046     		nop
 1081 0526 BD46     		mov	sp, r7
 1082 0528 02B0     		add	sp, sp, #8
 1083              		@ sp needed
 1084 052a 80BD     		pop	{r7, pc}
 1085              	.L66:
 1086              		.align	2
 1087              	.L65:
 1088 052c 00000000 		.word	backBuffer
 1089 0530 FF030000 		.word	1023
 1090              		.cfi_endproc
 1091              	.LFE13:
 1093              	.Letext0:
 1094              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/startup.h"
