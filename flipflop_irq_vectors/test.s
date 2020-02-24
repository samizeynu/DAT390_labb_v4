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
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors/startup.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c ****  * 	startup.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c ****  #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void startup ( void )
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** {
  26              		.loc 1 12 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** __asm volatile(
  31              		.loc 1 13 0
  32              		.syntax divided
  33              	@ 13 "C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	" MOV SP,R0\n"
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	" BL main\n"				/* call main */
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	"_exit: B .\n"				/* never return */
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	) ;
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** }
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
  53              		.global	irq_handler_0
  54              		.syntax unified
  55              		.code	16
  56              		.thumb_func
  57              		.fpu softvfp
  59              	irq_handler_0:
  60              	.LFB1:
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** static volatile unsigned char count;
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void irq_handler_0(){
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
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	unsigned char x = (EXTI_PR & 0x1);
  73              		.loc 1 24 0
  74 0006 164B     		ldr	r3, .L5
  75 0008 1B68     		ldr	r3, [r3]
  76 000a DAB2     		uxtb	r2, r3
  77 000c FB1D     		adds	r3, r7, #7
  78 000e 0121     		movs	r1, #1
  79 0010 0A40     		ands	r2, r1
  80 0012 1A70     		strb	r2, [r3]
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	if(EXTI_PR & 0x1){
  81              		.loc 1 25 0
  82 0014 124B     		ldr	r3, .L5
  83 0016 1B68     		ldr	r3, [r3]
  84 0018 0122     		movs	r2, #1
  85 001a 1340     		ands	r3, r2
  86 001c 1CD0     		beq	.L4
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		EXTI_PR |= 0x1; 							//kvittera avbrottet
  87              		.loc 1 26 0
  88 001e 104B     		ldr	r3, .L5
  89 0020 1A68     		ldr	r2, [r3]
  90 0022 0F4B     		ldr	r3, .L5
  91 0024 0121     		movs	r1, #1
  92 0026 0A43     		orrs	r2, r1
  93 0028 1A60     		str	r2, [r3]
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_E_LOW |= (1<<4); 		//kvittera irq0
  94              		.loc 1 28 0
  95 002a 0E4B     		ldr	r3, .L5+4
  96 002c 1B78     		ldrb	r3, [r3]
  97 002e DBB2     		uxtb	r3, r3
  98 0030 0C4A     		ldr	r2, .L5+4
  99 0032 1021     		movs	r1, #16
 100 0034 0B43     		orrs	r3, r1
 101 0036 DBB2     		uxtb	r3, r3
 102 0038 1370     		strb	r3, [r2]
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	count++;
 103              		.loc 1 29 0
 104 003a 0B4B     		ldr	r3, .L5+8
 105 003c 1B78     		ldrb	r3, [r3]
 106 003e DBB2     		uxtb	r3, r3
 107 0040 0133     		adds	r3, r3, #1
 108 0042 DAB2     		uxtb	r2, r3
 109 0044 084B     		ldr	r3, .L5+8
 110 0046 1A70     		strb	r2, [r3]
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_E_LOW &= ~(1<<4);
 111              		.loc 1 30 0
 112 0048 064B     		ldr	r3, .L5+4
 113 004a 1B78     		ldrb	r3, [r3]
 114 004c DBB2     		uxtb	r3, r3
 115 004e 054A     		ldr	r2, .L5+4
 116 0050 1021     		movs	r1, #16
 117 0052 8B43     		bics	r3, r1
 118 0054 DBB2     		uxtb	r3, r3
 119 0056 1370     		strb	r3, [r2]
 120              	.L4:
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	}
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** }
 121              		.loc 1 32 0
 122 0058 C046     		nop
 123 005a BD46     		mov	sp, r7
 124 005c 02B0     		add	sp, sp, #8
 125              		@ sp needed
 126 005e 80BD     		pop	{r7, pc}
 127              	.L6:
 128              		.align	2
 129              	.L5:
 130 0060 143C0140 		.word	1073822740
 131 0064 14100240 		.word	1073877012
 132 0068 00000000 		.word	count
 133              		.cfi_endproc
 134              	.LFE1:
 136              		.align	1
 137              		.global	irq_handler_1
 138              		.syntax unified
 139              		.code	16
 140              		.thumb_func
 141              		.fpu softvfp
 143              	irq_handler_1:
 144              	.LFB2:
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void irq_handler_1(){
 145              		.loc 1 34 0
 146              		.cfi_startproc
 147              		@ args = 0, pretend = 0, frame = 8
 148              		@ frame_needed = 1, uses_anonymous_args = 0
 149 006c 80B5     		push	{r7, lr}
 150              		.cfi_def_cfa_offset 8
 151              		.cfi_offset 7, -8
 152              		.cfi_offset 14, -4
 153 006e 82B0     		sub	sp, sp, #8
 154              		.cfi_def_cfa_offset 16
 155 0070 00AF     		add	r7, sp, #0
 156              		.cfi_def_cfa_register 7
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	unsigned char x = (EXTI_PR & 0x2);
 157              		.loc 1 35 0
 158 0072 144B     		ldr	r3, .L10
 159 0074 1B68     		ldr	r3, [r3]
 160 0076 DAB2     		uxtb	r2, r3
 161 0078 FB1D     		adds	r3, r7, #7
 162 007a 0221     		movs	r1, #2
 163 007c 0A40     		ands	r2, r1
 164 007e 1A70     		strb	r2, [r3]
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	if(EXTI_PR & EXTI1_BPOS){
 165              		.loc 1 36 0
 166 0080 104B     		ldr	r3, .L10
 167 0082 1B68     		ldr	r3, [r3]
 168 0084 0222     		movs	r2, #2
 169 0086 1340     		ands	r3, r2
 170 0088 18D0     		beq	.L9
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		EXTI_PR |= EXTI1_BPOS; 							//kvittera avbrottet
 171              		.loc 1 37 0
 172 008a 0E4B     		ldr	r3, .L10
 173 008c 1A68     		ldr	r2, [r3]
 174 008e 0D4B     		ldr	r3, .L10
 175 0090 0221     		movs	r1, #2
 176 0092 0A43     		orrs	r2, r1
 177 0094 1A60     		str	r2, [r3]
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 				
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_E_LOW |= (1<<5); 		//kvittera irq1
 178              		.loc 1 39 0
 179 0096 0C4B     		ldr	r3, .L10+4
 180 0098 1B78     		ldrb	r3, [r3]
 181 009a DBB2     		uxtb	r3, r3
 182 009c 0A4A     		ldr	r2, .L10+4
 183 009e 2021     		movs	r1, #32
 184 00a0 0B43     		orrs	r3, r1
 185 00a2 DBB2     		uxtb	r3, r3
 186 00a4 1370     		strb	r3, [r2]
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	count = 0;
 187              		.loc 1 40 0
 188 00a6 094B     		ldr	r3, .L10+8
 189 00a8 0022     		movs	r2, #0
 190 00aa 1A70     		strb	r2, [r3]
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_E_LOW &= ~(1<<5);
 191              		.loc 1 41 0
 192 00ac 064B     		ldr	r3, .L10+4
 193 00ae 1B78     		ldrb	r3, [r3]
 194 00b0 DBB2     		uxtb	r3, r3
 195 00b2 054A     		ldr	r2, .L10+4
 196 00b4 2021     		movs	r1, #32
 197 00b6 8B43     		bics	r3, r1
 198 00b8 DBB2     		uxtb	r3, r3
 199 00ba 1370     		strb	r3, [r2]
 200              	.L9:
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	}
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** }
 201              		.loc 1 43 0
 202 00bc C046     		nop
 203 00be BD46     		mov	sp, r7
 204 00c0 02B0     		add	sp, sp, #8
 205              		@ sp needed
 206 00c2 80BD     		pop	{r7, pc}
 207              	.L11:
 208              		.align	2
 209              	.L10:
 210 00c4 143C0140 		.word	1073822740
 211 00c8 14100240 		.word	1073877012
 212 00cc 00000000 		.word	count
 213              		.cfi_endproc
 214              	.LFE2:
 216              		.align	1
 217              		.global	irq_handler_2
 218              		.syntax unified
 219              		.code	16
 220              		.thumb_func
 221              		.fpu softvfp
 223              	irq_handler_2:
 224              	.LFB3:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void irq_handler_2(){
 225              		.loc 1 45 0
 226              		.cfi_startproc
 227              		@ args = 0, pretend = 0, frame = 8
 228              		@ frame_needed = 1, uses_anonymous_args = 0
 229 00d0 80B5     		push	{r7, lr}
 230              		.cfi_def_cfa_offset 8
 231              		.cfi_offset 7, -8
 232              		.cfi_offset 14, -4
 233 00d2 82B0     		sub	sp, sp, #8
 234              		.cfi_def_cfa_offset 16
 235 00d4 00AF     		add	r7, sp, #0
 236              		.cfi_def_cfa_register 7
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	unsigned char x = (EXTI_PR & 0x4);
 237              		.loc 1 46 0
 238 00d6 164B     		ldr	r3, .L15
 239 00d8 1B68     		ldr	r3, [r3]
 240 00da DAB2     		uxtb	r2, r3
 241 00dc FB1D     		adds	r3, r7, #7
 242 00de 0421     		movs	r1, #4
 243 00e0 0A40     		ands	r2, r1
 244 00e2 1A70     		strb	r2, [r3]
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	if(EXTI_PR & EXTI2_BPOS){
 245              		.loc 1 47 0
 246 00e4 124B     		ldr	r3, .L15
 247 00e6 1B68     		ldr	r3, [r3]
 248 00e8 0422     		movs	r2, #4
 249 00ea 1340     		ands	r3, r2
 250 00ec 1CD0     		beq	.L14
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		EXTI_PR |= EXTI2_BPOS; 							//kvittera avbrottet
 251              		.loc 1 48 0
 252 00ee 104B     		ldr	r3, .L15
 253 00f0 1A68     		ldr	r2, [r3]
 254 00f2 0F4B     		ldr	r3, .L15
 255 00f4 0421     		movs	r1, #4
 256 00f6 0A43     		orrs	r2, r1
 257 00f8 1A60     		str	r2, [r3]
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_E_LOW |= (1<<6); 		//kvittera irq2
 258              		.loc 1 50 0
 259 00fa 0E4B     		ldr	r3, .L15+4
 260 00fc 1B78     		ldrb	r3, [r3]
 261 00fe DBB2     		uxtb	r3, r3
 262 0100 0C4A     		ldr	r2, .L15+4
 263 0102 4021     		movs	r1, #64
 264 0104 0B43     		orrs	r3, r1
 265 0106 DBB2     		uxtb	r3, r3
 266 0108 1370     		strb	r3, [r2]
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_E_LOW &= ~(1<<6);
 267              		.loc 1 52 0
 268 010a 0A4B     		ldr	r3, .L15+4
 269 010c 1B78     		ldrb	r3, [r3]
 270 010e DBB2     		uxtb	r3, r3
 271 0110 084A     		ldr	r2, .L15+4
 272 0112 4021     		movs	r1, #64
 273 0114 8B43     		bics	r3, r1
 274 0116 DBB2     		uxtb	r3, r3
 275 0118 1370     		strb	r3, [r2]
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_ODR_D_LOW ^= 0xFF;
 276              		.loc 1 54 0
 277 011a 074B     		ldr	r3, .L15+8
 278 011c 1B78     		ldrb	r3, [r3]
 279 011e DBB2     		uxtb	r3, r3
 280 0120 054A     		ldr	r2, .L15+8
 281 0122 DB43     		mvns	r3, r3
 282 0124 DBB2     		uxtb	r3, r3
 283 0126 1370     		strb	r3, [r2]
 284              	.L14:
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 			}
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** }
 285              		.loc 1 56 0
 286 0128 C046     		nop
 287 012a BD46     		mov	sp, r7
 288 012c 02B0     		add	sp, sp, #8
 289              		@ sp needed
 290 012e 80BD     		pop	{r7, pc}
 291              	.L16:
 292              		.align	2
 293              	.L15:
 294 0130 143C0140 		.word	1073822740
 295 0134 14100240 		.word	1073877012
 296 0138 140C0240 		.word	1073875988
 297              		.cfi_endproc
 298              	.LFE3:
 300              		.align	1
 301              		.global	out7seg
 302              		.syntax unified
 303              		.code	16
 304              		.thumb_func
 305              		.fpu softvfp
 307              	out7seg:
 308              	.LFB4:
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void out7seg (unsigned char c){
 309              		.loc 1 58 0
 310              		.cfi_startproc
 311              		@ args = 0, pretend = 0, frame = 8
 312              		@ frame_needed = 1, uses_anonymous_args = 0
 313 013c 80B5     		push	{r7, lr}
 314              		.cfi_def_cfa_offset 8
 315              		.cfi_offset 7, -8
 316              		.cfi_offset 14, -4
 317 013e 82B0     		sub	sp, sp, #8
 318              		.cfi_def_cfa_offset 16
 319 0140 00AF     		add	r7, sp, #0
 320              		.cfi_def_cfa_register 7
 321 0142 0200     		movs	r2, r0
 322 0144 FB1D     		adds	r3, r7, #7
 323 0146 1A70     		strb	r2, [r3]
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	switch(c){
 324              		.loc 1 59 0
 325 0148 FB1D     		adds	r3, r7, #7
 326 014a 1B78     		ldrb	r3, [r3]
 327 014c 092B     		cmp	r3, #9
 328 014e 2CD8     		bhi	.L18
 329 0150 9A00     		lsls	r2, r3, #2
 330 0152 1A4B     		ldr	r3, .L31
 331 0154 D318     		adds	r3, r2, r3
 332 0156 1B68     		ldr	r3, [r3]
 333 0158 9F46     		mov	pc, r3
 334              		.section	.rodata
 335              		.align	2
 336              	.L20:
 337 0000 5A010000 		.word	.L19
 338 0004 62010000 		.word	.L21
 339 0008 6A010000 		.word	.L22
 340 000c 72010000 		.word	.L23
 341 0010 7A010000 		.word	.L24
 342 0014 82010000 		.word	.L25
 343 0018 8A010000 		.word	.L26
 344 001c 92010000 		.word	.L27
 345 0020 9A010000 		.word	.L28
 346 0024 A2010000 		.word	.L29
 347              		.text
 348              	.L19:
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 0: GPIO_ODR_D_HIGH = 0x3F; break;
 349              		.loc 1 60 0
 350 015a 194B     		ldr	r3, .L31+4
 351 015c 3F22     		movs	r2, #63
 352 015e 1A70     		strb	r2, [r3]
 353 0160 27E0     		b	.L30
 354              	.L21:
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 1: GPIO_ODR_D_HIGH = 0x06; break;
 355              		.loc 1 61 0
 356 0162 174B     		ldr	r3, .L31+4
 357 0164 0622     		movs	r2, #6
 358 0166 1A70     		strb	r2, [r3]
 359 0168 23E0     		b	.L30
 360              	.L22:
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 2: GPIO_ODR_D_HIGH = 0x5B; break;
 361              		.loc 1 62 0
 362 016a 154B     		ldr	r3, .L31+4
 363 016c 5B22     		movs	r2, #91
 364 016e 1A70     		strb	r2, [r3]
 365 0170 1FE0     		b	.L30
 366              	.L23:
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 3: GPIO_ODR_D_HIGH = 0x4F; break;
 367              		.loc 1 63 0
 368 0172 134B     		ldr	r3, .L31+4
 369 0174 4F22     		movs	r2, #79
 370 0176 1A70     		strb	r2, [r3]
 371 0178 1BE0     		b	.L30
 372              	.L24:
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 4: GPIO_ODR_D_HIGH = 0x66; break;
 373              		.loc 1 64 0
 374 017a 114B     		ldr	r3, .L31+4
 375 017c 6622     		movs	r2, #102
 376 017e 1A70     		strb	r2, [r3]
 377 0180 17E0     		b	.L30
 378              	.L25:
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 5: GPIO_ODR_D_HIGH = 0x6D; break;
 379              		.loc 1 65 0
 380 0182 0F4B     		ldr	r3, .L31+4
 381 0184 6D22     		movs	r2, #109
 382 0186 1A70     		strb	r2, [r3]
 383 0188 13E0     		b	.L30
 384              	.L26:
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 6: GPIO_ODR_D_HIGH = 0x7D; break;
 385              		.loc 1 66 0
 386 018a 0D4B     		ldr	r3, .L31+4
 387 018c 7D22     		movs	r2, #125
 388 018e 1A70     		strb	r2, [r3]
 389 0190 0FE0     		b	.L30
 390              	.L27:
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 7: GPIO_ODR_D_HIGH = 0x07; break;
 391              		.loc 1 67 0
 392 0192 0B4B     		ldr	r3, .L31+4
 393 0194 0722     		movs	r2, #7
 394 0196 1A70     		strb	r2, [r3]
 395 0198 0BE0     		b	.L30
 396              	.L28:
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 8: GPIO_ODR_D_HIGH = 0x7F; break;
 397              		.loc 1 68 0
 398 019a 094B     		ldr	r3, .L31+4
 399 019c 7F22     		movs	r2, #127
 400 019e 1A70     		strb	r2, [r3]
 401 01a0 07E0     		b	.L30
 402              	.L29:
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		case 9: GPIO_ODR_D_HIGH = 0x6F; break;
 403              		.loc 1 69 0
 404 01a2 074B     		ldr	r3, .L31+4
 405 01a4 6F22     		movs	r2, #111
 406 01a6 1A70     		strb	r2, [r3]
 407 01a8 03E0     		b	.L30
 408              	.L18:
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //		case 0xA: GPIO_ODR_D_LOW = 0x77; break;
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //		case 0xB: GPIO_ODR_D_LOW = 0x7C; break;
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //		case 0xC: GPIO_ODR_D_LOW = 0x39; break;
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //		case 0xD: GPIO_ODR_D_LOW = 0x3F; break;
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //		case 0xE: GPIO_ODR_D_LOW = 0x79; break;
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //		case 0xF: GPIO_ODR_D_LOW = 0x71; break;
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		default: GPIO_ODR_D_HIGH = 0x00; break;
 409              		.loc 1 77 0
 410 01aa 054B     		ldr	r3, .L31+4
 411 01ac 0022     		movs	r2, #0
 412 01ae 1A70     		strb	r2, [r3]
 413 01b0 C046     		nop
 414              	.L30:
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	}
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** }
 415              		.loc 1 79 0
 416 01b2 C046     		nop
 417 01b4 BD46     		mov	sp, r7
 418 01b6 02B0     		add	sp, sp, #8
 419              		@ sp needed
 420 01b8 80BD     		pop	{r7, pc}
 421              	.L32:
 422 01ba C046     		.align	2
 423              	.L31:
 424 01bc 00000000 		.word	.L20
 425 01c0 150C0240 		.word	1073875989
 426              		.cfi_endproc
 427              	.LFE4:
 429              		.align	1
 430              		.global	init_flipflop
 431              		.syntax unified
 432              		.code	16
 433              		.thumb_func
 434              		.fpu softvfp
 436              	init_flipflop:
 437              	.LFB5:
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void init_flipflop(){
 438              		.loc 1 81 0
 439              		.cfi_startproc
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 1, uses_anonymous_args = 0
 442 01c4 80B5     		push	{r7, lr}
 443              		.cfi_def_cfa_offset 8
 444              		.cfi_offset 7, -8
 445              		.cfi_offset 14, -4
 446 01c6 00AF     		add	r7, sp, #0
 447              		.cfi_def_cfa_register 7
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_MODER_D = 0x55555555;
 448              		.loc 1 82 0
 449 01c8 1D4B     		ldr	r3, .L34
 450 01ca 1E4A     		ldr	r2, .L34+4
 451 01cc 1A60     		str	r2, [r3]
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	GPIO_MODER_LOW_E = 0x5500;
 452              		.loc 1 83 0
 453 01ce 1E4B     		ldr	r3, .L34+8
 454 01d0 AA22     		movs	r2, #170
 455 01d2 D201     		lsls	r2, r2, #7
 456 01d4 1A80     		strh	r2, [r3]
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	/* SET REGISTERS TO 0 */
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	SYSCFG_EXTICR1 &= ~(0xFFFF); 
 457              		.loc 1 86 0
 458 01d6 1D4B     		ldr	r3, .L34+12
 459 01d8 1A68     		ldr	r2, [r3]
 460 01da 1C4B     		ldr	r3, .L34+12
 461 01dc 120C     		lsrs	r2, r2, #16
 462 01de 1204     		lsls	r2, r2, #16
 463 01e0 1A60     		str	r2, [r3]
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	/* PE = 4 till avbrottslina EXTI0 &  EXTI2 & EXTI1 */
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	SYSCFG_EXTICR1 |= 0x0444;
 464              		.loc 1 89 0
 465 01e2 1A4B     		ldr	r3, .L34+12
 466 01e4 1A68     		ldr	r2, [r3]
 467 01e6 194B     		ldr	r3, .L34+12
 468 01e8 1949     		ldr	r1, .L34+16
 469 01ea 0A43     		orrs	r2, r1
 470 01ec 1A60     		str	r2, [r3]
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	EXTI_IMR |= (EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS); 			//aktivera avbrott EXTI0 &  EXTI2 & EXTI1 :
 471              		.loc 1 91 0
 472 01ee 194B     		ldr	r3, .L34+20
 473 01f0 1A68     		ldr	r2, [r3]
 474 01f2 184B     		ldr	r3, .L34+20
 475 01f4 0721     		movs	r1, #7
 476 01f6 0A43     		orrs	r2, r1
 477 01f8 1A60     		str	r2, [r3]
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //	EXTI_RTSR &= ~(EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//maskera positiv flank
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** //	EXTI_FTSR |= (EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//aktivera negativ flank
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	EXTI_RTSR |= (EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//aktivera positiv flank
 478              		.loc 1 96 0
 479 01fa 174B     		ldr	r3, .L34+24
 480 01fc 1A68     		ldr	r2, [r3]
 481 01fe 164B     		ldr	r3, .L34+24
 482 0200 0721     		movs	r1, #7
 483 0202 0A43     		orrs	r2, r1
 484 0204 1A60     		str	r2, [r3]
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	EXTI_FTSR &= ~(EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//maskera negativ flank
 485              		.loc 1 97 0
 486 0206 154B     		ldr	r3, .L34+28
 487 0208 1A68     		ldr	r2, [r3]
 488 020a 144B     		ldr	r3, .L34+28
 489 020c 0721     		movs	r1, #7
 490 020e 8A43     		bics	r2, r1
 491 0210 1A60     		str	r2, [r3]
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	SCB_VTOR = 0x2001C000; 											//relokera avbrottsvektorn
 492              		.loc 1 99 0
 493 0212 134B     		ldr	r3, .L34+32
 494 0214 134A     		ldr	r2, .L34+36
 495 0216 1A60     		str	r2, [r3]
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	EXTI1_IRQVEC = irq_handler_1;					//motsvarar avbrottsnummer 7, vektor offset 0x5C
 496              		.loc 1 101 0
 497 0218 134B     		ldr	r3, .L34+40
 498 021a 144A     		ldr	r2, .L34+44
 499 021c 1A60     		str	r2, [r3]
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	EXTI2_IRQVEC = irq_handler_2;					//motsvarar avbrottsnummer 8, vektor offset 0x60
 500              		.loc 1 102 0
 501 021e 144B     		ldr	r3, .L34+48
 502 0220 144A     		ldr	r2, .L34+52
 503 0222 1A60     		str	r2, [r3]
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	EXTI0_IRQVEC = irq_handler_0;				//motsvarar avbrottsnummer 9, vektor offset 0x58
 504              		.loc 1 103 0
 505 0224 144B     		ldr	r3, .L34+56
 506 0226 154A     		ldr	r2, .L34+60
 507 0228 1A60     		str	r2, [r3]
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	NVIC_ISER0 |= (NVIC_EXTI1_BPOS | NVIC_EXTI2_BPOS | NVIC_EXTI0_BPOS); 							//bit b9 | b8 | b7 i s
 508              		.loc 1 105 0
 509 022a 154B     		ldr	r3, .L34+64
 510 022c 1A68     		ldr	r2, [r3]
 511 022e 144B     		ldr	r3, .L34+64
 512 0230 E021     		movs	r1, #224
 513 0232 4900     		lsls	r1, r1, #1
 514 0234 0A43     		orrs	r2, r1
 515 0236 1A60     		str	r2, [r3]
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** }
 516              		.loc 1 106 0
 517 0238 C046     		nop
 518 023a BD46     		mov	sp, r7
 519              		@ sp needed
 520 023c 80BD     		pop	{r7, pc}
 521              	.L35:
 522 023e C046     		.align	2
 523              	.L34:
 524 0240 000C0240 		.word	1073875968
 525 0244 55555555 		.word	1431655765
 526 0248 00100240 		.word	1073876992
 527 024c 08380140 		.word	1073821704
 528 0250 44040000 		.word	1092
 529 0254 003C0140 		.word	1073822720
 530 0258 083C0140 		.word	1073822728
 531 025c 0C3C0140 		.word	1073822732
 532 0260 08ED00E0 		.word	-536810232
 533 0264 00C00120 		.word	536985600
 534 0268 5CC00120 		.word	536985692
 535 026c 00000000 		.word	irq_handler_1
 536 0270 60C00120 		.word	536985696
 537 0274 00000000 		.word	irq_handler_2
 538 0278 58C00120 		.word	536985688
 539 027c 00000000 		.word	irq_handler_0
 540 0280 00E100E0 		.word	-536813312
 541              		.cfi_endproc
 542              	.LFE5:
 544              		.align	1
 545              		.global	main
 546              		.syntax unified
 547              		.code	16
 548              		.thumb_func
 549              		.fpu softvfp
 551              	main:
 552              	.LFB6:
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** void main(void)
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** {
 553              		.loc 1 109 0
 554              		.cfi_startproc
 555              		@ args = 0, pretend = 0, frame = 0
 556              		@ frame_needed = 1, uses_anonymous_args = 0
 557 0284 80B5     		push	{r7, lr}
 558              		.cfi_def_cfa_offset 8
 559              		.cfi_offset 7, -8
 560              		.cfi_offset 14, -4
 561 0286 00AF     		add	r7, sp, #0
 562              		.cfi_def_cfa_register 7
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	init_flipflop();
 563              		.loc 1 110 0
 564 0288 FFF7FEFF 		bl	init_flipflop
 565              	.L37:
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 	while(1){
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq_vectors\startup.c **** 		out7seg(count);
 566              		.loc 1 112 0 discriminator 1
 567 028c 034B     		ldr	r3, .L38
 568 028e 1B78     		ldrb	r3, [r3]
 569 0290 DBB2     		uxtb	r3, r3
 570 0292 1800     		movs	r0, r3
 571 0294 FFF7FEFF 		bl	out7seg
 572 0298 F8E7     		b	.L37
 573              	.L39:
 574 029a C046     		.align	2
 575              	.L38:
 576 029c 00000000 		.word	count
 577              		.cfi_endproc
 578              	.LFE6:
 580              	.Letext0:
