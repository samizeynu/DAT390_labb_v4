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
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling/startup.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c ****  * 	startup.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c ****  
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** void startup ( void )
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** {
  26              		.loc 1 11 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** __asm volatile(
  31              		.loc 1 12 0
  32              		.syntax divided
  33              	@ 12 "C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	"_exit: B .\n"				/* never return */
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	) ;
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** }
  40              		.loc 1 18 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	ball_geometry
  48              		.data
  49              		.align	2
  52              	ball_geometry:
  53 0000 0C000000 		.word	12
  54 0004 04000000 		.word	4
  55 0008 04000000 		.word	4
  56 000c 00       		.byte	0
  57 000d 01       		.byte	1
  58 000e 00       		.byte	0
  59 000f 02       		.byte	2
  60 0010 01       		.byte	1
  61 0011 00       		.byte	0
  62 0012 01       		.byte	1
  63 0013 01       		.byte	1
  64 0014 01       		.byte	1
  65 0015 02       		.byte	2
  66 0016 01       		.byte	1
  67 0017 03       		.byte	3
  68 0018 02       		.byte	2
  69 0019 00       		.byte	0
  70 001a 02       		.byte	2
  71 001b 01       		.byte	1
  72 001c 02       		.byte	2
  73 001d 02       		.byte	2
  74 001e 02       		.byte	2
  75 001f 03       		.byte	3
  76 0020 03       		.byte	3
  77 0021 01       		.byte	1
  78 0022 03       		.byte	3
  79 0023 02       		.byte	2
  80 0024 00000000 		.space	16
  80      00000000 
  80      00000000 
  80      00000000 
  81              		.text
  82              		.align	1
  83              		.global	_inituart
  84              		.syntax unified
  85              		.code	16
  86              		.thumb_func
  87              		.fpu softvfp
  89              	_inituart:
  90              	.LFB1:
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** void _inituart(){
  91              		.loc 1 20 0
  92              		.cfi_startproc
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 1, uses_anonymous_args = 0
  95 0000 80B5     		push	{r7, lr}
  96              		.cfi_def_cfa_offset 8
  97              		.cfi_offset 7, -8
  98              		.cfi_offset 14, -4
  99 0002 00AF     		add	r7, sp, #0
 100              		.cfi_def_cfa_register 7
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	USART1->brr = 0x2D9; // baudrate 115200 : USARTDIV = 84 Mhz / (baudrate*16) : konvertera heltalet 
 101              		.loc 1 21 0
 102 0004 054B     		ldr	r3, .L3
 103 0006 064A     		ldr	r2, .L3+4
 104 0008 1A81     		strh	r2, [r3, #8]
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	USART1->cr2 = 0;
 105              		.loc 1 22 0
 106 000a 044B     		ldr	r3, .L3
 107 000c 0022     		movs	r2, #0
 108 000e 1A82     		strh	r2, [r3, #16]
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	USART1->cr1 = BIT_UE | BIT_TE | BIT_RE;
 109              		.loc 1 24 0
 110 0010 024B     		ldr	r3, .L3
 111 0012 044A     		ldr	r2, .L3+8
 112 0014 9A81     		strh	r2, [r3, #12]
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** }
 113              		.loc 1 25 0
 114 0016 C046     		nop
 115 0018 BD46     		mov	sp, r7
 116              		@ sp needed
 117 001a 80BD     		pop	{r7, pc}
 118              	.L4:
 119              		.align	2
 120              	.L3:
 121 001c 00100140 		.word	1073811456
 122 0020 D9020000 		.word	729
 123 0024 0C200000 		.word	8204
 124              		.cfi_endproc
 125              	.LFE1:
 127              		.align	1
 128              		.global	_tstchar
 129              		.syntax unified
 130              		.code	16
 131              		.thumb_func
 132              		.fpu softvfp
 134              	_tstchar:
 135              	.LFB2:
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** char _tstchar(){ 
 136              		.loc 1 27 0
 137              		.cfi_startproc
 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 1, uses_anonymous_args = 0
 140 0028 80B5     		push	{r7, lr}
 141              		.cfi_def_cfa_offset 8
 142              		.cfi_offset 7, -8
 143              		.cfi_offset 14, -4
 144 002a 00AF     		add	r7, sp, #0
 145              		.cfi_def_cfa_register 7
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	if((USART1->sr & BIT_RXNE) == BIT_RXNE)
 146              		.loc 1 28 0
 147 002c 084B     		ldr	r3, .L8
 148 002e 1B88     		ldrh	r3, [r3]
 149 0030 9BB2     		uxth	r3, r3
 150 0032 1A00     		movs	r2, r3
 151 0034 2023     		movs	r3, #32
 152 0036 1340     		ands	r3, r2
 153 0038 202B     		cmp	r3, #32
 154 003a 04D1     		bne	.L6
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 		return (char)USART1->dr;
 155              		.loc 1 29 0
 156 003c 044B     		ldr	r3, .L8
 157 003e 9B88     		ldrh	r3, [r3, #4]
 158 0040 9BB2     		uxth	r3, r3
 159 0042 DBB2     		uxtb	r3, r3
 160 0044 00E0     		b	.L7
 161              	.L6:
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	return 0;
 162              		.loc 1 31 0
 163 0046 0023     		movs	r3, #0
 164              	.L7:
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** }
 165              		.loc 1 32 0
 166 0048 1800     		movs	r0, r3
 167 004a BD46     		mov	sp, r7
 168              		@ sp needed
 169 004c 80BD     		pop	{r7, pc}
 170              	.L9:
 171 004e C046     		.align	2
 172              	.L8:
 173 0050 00100140 		.word	1073811456
 174              		.cfi_endproc
 175              	.LFE2:
 177              		.align	1
 178              		.global	_outchar
 179              		.syntax unified
 180              		.code	16
 181              		.thumb_func
 182              		.fpu softvfp
 184              	_outchar:
 185              	.LFB3:
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** void _outchar(char c){
 186              		.loc 1 34 0
 187              		.cfi_startproc
 188              		@ args = 0, pretend = 0, frame = 8
 189              		@ frame_needed = 1, uses_anonymous_args = 0
 190 0054 80B5     		push	{r7, lr}
 191              		.cfi_def_cfa_offset 8
 192              		.cfi_offset 7, -8
 193              		.cfi_offset 14, -4
 194 0056 82B0     		sub	sp, sp, #8
 195              		.cfi_def_cfa_offset 16
 196 0058 00AF     		add	r7, sp, #0
 197              		.cfi_def_cfa_register 7
 198 005a 0200     		movs	r2, r0
 199 005c FB1D     		adds	r3, r7, #7
 200 005e 1A70     		strb	r2, [r3]
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	while(USART1->sr & BIT_TXE){
 201              		.loc 1 35 0
 202 0060 04E0     		b	.L11
 203              	.L12:
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 		USART1->dr = (unsigned short) c;
 204              		.loc 1 36 0
 205 0062 084A     		ldr	r2, .L13
 206 0064 FB1D     		adds	r3, r7, #7
 207 0066 1B78     		ldrb	r3, [r3]
 208 0068 9BB2     		uxth	r3, r3
 209 006a 9380     		strh	r3, [r2, #4]
 210              	.L11:
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	while(USART1->sr & BIT_TXE){
 211              		.loc 1 35 0
 212 006c 054B     		ldr	r3, .L13
 213 006e 1B88     		ldrh	r3, [r3]
 214 0070 9BB2     		uxth	r3, r3
 215 0072 1A00     		movs	r2, r3
 216 0074 8023     		movs	r3, #128
 217 0076 1340     		ands	r3, r2
 218 0078 F3D1     		bne	.L12
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	}
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** }
 219              		.loc 1 38 0
 220 007a C046     		nop
 221 007c BD46     		mov	sp, r7
 222 007e 02B0     		add	sp, sp, #8
 223              		@ sp needed
 224 0080 80BD     		pop	{r7, pc}
 225              	.L14:
 226 0082 C046     		.align	2
 227              	.L13:
 228 0084 00100140 		.word	1073811456
 229              		.cfi_endproc
 230              	.LFE3:
 232              		.align	1
 233              		.global	main
 234              		.syntax unified
 235              		.code	16
 236              		.thumb_func
 237              		.fpu softvfp
 239              	main:
 240              	.LFB4:
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** void main(void)
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** {
 241              		.loc 1 41 0
 242              		.cfi_startproc
 243              		@ args = 0, pretend = 0, frame = 8
 244              		@ frame_needed = 1, uses_anonymous_args = 0
 245 0088 90B5     		push	{r4, r7, lr}
 246              		.cfi_def_cfa_offset 12
 247              		.cfi_offset 4, -12
 248              		.cfi_offset 7, -8
 249              		.cfi_offset 14, -4
 250 008a 83B0     		sub	sp, sp, #12
 251              		.cfi_def_cfa_offset 24
 252 008c 00AF     		add	r7, sp, #0
 253              		.cfi_def_cfa_register 7
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	char c;
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	_inituart();
 254              		.loc 1 43 0
 255 008e FFF7FEFF 		bl	_inituart
 256              	.L17:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 	while(1){
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 		c = _tstchar();
 257              		.loc 1 45 0
 258 0092 FC1D     		adds	r4, r7, #7
 259 0094 FFF7FEFF 		bl	_tstchar
 260 0098 0300     		movs	r3, r0
 261 009a 2370     		strb	r3, [r4]
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 		if(c)
 262              		.loc 1 46 0
 263 009c FB1D     		adds	r3, r7, #7
 264 009e 1B78     		ldrb	r3, [r3]
 265 00a0 002B     		cmp	r3, #0
 266 00a2 F6D0     		beq	.L17
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 			_outchar(c);
 267              		.loc 1 47 0
 268 00a4 FB1D     		adds	r3, r7, #7
 269 00a6 1B78     		ldrb	r3, [r3]
 270 00a8 1800     		movs	r0, r3
 271 00aa FFF7FEFF 		bl	_outchar
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling\startup.c **** 		if(c)
 272              		.loc 1 45 0
 273 00ae F0E7     		b	.L17
 274              		.cfi_endproc
 275              	.LFE4:
 277              	.Letext0:
 278              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/usart_polling/startup.h"
