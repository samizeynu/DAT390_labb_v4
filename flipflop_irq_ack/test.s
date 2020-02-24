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
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack/startup.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c ****  * 	startup.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c ****  #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** void startup ( void )
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** {
  26              		.loc 1 12 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** __asm volatile(
  31              		.loc 1 13 0
  32              		.syntax divided
  33              	@ 13 "C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	" MOV SP,R0\n"
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	" BL main\n"				/* call main */
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	"_exit: B .\n"				/* never return */
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	) ;
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** }
  40              		.loc 1 19 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.bss
  48              	count:
  49 0000 00       		.space	1
  51              		.text
  52              		.align	1
  53              		.global	irq_handler
  54              		.syntax unified
  55              		.code	16
  56              		.thumb_func
  57              		.fpu softvfp
  59              	irq_handler:
  60              	.LFB1:
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** static volatile unsigned char count;
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** void irq_handler(){
  61              		.loc 1 23 0
  62              		.cfi_startproc
  63              		@ args = 0, pretend = 0, frame = 8
  64              		@ frame_needed = 1, uses_anonymous_args = 0
  65 0000 80B5     		push	{r7, lr}
  66              		.cfi_def_cfa_offset 8
  67              		.cfi_offset 7, -8
  68              		.cfi_offset 14, -4
  69 0002 82B0     		sub	sp, sp, #8
  70              		.cfi_def_cfa_offset 16
  71 0004 00AF     		add	r7, sp, #0
  72              		.cfi_def_cfa_register 7
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	unsigned char x;
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	if(EXTI_PR & 0x8){
  73              		.loc 1 25 0
  74 0006 314B     		ldr	r3, .L7
  75 0008 1B68     		ldr	r3, [r3]
  76 000a 0822     		movs	r2, #8
  77 000c 1340     		ands	r3, r2
  78 000e 59D0     		beq	.L6
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		EXTI_PR |= 8; 							//kvittera avbrottet
  79              		.loc 1 26 0
  80 0010 2E4B     		ldr	r3, .L7
  81 0012 1A68     		ldr	r2, [r3]
  82 0014 2D4B     		ldr	r3, .L7
  83 0016 0821     		movs	r1, #8
  84 0018 0A43     		orrs	r2, r1
  85 001a 1A60     		str	r2, [r3]
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			x = GPIO_IDR_E_LOW;
  86              		.loc 1 27 0
  87 001c 2C4A     		ldr	r2, .L7+4
  88 001e FB1D     		adds	r3, r7, #7
  89 0020 1278     		ldrb	r2, [r2]
  90 0022 1A70     		strb	r2, [r3]
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			if(x & (1<<0)){
  91              		.loc 1 28 0
  92 0024 FB1D     		adds	r3, r7, #7
  93 0026 1B78     		ldrb	r3, [r3]
  94 0028 0122     		movs	r2, #1
  95 002a 1340     		ands	r3, r2
  96 002c 16D0     		beq	.L4
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_E_LOW |= (1<<4); 		//kvittera irq0
  97              		.loc 1 29 0
  98 002e 294B     		ldr	r3, .L7+8
  99 0030 1B78     		ldrb	r3, [r3]
 100 0032 DBB2     		uxtb	r3, r3
 101 0034 274A     		ldr	r2, .L7+8
 102 0036 1021     		movs	r1, #16
 103 0038 0B43     		orrs	r3, r1
 104 003a DBB2     		uxtb	r3, r3
 105 003c 1370     		strb	r3, [r2]
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				count++;
 106              		.loc 1 30 0
 107 003e 264B     		ldr	r3, .L7+12
 108 0040 1B78     		ldrb	r3, [r3]
 109 0042 DBB2     		uxtb	r3, r3
 110 0044 0133     		adds	r3, r3, #1
 111 0046 DAB2     		uxtb	r2, r3
 112 0048 234B     		ldr	r3, .L7+12
 113 004a 1A70     		strb	r2, [r3]
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_E_LOW &= ~(1<<4);
 114              		.loc 1 31 0
 115 004c 214B     		ldr	r3, .L7+8
 116 004e 1B78     		ldrb	r3, [r3]
 117 0050 DBB2     		uxtb	r3, r3
 118 0052 204A     		ldr	r2, .L7+8
 119 0054 1021     		movs	r1, #16
 120 0056 8B43     		bics	r3, r1
 121 0058 DBB2     		uxtb	r3, r3
 122 005a 1370     		strb	r3, [r2]
 123              	.L4:
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			}
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			if(x & 2){
 124              		.loc 1 33 0
 125 005c FB1D     		adds	r3, r7, #7
 126 005e 1B78     		ldrb	r3, [r3]
 127 0060 0222     		movs	r2, #2
 128 0062 1340     		ands	r3, r2
 129 0064 12D0     		beq	.L5
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_E_LOW |= (1<<5); 		//kvittera irq1
 130              		.loc 1 34 0
 131 0066 1B4B     		ldr	r3, .L7+8
 132 0068 1B78     		ldrb	r3, [r3]
 133 006a DBB2     		uxtb	r3, r3
 134 006c 194A     		ldr	r2, .L7+8
 135 006e 2021     		movs	r1, #32
 136 0070 0B43     		orrs	r3, r1
 137 0072 DBB2     		uxtb	r3, r3
 138 0074 1370     		strb	r3, [r2]
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				count = 0;
 139              		.loc 1 35 0
 140 0076 184B     		ldr	r3, .L7+12
 141 0078 0022     		movs	r2, #0
 142 007a 1A70     		strb	r2, [r3]
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_E_LOW &= ~(1<<5);
 143              		.loc 1 36 0
 144 007c 154B     		ldr	r3, .L7+8
 145 007e 1B78     		ldrb	r3, [r3]
 146 0080 DBB2     		uxtb	r3, r3
 147 0082 144A     		ldr	r2, .L7+8
 148 0084 2021     		movs	r1, #32
 149 0086 8B43     		bics	r3, r1
 150 0088 DBB2     		uxtb	r3, r3
 151 008a 1370     		strb	r3, [r2]
 152              	.L5:
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			}
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			if(x & 4){
 153              		.loc 1 38 0
 154 008c FB1D     		adds	r3, r7, #7
 155 008e 1B78     		ldrb	r3, [r3]
 156 0090 0422     		movs	r2, #4
 157 0092 1340     		ands	r3, r2
 158 0094 16D0     		beq	.L6
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_E_LOW |= (1<<6); 		//kvittera irq2
 159              		.loc 1 39 0
 160 0096 0F4B     		ldr	r3, .L7+8
 161 0098 1B78     		ldrb	r3, [r3]
 162 009a DBB2     		uxtb	r3, r3
 163 009c 0D4A     		ldr	r2, .L7+8
 164 009e 4021     		movs	r1, #64
 165 00a0 0B43     		orrs	r3, r1
 166 00a2 DBB2     		uxtb	r3, r3
 167 00a4 1370     		strb	r3, [r2]
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_D_LOW ^= 0xFF;
 168              		.loc 1 40 0
 169 00a6 0D4B     		ldr	r3, .L7+16
 170 00a8 1B78     		ldrb	r3, [r3]
 171 00aa DBB2     		uxtb	r3, r3
 172 00ac 0B4A     		ldr	r2, .L7+16
 173 00ae DB43     		mvns	r3, r3
 174 00b0 DBB2     		uxtb	r3, r3
 175 00b2 1370     		strb	r3, [r2]
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 				GPIO_ODR_E_LOW &= ~(1<<6);
 176              		.loc 1 41 0
 177 00b4 074B     		ldr	r3, .L7+8
 178 00b6 1B78     		ldrb	r3, [r3]
 179 00b8 DBB2     		uxtb	r3, r3
 180 00ba 064A     		ldr	r2, .L7+8
 181 00bc 4021     		movs	r1, #64
 182 00be 8B43     		bics	r3, r1
 183 00c0 DBB2     		uxtb	r3, r3
 184 00c2 1370     		strb	r3, [r2]
 185              	.L6:
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 			}
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** }}
 186              		.loc 1 43 0
 187 00c4 C046     		nop
 188 00c6 BD46     		mov	sp, r7
 189 00c8 02B0     		add	sp, sp, #8
 190              		@ sp needed
 191 00ca 80BD     		pop	{r7, pc}
 192              	.L8:
 193              		.align	2
 194              	.L7:
 195 00cc 143C0140 		.word	1073822740
 196 00d0 10100240 		.word	1073877008
 197 00d4 14100240 		.word	1073877012
 198 00d8 00000000 		.word	count
 199 00dc 140C0240 		.word	1073875988
 200              		.cfi_endproc
 201              	.LFE1:
 203              		.align	1
 204              		.global	out7seg
 205              		.syntax unified
 206              		.code	16
 207              		.thumb_func
 208              		.fpu softvfp
 210              	out7seg:
 211              	.LFB2:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** void out7seg (unsigned char c){
 212              		.loc 1 45 0
 213              		.cfi_startproc
 214              		@ args = 0, pretend = 0, frame = 8
 215              		@ frame_needed = 1, uses_anonymous_args = 0
 216 00e0 80B5     		push	{r7, lr}
 217              		.cfi_def_cfa_offset 8
 218              		.cfi_offset 7, -8
 219              		.cfi_offset 14, -4
 220 00e2 82B0     		sub	sp, sp, #8
 221              		.cfi_def_cfa_offset 16
 222 00e4 00AF     		add	r7, sp, #0
 223              		.cfi_def_cfa_register 7
 224 00e6 0200     		movs	r2, r0
 225 00e8 FB1D     		adds	r3, r7, #7
 226 00ea 1A70     		strb	r2, [r3]
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	switch(c){
 227              		.loc 1 46 0
 228 00ec FB1D     		adds	r3, r7, #7
 229 00ee 1B78     		ldrb	r3, [r3]
 230 00f0 092B     		cmp	r3, #9
 231 00f2 2CD8     		bhi	.L10
 232 00f4 9A00     		lsls	r2, r3, #2
 233 00f6 1A4B     		ldr	r3, .L23
 234 00f8 D318     		adds	r3, r2, r3
 235 00fa 1B68     		ldr	r3, [r3]
 236 00fc 9F46     		mov	pc, r3
 237              		.section	.rodata
 238              		.align	2
 239              	.L12:
 240 0000 FE000000 		.word	.L11
 241 0004 06010000 		.word	.L13
 242 0008 0E010000 		.word	.L14
 243 000c 16010000 		.word	.L15
 244 0010 1E010000 		.word	.L16
 245 0014 26010000 		.word	.L17
 246 0018 2E010000 		.word	.L18
 247 001c 36010000 		.word	.L19
 248 0020 3E010000 		.word	.L20
 249 0024 46010000 		.word	.L21
 250              		.text
 251              	.L11:
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 0: GPIO_ODR_D_HIGH = 0x3F; break;
 252              		.loc 1 47 0
 253 00fe 194B     		ldr	r3, .L23+4
 254 0100 3F22     		movs	r2, #63
 255 0102 1A70     		strb	r2, [r3]
 256 0104 27E0     		b	.L22
 257              	.L13:
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 1: GPIO_ODR_D_HIGH = 0x06; break;
 258              		.loc 1 48 0
 259 0106 174B     		ldr	r3, .L23+4
 260 0108 0622     		movs	r2, #6
 261 010a 1A70     		strb	r2, [r3]
 262 010c 23E0     		b	.L22
 263              	.L14:
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 2: GPIO_ODR_D_HIGH = 0x5B; break;
 264              		.loc 1 49 0
 265 010e 154B     		ldr	r3, .L23+4
 266 0110 5B22     		movs	r2, #91
 267 0112 1A70     		strb	r2, [r3]
 268 0114 1FE0     		b	.L22
 269              	.L15:
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 3: GPIO_ODR_D_HIGH = 0x4F; break;
 270              		.loc 1 50 0
 271 0116 134B     		ldr	r3, .L23+4
 272 0118 4F22     		movs	r2, #79
 273 011a 1A70     		strb	r2, [r3]
 274 011c 1BE0     		b	.L22
 275              	.L16:
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 4: GPIO_ODR_D_HIGH = 0x66; break;
 276              		.loc 1 51 0
 277 011e 114B     		ldr	r3, .L23+4
 278 0120 6622     		movs	r2, #102
 279 0122 1A70     		strb	r2, [r3]
 280 0124 17E0     		b	.L22
 281              	.L17:
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 5: GPIO_ODR_D_HIGH = 0x6D; break;
 282              		.loc 1 52 0
 283 0126 0F4B     		ldr	r3, .L23+4
 284 0128 6D22     		movs	r2, #109
 285 012a 1A70     		strb	r2, [r3]
 286 012c 13E0     		b	.L22
 287              	.L18:
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 6: GPIO_ODR_D_HIGH = 0x7D; break;
 288              		.loc 1 53 0
 289 012e 0D4B     		ldr	r3, .L23+4
 290 0130 7D22     		movs	r2, #125
 291 0132 1A70     		strb	r2, [r3]
 292 0134 0FE0     		b	.L22
 293              	.L19:
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 7: GPIO_ODR_D_HIGH = 0x07; break;
 294              		.loc 1 54 0
 295 0136 0B4B     		ldr	r3, .L23+4
 296 0138 0722     		movs	r2, #7
 297 013a 1A70     		strb	r2, [r3]
 298 013c 0BE0     		b	.L22
 299              	.L20:
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 8: GPIO_ODR_D_HIGH = 0x7F; break;
 300              		.loc 1 55 0
 301 013e 094B     		ldr	r3, .L23+4
 302 0140 7F22     		movs	r2, #127
 303 0142 1A70     		strb	r2, [r3]
 304 0144 07E0     		b	.L22
 305              	.L21:
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		case 9: GPIO_ODR_D_HIGH = 0x6F; break;
 306              		.loc 1 56 0
 307 0146 074B     		ldr	r3, .L23+4
 308 0148 6F22     		movs	r2, #111
 309 014a 1A70     		strb	r2, [r3]
 310 014c 03E0     		b	.L22
 311              	.L10:
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //		case 0xA: GPIO_ODR_D_LOW = 0x77; break;
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //		case 0xB: GPIO_ODR_D_LOW = 0x7C; break;
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //		case 0xC: GPIO_ODR_D_LOW = 0x39; break;
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //		case 0xD: GPIO_ODR_D_LOW = 0x3F; break;
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //		case 0xE: GPIO_ODR_D_LOW = 0x79; break;
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //		case 0xF: GPIO_ODR_D_LOW = 0x71; break;
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		default: GPIO_ODR_D_HIGH = 0x00; break;
 312              		.loc 1 64 0
 313 014e 054B     		ldr	r3, .L23+4
 314 0150 0022     		movs	r2, #0
 315 0152 1A70     		strb	r2, [r3]
 316 0154 C046     		nop
 317              	.L22:
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	}
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** }
 318              		.loc 1 66 0
 319 0156 C046     		nop
 320 0158 BD46     		mov	sp, r7
 321 015a 02B0     		add	sp, sp, #8
 322              		@ sp needed
 323 015c 80BD     		pop	{r7, pc}
 324              	.L24:
 325 015e C046     		.align	2
 326              	.L23:
 327 0160 00000000 		.word	.L12
 328 0164 150C0240 		.word	1073875989
 329              		.cfi_endproc
 330              	.LFE2:
 332              		.align	1
 333              		.global	init_flipflop
 334              		.syntax unified
 335              		.code	16
 336              		.thumb_func
 337              		.fpu softvfp
 339              	init_flipflop:
 340              	.LFB3:
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** void init_flipflop(){
 341              		.loc 1 68 0
 342              		.cfi_startproc
 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 1, uses_anonymous_args = 0
 345 0168 80B5     		push	{r7, lr}
 346              		.cfi_def_cfa_offset 8
 347              		.cfi_offset 7, -8
 348              		.cfi_offset 14, -4
 349 016a 00AF     		add	r7, sp, #0
 350              		.cfi_def_cfa_register 7
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	GPIO_MODER_D = 0x55555555;
 351              		.loc 1 69 0
 352 016c 1A4B     		ldr	r3, .L26
 353 016e 1B4A     		ldr	r2, .L26+4
 354 0170 1A60     		str	r2, [r3]
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	GPIO_MODER_LOW_E = 0x5500;
 355              		.loc 1 70 0
 356 0172 1B4B     		ldr	r3, .L26+8
 357 0174 AA22     		movs	r2, #170
 358 0176 D201     		lsls	r2, r2, #7
 359 0178 1A80     		strh	r2, [r3]
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	SYSCFG_EXTICR1 &= ~0xF000; 						//PE3 = 4 till avbrottslina EXTI3 
 360              		.loc 1 72 0
 361 017a 1A4B     		ldr	r3, .L26+12
 362 017c 1A68     		ldr	r2, [r3]
 363 017e 194B     		ldr	r3, .L26+12
 364 0180 1949     		ldr	r1, .L26+16
 365 0182 0A40     		ands	r2, r1
 366 0184 1A60     		str	r2, [r3]
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	SYSCFG_EXTICR1 |= 0x4000;
 367              		.loc 1 73 0
 368 0186 174B     		ldr	r3, .L26+12
 369 0188 1A68     		ldr	r2, [r3]
 370 018a 164B     		ldr	r3, .L26+12
 371 018c 8021     		movs	r1, #128
 372 018e C901     		lsls	r1, r1, #7
 373 0190 0A43     		orrs	r2, r1
 374 0192 1A60     		str	r2, [r3]
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	EXTI_IMR |= 8; 									//aktivera avbrott EXTI3 : motsvarande bit b3 i registern
 375              		.loc 1 75 0
 376 0194 154B     		ldr	r3, .L26+20
 377 0196 1A68     		ldr	r2, [r3]
 378 0198 144B     		ldr	r3, .L26+20
 379 019a 0821     		movs	r1, #8
 380 019c 0A43     		orrs	r2, r1
 381 019e 1A60     		str	r2, [r3]
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //	EXTI_FTSR &= ~8;								//maskera negativ flank
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** //	EXTI_RTSR |= 8;									//aktivera positiv flank
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	EXTI_RTSR &= ~8;								//maskera positiv flank
 382              		.loc 1 79 0
 383 01a0 134B     		ldr	r3, .L26+24
 384 01a2 1A68     		ldr	r2, [r3]
 385 01a4 124B     		ldr	r3, .L26+24
 386 01a6 0821     		movs	r1, #8
 387 01a8 8A43     		bics	r2, r1
 388 01aa 1A60     		str	r2, [r3]
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	EXTI_FTSR |= 8;									//aktivera negativ flank
 389              		.loc 1 80 0
 390 01ac 114B     		ldr	r3, .L26+28
 391 01ae 1A68     		ldr	r2, [r3]
 392 01b0 104B     		ldr	r3, .L26+28
 393 01b2 0821     		movs	r1, #8
 394 01b4 0A43     		orrs	r2, r1
 395 01b6 1A60     		str	r2, [r3]
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	SCB_VTOR = 0x2001C000; 							//relokera avbrottsvektorn
 396              		.loc 1 82 0
 397 01b8 0F4B     		ldr	r3, .L26+32
 398 01ba 104A     		ldr	r2, .L26+36
 399 01bc 1A60     		str	r2, [r3]
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	*((void (**) (void)) 0x2001C064) = irq_handler; //motsvarar avbrottsnummer 9, vektor offset 0x64
 400              		.loc 1 84 0
 401 01be 104B     		ldr	r3, .L26+40
 402 01c0 104A     		ldr	r2, .L26+44
 403 01c2 1A60     		str	r2, [r3]
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	NVIC_ISER0 |= (1<<9); 							//bit b9 i set-enable register
 404              		.loc 1 86 0
 405 01c4 104B     		ldr	r3, .L26+48
 406 01c6 1A68     		ldr	r2, [r3]
 407 01c8 0F4B     		ldr	r3, .L26+48
 408 01ca 8021     		movs	r1, #128
 409 01cc 8900     		lsls	r1, r1, #2
 410 01ce 0A43     		orrs	r2, r1
 411 01d0 1A60     		str	r2, [r3]
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** }
 412              		.loc 1 87 0
 413 01d2 C046     		nop
 414 01d4 BD46     		mov	sp, r7
 415              		@ sp needed
 416 01d6 80BD     		pop	{r7, pc}
 417              	.L27:
 418              		.align	2
 419              	.L26:
 420 01d8 000C0240 		.word	1073875968
 421 01dc 55555555 		.word	1431655765
 422 01e0 00100240 		.word	1073876992
 423 01e4 08380140 		.word	1073821704
 424 01e8 FF0FFFFF 		.word	-61441
 425 01ec 003C0140 		.word	1073822720
 426 01f0 083C0140 		.word	1073822728
 427 01f4 0C3C0140 		.word	1073822732
 428 01f8 08ED00E0 		.word	-536810232
 429 01fc 00C00120 		.word	536985600
 430 0200 64C00120 		.word	536985700
 431 0204 00000000 		.word	irq_handler
 432 0208 00E100E0 		.word	-536813312
 433              		.cfi_endproc
 434              	.LFE3:
 436              		.align	1
 437              		.global	main
 438              		.syntax unified
 439              		.code	16
 440              		.thumb_func
 441              		.fpu softvfp
 443              	main:
 444              	.LFB4:
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** void main(void)
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** {
 445              		.loc 1 90 0
 446              		.cfi_startproc
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 1, uses_anonymous_args = 0
 449 020c 80B5     		push	{r7, lr}
 450              		.cfi_def_cfa_offset 8
 451              		.cfi_offset 7, -8
 452              		.cfi_offset 14, -4
 453 020e 00AF     		add	r7, sp, #0
 454              		.cfi_def_cfa_register 7
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	init_flipflop();
 455              		.loc 1 91 0
 456 0210 FFF7FEFF 		bl	init_flipflop
 457              	.L29:
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 	while(1){
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_ack\startup.c **** 		out7seg(count);
 458              		.loc 1 93 0 discriminator 1
 459 0214 034B     		ldr	r3, .L30
 460 0216 1B78     		ldrb	r3, [r3]
 461 0218 DBB2     		uxtb	r3, r3
 462 021a 1800     		movs	r0, r3
 463 021c FFF7FEFF 		bl	out7seg
 464 0220 F8E7     		b	.L29
 465              	.L31:
 466 0222 C046     		.align	2
 467              	.L30:
 468 0224 00000000 		.word	count
 469              		.cfi_endproc
 470              	.LFE4:
 472              	.Letext0:
