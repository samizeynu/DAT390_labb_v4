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
  24              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/autopong/graphics.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c ****  * 	graphics.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_ctrl_bit_set(uint8_t x){
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
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_ODR_E_LOW |= (~B_SELECT & x); 			//Dubbelkolla sedan
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
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_ctrl_bit_clear(uint8_t x){
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
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_ODR_E_LOW &= ~(B_SELECT | x);			//Dubbelkolla sedan
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
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** static void select_controller(uint8_t controller){
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
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	switch(controller){
 147              		.loc 1 17 0
 148 0080 FB1D     		adds	r3, r7, #7
 149 0082 1B78     		ldrb	r3, [r3]
 150 0084 082B     		cmp	r3, #8
 151 0086 0CD0     		beq	.L9
 152 0088 02DC     		bgt	.L10
 153 008a 002B     		cmp	r3, #0
 154 008c 05D0     		beq	.L11
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0x08: graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2); break;
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}	
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
 155              		.loc 1 23 0
 156 008e 1AE0     		b	.L14
 157              	.L10:
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	switch(controller){
 158              		.loc 1 17 0
 159 0090 102B     		cmp	r3, #16
 160 0092 0DD0     		beq	.L12
 161 0094 182B     		cmp	r3, #24
 162 0096 12D0     		beq	.L13
 163              		.loc 1 23 0
 164 0098 15E0     		b	.L14
 165              	.L11:
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
 166              		.loc 1 18 0
 167 009a 1820     		movs	r0, #24
 168 009c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 169 00a0 11E0     		b	.L8
 170              	.L9:
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
 171              		.loc 1 19 0
 172 00a2 0820     		movs	r0, #8
 173 00a4 FFF7FEFF 		bl	graphic_ctrl_bit_set
 174 00a8 1020     		movs	r0, #16
 175 00aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
 176 00ae 0AE0     		b	.L8
 177              	.L12:
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
 178              		.loc 1 20 0
 179 00b0 1020     		movs	r0, #16
 180 00b2 FFF7FEFF 		bl	graphic_ctrl_bit_set
 181 00b6 0820     		movs	r0, #8
 182 00b8 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 183 00bc 03E0     		b	.L8
 184              	.L13:
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}	
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
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** static void graphic_wait_ready(void){
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
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 218              		.loc 1 26 0
 219 00d2 4020     		movs	r0, #64
 220 00d4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_MODER_E = 0x00005555;
 221              		.loc 1 27 0
 222 00d8 124B     		ldr	r3, .L18
 223 00da 134A     		ldr	r2, .L18+4
 224 00dc 1A60     		str	r2, [r3]
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_RS);
 225              		.loc 1 28 0
 226 00de 0120     		movs	r0, #1
 227 00e0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_RW);
 228              		.loc 1 29 0
 229 00e4 0220     		movs	r0, #2
 230 00e6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	delay_500ns();
 231              		.loc 1 30 0
 232 00ea FFF7FEFF 		bl	delay_500ns
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	while(GPIO_IDR_E_HIGH & LCD_BUSY){
 233              		.loc 1 31 0
 234 00ee 09E0     		b	.L16
 235              	.L17:
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_ctrl_bit_set(B_E);
 236              		.loc 1 32 0
 237 00f0 4020     		movs	r0, #64
 238 00f2 FFF7FEFF 		bl	graphic_ctrl_bit_set
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		delay_500ns();
 239              		.loc 1 33 0
 240 00f6 FFF7FEFF 		bl	delay_500ns
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_ctrl_bit_clear(B_E);
 241              		.loc 1 34 0
 242 00fa 4020     		movs	r0, #64
 243 00fc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		delay_500ns();
 244              		.loc 1 35 0
 245 0100 FFF7FEFF 		bl	delay_500ns
 246              	.L16:
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_ctrl_bit_set(B_E);
 247              		.loc 1 31 0
 248 0104 094B     		ldr	r3, .L18+8
 249 0106 1B78     		ldrb	r3, [r3]
 250 0108 DBB2     		uxtb	r3, r3
 251 010a 5BB2     		sxtb	r3, r3
 252 010c 002B     		cmp	r3, #0
 253 010e EFDB     		blt	.L17
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 254              		.loc 1 37 0
 255 0110 4020     		movs	r0, #64
 256 0112 FFF7FEFF 		bl	graphic_ctrl_bit_set
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_MODER_E = 0x55555555;
 257              		.loc 1 38 0
 258 0116 034B     		ldr	r3, .L18
 259 0118 054A     		ldr	r2, .L18+12
 260 011a 1A60     		str	r2, [r3]
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** unsigned char graphic_read(unsigned char controller){
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
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	unsigned char read_data;
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 300              		.loc 1 43 0
 301 0140 4020     		movs	r0, #64
 302 0142 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_MODER_E = 0x00005555;
 303              		.loc 1 44 0
 304 0146 1A4B     		ldr	r3, .L24
 305 0148 1A4A     		ldr	r2, .L24+4
 306 014a 1A60     		str	r2, [r3]
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_RS | B_RW);
 307              		.loc 1 45 0
 308 014c 0320     		movs	r0, #3
 309 014e FFF7FEFF 		bl	graphic_ctrl_bit_set
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	select_controller(controller);
 310              		.loc 1 46 0
 311 0152 FB1D     		adds	r3, r7, #7
 312 0154 1B78     		ldrb	r3, [r3]
 313 0156 1800     		movs	r0, r3
 314 0158 FFF78CFF 		bl	select_controller
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	delay_500ns();
 315              		.loc 1 47 0
 316 015c FFF7FEFF 		bl	delay_500ns
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 317              		.loc 1 48 0
 318 0160 4020     		movs	r0, #64
 319 0162 FFF7FEFF 		bl	graphic_ctrl_bit_set
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	read_data = GPIO_IDR_E_HIGH;
 320              		.loc 1 49 0
 321 0166 144A     		ldr	r2, .L24+8
 322 0168 0F23     		movs	r3, #15
 323 016a FB18     		adds	r3, r7, r3
 324 016c 1278     		ldrb	r2, [r2]
 325 016e 1A70     		strb	r2, [r3]
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 326              		.loc 1 50 0
 327 0170 4020     		movs	r0, #64
 328 0172 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_MODER_E = 0x55555555;
 329              		.loc 1 51 0
 330 0176 0E4B     		ldr	r3, .L24
 331 0178 104A     		ldr	r2, .L24+12
 332 017a 1A60     		str	r2, [r3]
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if(controller == B_CS1){
 333              		.loc 1 52 0
 334 017c FB1D     		adds	r3, r7, #7
 335 017e 1B78     		ldrb	r3, [r3]
 336 0180 082B     		cmp	r3, #8
 337 0182 04D1     		bne	.L21
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		select_controller(B_CS1);
 338              		.loc 1 53 0
 339 0184 0820     		movs	r0, #8
 340 0186 FFF775FF 		bl	select_controller
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_wait_ready();
 341              		.loc 1 54 0
 342 018a FFF7A0FF 		bl	graphic_wait_ready
 343              	.L21:
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if (controller == B_CS2){
 344              		.loc 1 56 0
 345 018e FB1D     		adds	r3, r7, #7
 346 0190 1B78     		ldrb	r3, [r3]
 347 0192 102B     		cmp	r3, #16
 348 0194 04D1     		bne	.L22
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		select_controller(B_CS2);
 349              		.loc 1 57 0
 350 0196 1020     		movs	r0, #16
 351 0198 FFF76CFF 		bl	select_controller
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_wait_ready();
 352              		.loc 1 58 0
 353 019c FFF797FF 		bl	graphic_wait_ready
 354              	.L22:
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	return read_data;
 355              		.loc 1 60 0
 356 01a0 0F23     		movs	r3, #15
 357 01a2 FB18     		adds	r3, r7, r3
 358 01a4 1B78     		ldrb	r3, [r3]
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_write(unsigned char value, unsigned char controller){
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
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_ODR_E_HIGH = value;
 402              		.loc 1 64 0
 403 01d2 1A4A     		ldr	r2, .L29
 404 01d4 FB1D     		adds	r3, r7, #7
 405 01d6 1B78     		ldrb	r3, [r3]
 406 01d8 1370     		strb	r3, [r2]
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	select_controller(controller);
 407              		.loc 1 65 0
 408 01da BB1D     		adds	r3, r7, #6
 409 01dc 1B78     		ldrb	r3, [r3]
 410 01de 1800     		movs	r0, r3
 411 01e0 FFF748FF 		bl	select_controller
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	delay_500ns();
 412              		.loc 1 66 0
 413 01e4 FFF7FEFF 		bl	delay_500ns
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 414              		.loc 1 67 0
 415 01e8 4020     		movs	r0, #64
 416 01ea FFF7FEFF 		bl	graphic_ctrl_bit_set
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	delay_500ns();
 417              		.loc 1 68 0
 418 01ee FFF7FEFF 		bl	delay_500ns
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 419              		.loc 1 69 0
 420 01f2 4020     		movs	r0, #64
 421 01f4 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if(controller & B_CS1){
 422              		.loc 1 70 0
 423 01f8 BB1D     		adds	r3, r7, #6
 424 01fa 1B78     		ldrb	r3, [r3]
 425 01fc 0822     		movs	r2, #8
 426 01fe 1340     		ands	r3, r2
 427 0200 04D0     		beq	.L27
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		select_controller(B_CS1);
 428              		.loc 1 71 0
 429 0202 0820     		movs	r0, #8
 430 0204 FFF736FF 		bl	select_controller
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_wait_ready();
 431              		.loc 1 72 0
 432 0208 FFF761FF 		bl	graphic_wait_ready
 433              	.L27:
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if(controller & B_CS2){
 434              		.loc 1 74 0
 435 020c BB1D     		adds	r3, r7, #6
 436 020e 1B78     		ldrb	r3, [r3]
 437 0210 1022     		movs	r2, #16
 438 0212 1340     		ands	r3, r2
 439 0214 04D0     		beq	.L28
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		select_controller(B_CS2);
 440              		.loc 1 75 0
 441 0216 1020     		movs	r0, #16
 442 0218 FFF72CFF 		bl	select_controller
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_wait_ready();
 443              		.loc 1 76 0
 444 021c FFF757FF 		bl	graphic_wait_ready
 445              	.L28:
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_ODR_E_HIGH = 0;
 446              		.loc 1 78 0
 447 0220 064B     		ldr	r3, .L29
 448 0222 0022     		movs	r2, #0
 449 0224 1A70     		strb	r2, [r3]
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_E);  		//ettställs som förberedelse för nästa arbetscykel
 450              		.loc 1 79 0
 451 0226 4020     		movs	r0, #64
 452 0228 FFF7FEFF 		bl	graphic_ctrl_bit_set
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	select_controller(0);
 453              		.loc 1 80 0
 454 022c 0020     		movs	r0, #0
 455 022e FFF721FF 		bl	select_controller
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_write_command(uint8_t command, uint8_t controller){
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
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 496              		.loc 1 84 0
 497 0252 4020     		movs	r0, #64
 498 0254 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	select_controller(controller);
 499              		.loc 1 85 0
 500 0258 BB1D     		adds	r3, r7, #6
 501 025a 1B78     		ldrb	r3, [r3]
 502 025c 1800     		movs	r0, r3
 503 025e FFF709FF 		bl	select_controller
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 504              		.loc 1 86 0
 505 0262 0320     		movs	r0, #3
 506 0264 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write(command, controller);
 507              		.loc 1 87 0
 508 0268 BB1D     		adds	r3, r7, #6
 509 026a 1A78     		ldrb	r2, [r3]
 510 026c FB1D     		adds	r3, r7, #7
 511 026e 1B78     		ldrb	r3, [r3]
 512 0270 1100     		movs	r1, r2
 513 0272 1800     		movs	r0, r3
 514 0274 FFF7FEFF 		bl	graphic_write
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_write_data(uint8_t data, uint8_t controller){
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
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_E);
 551              		.loc 1 91 0
 552 0292 4020     		movs	r0, #64
 553 0294 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	select_controller(controller);
 554              		.loc 1 92 0
 555 0298 BB1D     		adds	r3, r7, #6
 556 029a 1B78     		ldrb	r3, [r3]
 557 029c 1800     		movs	r0, r3
 558 029e FFF7E9FE 		bl	select_controller
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_RS);
 559              		.loc 1 93 0
 560 02a2 0120     		movs	r0, #1
 561 02a4 FFF7FEFF 		bl	graphic_ctrl_bit_set
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_RW);
 562              		.loc 1 94 0
 563 02a8 0220     		movs	r0, #2
 564 02aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write(data, controller);
 565              		.loc 1 95 0
 566 02ae BB1D     		adds	r3, r7, #6
 567 02b0 1A78     		ldrb	r2, [r3]
 568 02b2 FB1D     		adds	r3, r7, #7
 569 02b4 1B78     		ldrb	r3, [r3]
 570 02b6 1100     		movs	r1, r2
 571 02b8 1800     		movs	r0, r3
 572 02ba FFF7FEFF 		bl	graphic_write
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** unsigned char graphic_read_data(unsigned char controller){
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
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	(void) graphic_read(controller);
 606              		.loc 1 99 0
 607 02d2 FB1D     		adds	r3, r7, #7
 608 02d4 1B78     		ldrb	r3, [r3]
 609 02d6 1800     		movs	r0, r3
 610 02d8 FFF7FEFF 		bl	graphic_read
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	return graphic_read(controller);
 611              		.loc 1 101 0
 612 02dc FB1D     		adds	r3, r7, #7
 613 02de 1B78     		ldrb	r3, [r3]
 614 02e0 1800     		movs	r0, r3
 615 02e2 FFF7FEFF 		bl	graphic_read
 616 02e6 0300     		movs	r3, r0
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_init(){
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
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	GPIO_MODER_E = 0x55555555;
 645              		.loc 1 105 0
 646 02f4 154B     		ldr	r3, .L36
 647 02f6 164A     		ldr	r2, .L36+4
 648 02f8 1A60     		str	r2, [r3]
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_E);
 649              		.loc 1 107 0
 650 02fa 4020     		movs	r0, #64
 651 02fc FFF7FEFF 		bl	graphic_ctrl_bit_set
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	delay_micro(10);
 652              		.loc 1 108 0
 653 0300 0A20     		movs	r0, #10
 654 0302 FFF7FEFF 		bl	delay_micro
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RESET | B_E);
 655              		.loc 1 109 0
 656 0306 7820     		movs	r0, #120
 657 0308 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	delay_milli(30);
 658              		.loc 1 110 0
 659 030c 1E20     		movs	r0, #30
 660 030e FFF7FEFF 		bl	delay_milli
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_ctrl_bit_set(B_RESET);
 661              		.loc 1 111 0
 662 0312 2020     		movs	r0, #32
 663 0314 FFF7FEFF 		bl	graphic_ctrl_bit_set
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 664              		.loc 1 112 0
 665 0318 1821     		movs	r1, #24
 666 031a 3E20     		movs	r0, #62
 667 031c FFF7FEFF 		bl	graphic_write_command
 113:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
 668              		.loc 1 113 0
 669 0320 1821     		movs	r1, #24
 670 0322 3F20     		movs	r0, #63
 671 0324 FFF7FEFF 		bl	graphic_write_command
 114:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
 672              		.loc 1 114 0
 673 0328 1821     		movs	r1, #24
 674 032a C020     		movs	r0, #192
 675 032c FFF7FEFF 		bl	graphic_write_command
 115:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
 676              		.loc 1 115 0
 677 0330 1821     		movs	r1, #24
 678 0332 4020     		movs	r0, #64
 679 0334 FFF7FEFF 		bl	graphic_write_command
 116:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
 680              		.loc 1 116 0
 681 0338 1821     		movs	r1, #24
 682 033a B820     		movs	r0, #184
 683 033c FFF7FEFF 		bl	graphic_write_command
 117:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	select_controller(0);
 684              		.loc 1 117 0
 685 0340 0020     		movs	r0, #0
 686 0342 FFF797FE 		bl	select_controller
 118:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
 120:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void graphic_clear_screen(){
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
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	for(int page = 0; page <=7; page++){
 722              		.loc 1 121 0
 723 035a 0023     		movs	r3, #0
 724 035c 7B60     		str	r3, [r7, #4]
 725 035e 1EE0     		b	.L39
 726              	.L42:
 122:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
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
 123:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 738              		.loc 1 123 0
 739 0376 1821     		movs	r1, #24
 740 0378 4020     		movs	r0, #64
 741 037a FFF7FEFF 		bl	graphic_write_command
 742              	.LBB3:
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		for (int adress = 0; adress <= 63; adress++)
 743              		.loc 1 124 0
 744 037e 0023     		movs	r3, #0
 745 0380 3B60     		str	r3, [r7]
 746 0382 06E0     		b	.L40
 747              	.L41:
 125:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 748              		.loc 1 125 0 discriminator 3
 749 0384 1821     		movs	r1, #24
 750 0386 0020     		movs	r0, #0
 751 0388 FFF7FEFF 		bl	graphic_write_data
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		for (int adress = 0; adress <= 63; adress++)
 752              		.loc 1 124 0 discriminator 3
 753 038c 3B68     		ldr	r3, [r7]
 754 038e 0133     		adds	r3, r3, #1
 755 0390 3B60     		str	r3, [r7]
 756              	.L40:
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		for (int adress = 0; adress <= 63; adress++)
 757              		.loc 1 124 0 is_stmt 0 discriminator 1
 758 0392 3B68     		ldr	r3, [r7]
 759 0394 3F2B     		cmp	r3, #63
 760 0396 F5DD     		ble	.L41
 761              	.LBE3:
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 762              		.loc 1 121 0 is_stmt 1 discriminator 2
 763 0398 7B68     		ldr	r3, [r7, #4]
 764 039a 0133     		adds	r3, r3, #1
 765 039c 7B60     		str	r3, [r7, #4]
 766              	.L39:
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 767              		.loc 1 121 0 is_stmt 0 discriminator 1
 768 039e 7B68     		ldr	r3, [r7, #4]
 769 03a0 072B     		cmp	r3, #7
 770 03a2 DDDD     		ble	.L42
 771              	.LBE2:
 126:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
 127:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
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
 128:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 
 129:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** void pixel (unsigned int x, unsigned int y, unsigned int set){
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
 130:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	uint8_t mask, c, controller;
 131:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	int index;
 132:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if (y < 1 || y > 64 || x < 1 || x > 128) 
 807              		.loc 1 132 0
 808 03b8 BB68     		ldr	r3, [r7, #8]
 809 03ba 002B     		cmp	r3, #0
 810 03bc 00D1     		bne	.LCB654
 811 03be A9E0     		b	.L62	@long jump
 812              	.LCB654:
 813              		.loc 1 132 0 is_stmt 0 discriminator 1
 814 03c0 BB68     		ldr	r3, [r7, #8]
 815 03c2 402B     		cmp	r3, #64
 816 03c4 00D9     		bls	.LCB657
 817 03c6 A5E0     		b	.L62	@long jump
 818              	.LCB657:
 819              		.loc 1 132 0 discriminator 2
 820 03c8 FB68     		ldr	r3, [r7, #12]
 821 03ca 002B     		cmp	r3, #0
 822 03cc 00D1     		bne	.LCB660
 823 03ce A1E0     		b	.L62	@long jump
 824              	.LCB660:
 825              		.loc 1 132 0 discriminator 3
 826 03d0 FB68     		ldr	r3, [r7, #12]
 827 03d2 802B     		cmp	r3, #128
 828 03d4 00D9     		bls	.LCB663
 829 03d6 9DE0     		b	.L62	@long jump
 830              	.LCB663:
 133:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		return;
 134:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 135:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	index = (y-1) / 8;
 831              		.loc 1 135 0 is_stmt 1
 832 03d8 BB68     		ldr	r3, [r7, #8]
 833 03da 013B     		subs	r3, r3, #1
 834 03dc DB08     		lsrs	r3, r3, #3
 835 03de BB61     		str	r3, [r7, #24]
 136:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 137:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	switch((y-1) % 8){
 836              		.loc 1 137 0
 837 03e0 BB68     		ldr	r3, [r7, #8]
 838 03e2 013B     		subs	r3, r3, #1
 839 03e4 0722     		movs	r2, #7
 840 03e6 1340     		ands	r3, r2
 841 03e8 072B     		cmp	r3, #7
 842 03ea 2CD8     		bhi	.L47
 843 03ec 9A00     		lsls	r2, r3, #2
 844 03ee 4B4B     		ldr	r3, .L63
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
 138:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 0: mask = 1; break;
 861              		.loc 1 138 0
 862 03f6 1F23     		movs	r3, #31
 863 03f8 FB18     		adds	r3, r7, r3
 864 03fa 0122     		movs	r2, #1
 865 03fc 1A70     		strb	r2, [r3]
 866 03fe 22E0     		b	.L47
 867              	.L50:
 139:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 1: mask = 2; break;
 868              		.loc 1 139 0
 869 0400 1F23     		movs	r3, #31
 870 0402 FB18     		adds	r3, r7, r3
 871 0404 0222     		movs	r2, #2
 872 0406 1A70     		strb	r2, [r3]
 873 0408 1DE0     		b	.L47
 874              	.L51:
 140:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 2: mask = 4; break;
 875              		.loc 1 140 0
 876 040a 1F23     		movs	r3, #31
 877 040c FB18     		adds	r3, r7, r3
 878 040e 0422     		movs	r2, #4
 879 0410 1A70     		strb	r2, [r3]
 880 0412 18E0     		b	.L47
 881              	.L52:
 141:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 3: mask = 8; break;
 882              		.loc 1 141 0
 883 0414 1F23     		movs	r3, #31
 884 0416 FB18     		adds	r3, r7, r3
 885 0418 0822     		movs	r2, #8
 886 041a 1A70     		strb	r2, [r3]
 887 041c 13E0     		b	.L47
 888              	.L53:
 142:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 4: mask = 0x10; break;
 889              		.loc 1 142 0
 890 041e 1F23     		movs	r3, #31
 891 0420 FB18     		adds	r3, r7, r3
 892 0422 1022     		movs	r2, #16
 893 0424 1A70     		strb	r2, [r3]
 894 0426 0EE0     		b	.L47
 895              	.L54:
 143:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 5: mask = 0x20; break;
 896              		.loc 1 143 0
 897 0428 1F23     		movs	r3, #31
 898 042a FB18     		adds	r3, r7, r3
 899 042c 2022     		movs	r2, #32
 900 042e 1A70     		strb	r2, [r3]
 901 0430 09E0     		b	.L47
 902              	.L55:
 144:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 6: mask = 0x40; break;
 903              		.loc 1 144 0
 904 0432 1F23     		movs	r3, #31
 905 0434 FB18     		adds	r3, r7, r3
 906 0436 4022     		movs	r2, #64
 907 0438 1A70     		strb	r2, [r3]
 908 043a 04E0     		b	.L47
 909              	.L56:
 145:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		case 7: mask = 0x80; break;
 910              		.loc 1 145 0
 911 043c 1F23     		movs	r3, #31
 912 043e FB18     		adds	r3, r7, r3
 913 0440 8022     		movs	r2, #128
 914 0442 1A70     		strb	r2, [r3]
 915 0444 C046     		nop
 916              	.L47:
 146:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
 147:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 148:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if (!set)
 917              		.loc 1 148 0
 918 0446 7B68     		ldr	r3, [r7, #4]
 919 0448 002B     		cmp	r3, #0
 920 044a 03D1     		bne	.L57
 149:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		mask &= ~mask;
 921              		.loc 1 149 0
 922 044c 1F23     		movs	r3, #31
 923 044e FB18     		adds	r3, r7, r3
 924 0450 0022     		movs	r2, #0
 925 0452 1A70     		strb	r2, [r3]
 926              	.L57:
 150:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if(x > 64){
 927              		.loc 1 150 0
 928 0454 FB68     		ldr	r3, [r7, #12]
 929 0456 402B     		cmp	r3, #64
 930 0458 07D9     		bls	.L58
 151:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		controller = B_CS2;
 931              		.loc 1 151 0
 932 045a 1E23     		movs	r3, #30
 933 045c FB18     		adds	r3, r7, r3
 934 045e 1022     		movs	r2, #16
 935 0460 1A70     		strb	r2, [r3]
 152:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		x = x-65;
 936              		.loc 1 152 0
 937 0462 FB68     		ldr	r3, [r7, #12]
 938 0464 413B     		subs	r3, r3, #65
 939 0466 FB60     		str	r3, [r7, #12]
 940 0468 06E0     		b	.L59
 941              	.L58:
 153:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
 154:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	else{
 155:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		controller = B_CS1;
 942              		.loc 1 155 0
 943 046a 1E23     		movs	r3, #30
 944 046c FB18     		adds	r3, r7, r3
 945 046e 0822     		movs	r2, #8
 946 0470 1A70     		strb	r2, [r3]
 156:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		x = x-1;
 947              		.loc 1 156 0
 948 0472 FB68     		ldr	r3, [r7, #12]
 949 0474 013B     		subs	r3, r3, #1
 950 0476 FB60     		str	r3, [r7, #12]
 951              	.L59:
 157:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	}
 158:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_SET_ADD | x, controller);
 952              		.loc 1 158 0
 953 0478 FB68     		ldr	r3, [r7, #12]
 954 047a DBB2     		uxtb	r3, r3
 955 047c 4022     		movs	r2, #64
 956 047e 1343     		orrs	r3, r2
 957 0480 DAB2     		uxtb	r2, r3
 958 0482 1E25     		movs	r5, #30
 959 0484 7B19     		adds	r3, r7, r5
 960 0486 1B78     		ldrb	r3, [r3]
 961 0488 1900     		movs	r1, r3
 962 048a 1000     		movs	r0, r2
 963 048c FFF7FEFF 		bl	graphic_write_command
 159:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_SET_PAGE | index, controller);
 964              		.loc 1 159 0
 965 0490 BB69     		ldr	r3, [r7, #24]
 966 0492 5BB2     		sxtb	r3, r3
 967 0494 4822     		movs	r2, #72
 968 0496 5242     		rsbs	r2, r2, #0
 969 0498 1343     		orrs	r3, r2
 970 049a 5BB2     		sxtb	r3, r3
 971 049c DAB2     		uxtb	r2, r3
 972 049e 7B19     		adds	r3, r7, r5
 973 04a0 1B78     		ldrb	r3, [r3]
 974 04a2 1900     		movs	r1, r3
 975 04a4 1000     		movs	r0, r2
 976 04a6 FFF7FEFF 		bl	graphic_write_command
 160:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	c = graphic_read_data(controller);
 977              		.loc 1 160 0
 978 04aa 1723     		movs	r3, #23
 979 04ac FC18     		adds	r4, r7, r3
 980 04ae 7B19     		adds	r3, r7, r5
 981 04b0 1B78     		ldrb	r3, [r3]
 982 04b2 1800     		movs	r0, r3
 983 04b4 FFF7FEFF 		bl	graphic_read_data
 984 04b8 0300     		movs	r3, r0
 985 04ba 2370     		strb	r3, [r4]
 161:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_command(LCD_SET_ADD | x, controller);
 986              		.loc 1 161 0
 987 04bc FB68     		ldr	r3, [r7, #12]
 988 04be DBB2     		uxtb	r3, r3
 989 04c0 4022     		movs	r2, #64
 990 04c2 1343     		orrs	r3, r2
 991 04c4 DAB2     		uxtb	r2, r3
 992 04c6 7B19     		adds	r3, r7, r5
 993 04c8 1B78     		ldrb	r3, [r3]
 994 04ca 1900     		movs	r1, r3
 995 04cc 1000     		movs	r0, r2
 996 04ce FFF7FEFF 		bl	graphic_write_command
 162:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 163:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	if(set)
 997              		.loc 1 163 0
 998 04d2 7B68     		ldr	r3, [r7, #4]
 999 04d4 002B     		cmp	r3, #0
 1000 04d6 09D0     		beq	.L60
 164:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		mask = mask | c;
 1001              		.loc 1 164 0
 1002 04d8 1F22     		movs	r2, #31
 1003 04da BB18     		adds	r3, r7, r2
 1004 04dc B918     		adds	r1, r7, r2
 1005 04de 1722     		movs	r2, #23
 1006 04e0 BA18     		adds	r2, r7, r2
 1007 04e2 0978     		ldrb	r1, [r1]
 1008 04e4 1278     		ldrb	r2, [r2]
 1009 04e6 0A43     		orrs	r2, r1
 1010 04e8 1A70     		strb	r2, [r3]
 1011 04ea 08E0     		b	.L61
 1012              	.L60:
 165:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	else
 166:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		mask = mask & c;
 1013              		.loc 1 166 0
 1014 04ec 1F22     		movs	r2, #31
 1015 04ee BB18     		adds	r3, r7, r2
 1016 04f0 BA18     		adds	r2, r7, r2
 1017 04f2 1721     		movs	r1, #23
 1018 04f4 7918     		adds	r1, r7, r1
 1019 04f6 1278     		ldrb	r2, [r2]
 1020 04f8 0978     		ldrb	r1, [r1]
 1021 04fa 0A40     		ands	r2, r1
 1022 04fc 1A70     		strb	r2, [r3]
 1023              	.L61:
 167:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 		
 168:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	graphic_write_data(mask, controller);
 1024              		.loc 1 168 0
 1025 04fe 1E23     		movs	r3, #30
 1026 0500 FB18     		adds	r3, r7, r3
 1027 0502 1A78     		ldrb	r2, [r3]
 1028 0504 1F23     		movs	r3, #31
 1029 0506 FB18     		adds	r3, r7, r3
 1030 0508 1B78     		ldrb	r3, [r3]
 1031 050a 1100     		movs	r1, r2
 1032 050c 1800     		movs	r0, r3
 1033 050e FFF7FEFF 		bl	graphic_write_data
 1034 0512 00E0     		b	.L43
 1035              	.L62:
 133:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** 	
 1036              		.loc 1 133 0
 1037 0514 C046     		nop
 1038              	.L43:
 169:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\graphics.c **** }
 1039              		.loc 1 169 0
 1040 0516 BD46     		mov	sp, r7
 1041 0518 08B0     		add	sp, sp, #32
 1042              		@ sp needed
 1043 051a B0BD     		pop	{r4, r5, r7, pc}
 1044              	.L64:
 1045              		.align	2
 1046              	.L63:
 1047 051c 00000000 		.word	.L49
 1048              		.cfi_endproc
 1049              	.LFE11:
 1051              	.Letext0:
 1052              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/autopong/startup.h"
