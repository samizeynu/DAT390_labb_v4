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
  24              	.LFB4:
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c ****  * 	startup.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #include "delays.c"
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void startup ( void )
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
  26              		.loc 1 12 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __asm volatile(
  31              		.loc 1 13 0
  32              		.syntax divided
  33              	@ 13 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" MOV SP,R0\n"
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BL main\n"				/* call main */
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	"_exit: B .\n"				/* never return */
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	) ;
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
  40              		.loc 1 19 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE4:
  47              		.text
  48              		.align	1
  49              		.global	delay_250ns
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	delay_250ns:
  56              	.LFB0:
  57              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/delays.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c ****  * 	delay.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** void delay_250ns(void){
  58              		.loc 2 8 0
  59              		.cfi_startproc
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 1, uses_anonymous_args = 0
  62 0000 80B5     		push	{r7, lr}
  63              		.cfi_def_cfa_offset 8
  64              		.cfi_offset 7, -8
  65              		.cfi_offset 14, -4
  66 0002 00AF     		add	r7, sp, #0
  67              		.cfi_def_cfa_register 7
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	STK_CTRL = 0;
  68              		.loc 2 9 0
  69 0004 0C4B     		ldr	r3, .L4
  70 0006 0022     		movs	r2, #0
  71 0008 1A60     		str	r2, [r3]
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	STK_LOAD = ((168/4) - 1);
  72              		.loc 2 10 0
  73 000a 0C4B     		ldr	r3, .L4+4
  74 000c 2922     		movs	r2, #41
  75 000e 1A60     		str	r2, [r3]
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	STK_VAL = 0;
  76              		.loc 2 11 0
  77 0010 0B4B     		ldr	r3, .L4+8
  78 0012 0022     		movs	r2, #0
  79 0014 1A60     		str	r2, [r3]
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	STK_CTRL = 5;
  80              		.loc 2 12 0
  81 0016 084B     		ldr	r3, .L4
  82 0018 0522     		movs	r2, #5
  83 001a 1A60     		str	r2, [r3]
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	while((STK_CTRL & 0x10000) == 0){};
  84              		.loc 2 14 0
  85 001c C046     		nop
  86              	.L3:
  87              		.loc 2 14 0 is_stmt 0 discriminator 1
  88 001e 064B     		ldr	r3, .L4
  89 0020 1A68     		ldr	r2, [r3]
  90 0022 8023     		movs	r3, #128
  91 0024 5B02     		lsls	r3, r3, #9
  92 0026 1340     		ands	r3, r2
  93 0028 F9D0     		beq	.L3
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	STK_CTRL = 0;
  94              		.loc 2 15 0 is_stmt 1
  95 002a 034B     		ldr	r3, .L4
  96 002c 0022     		movs	r2, #0
  97 002e 1A60     		str	r2, [r3]
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** }
  98              		.loc 2 16 0
  99 0030 C046     		nop
 100 0032 BD46     		mov	sp, r7
 101              		@ sp needed
 102 0034 80BD     		pop	{r7, pc}
 103              	.L5:
 104 0036 C046     		.align	2
 105              	.L4:
 106 0038 10E000E0 		.word	-536813552
 107 003c 14E000E0 		.word	-536813548
 108 0040 18E000E0 		.word	-536813544
 109              		.cfi_endproc
 110              	.LFE0:
 112              		.align	1
 113              		.global	delay_micro
 114              		.syntax unified
 115              		.code	16
 116              		.thumb_func
 117              		.fpu softvfp
 119              	delay_micro:
 120              	.LFB1:
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** void delay_micro(unsigned int us){
 121              		.loc 2 18 0
 122              		.cfi_startproc
 123              		@ args = 0, pretend = 0, frame = 8
 124              		@ frame_needed = 1, uses_anonymous_args = 0
 125 0044 80B5     		push	{r7, lr}
 126              		.cfi_def_cfa_offset 8
 127              		.cfi_offset 7, -8
 128              		.cfi_offset 14, -4
 129 0046 82B0     		sub	sp, sp, #8
 130              		.cfi_def_cfa_offset 16
 131 0048 00AF     		add	r7, sp, #0
 132              		.cfi_def_cfa_register 7
 133 004a 7860     		str	r0, [r7, #4]
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	while(us--){
 134              		.loc 2 19 0
 135 004c 07E0     		b	.L7
 136              	.L8:
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_250ns();
 137              		.loc 2 20 0
 138 004e FFF7FEFF 		bl	delay_250ns
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_250ns();
 139              		.loc 2 21 0
 140 0052 FFF7FEFF 		bl	delay_250ns
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_250ns(); 
 141              		.loc 2 22 0
 142 0056 FFF7FEFF 		bl	delay_250ns
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_250ns();
 143              		.loc 2 23 0
 144 005a FFF7FEFF 		bl	delay_250ns
 145              	.L7:
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_250ns();
 146              		.loc 2 19 0
 147 005e 7B68     		ldr	r3, [r7, #4]
 148 0060 5A1E     		subs	r2, r3, #1
 149 0062 7A60     		str	r2, [r7, #4]
 150 0064 002B     		cmp	r3, #0
 151 0066 F2D1     		bne	.L8
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	}
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** }
 152              		.loc 2 25 0
 153 0068 C046     		nop
 154 006a BD46     		mov	sp, r7
 155 006c 02B0     		add	sp, sp, #8
 156              		@ sp needed
 157 006e 80BD     		pop	{r7, pc}
 158              		.cfi_endproc
 159              	.LFE1:
 161              		.global	__aeabi_uidiv
 162              		.align	1
 163              		.global	delay_milli
 164              		.syntax unified
 165              		.code	16
 166              		.thumb_func
 167              		.fpu softvfp
 169              	delay_milli:
 170              	.LFB2:
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** void delay_milli(unsigned int ms){
 171              		.loc 2 27 0
 172              		.cfi_startproc
 173              		@ args = 0, pretend = 0, frame = 8
 174              		@ frame_needed = 1, uses_anonymous_args = 0
 175 0070 80B5     		push	{r7, lr}
 176              		.cfi_def_cfa_offset 8
 177              		.cfi_offset 7, -8
 178              		.cfi_offset 14, -4
 179 0072 82B0     		sub	sp, sp, #8
 180              		.cfi_def_cfa_offset 16
 181 0074 00AF     		add	r7, sp, #0
 182              		.cfi_def_cfa_register 7
 183 0076 7860     		str	r0, [r7, #4]
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** #ifdef SIMULATOR
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	ms = ms / 100;
 184              		.loc 2 30 0
 185 0078 7B68     		ldr	r3, [r7, #4]
 186 007a 6421     		movs	r1, #100
 187 007c 1800     		movs	r0, r3
 188 007e FFF7FEFF 		bl	__aeabi_uidiv
 189              	.LVL0:
 190 0082 0300     		movs	r3, r0
 191 0084 7B60     		str	r3, [r7, #4]
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	ms++;
 192              		.loc 2 31 0
 193 0086 7B68     		ldr	r3, [r7, #4]
 194 0088 0133     		adds	r3, r3, #1
 195 008a 7B60     		str	r3, [r7, #4]
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** #endif
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	while( ms-- )
 196              		.loc 2 34 0
 197 008c 04E0     		b	.L10
 198              	.L11:
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_micro(1000);
 199              		.loc 2 35 0
 200 008e FA23     		movs	r3, #250
 201 0090 9B00     		lsls	r3, r3, #2
 202 0092 1800     		movs	r0, r3
 203 0094 FFF7FEFF 		bl	delay_micro
 204              	.L10:
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 		delay_micro(1000);
 205              		.loc 2 34 0
 206 0098 7B68     		ldr	r3, [r7, #4]
 207 009a 5A1E     		subs	r2, r3, #1
 208 009c 7A60     		str	r2, [r7, #4]
 209 009e 002B     		cmp	r3, #0
 210 00a0 F5D1     		bne	.L11
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** }
 211              		.loc 2 36 0
 212 00a2 C046     		nop
 213 00a4 BD46     		mov	sp, r7
 214 00a6 02B0     		add	sp, sp, #8
 215              		@ sp needed
 216 00a8 80BD     		pop	{r7, pc}
 217              		.cfi_endproc
 218              	.LFE2:
 220              		.align	1
 221              		.global	delay_500ns
 222              		.syntax unified
 223              		.code	16
 224              		.thumb_func
 225              		.fpu softvfp
 227              	delay_500ns:
 228              	.LFB3:
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** void delay_500ns(void){
 229              		.loc 2 38 0
 230              		.cfi_startproc
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 1, uses_anonymous_args = 0
 233 00aa 80B5     		push	{r7, lr}
 234              		.cfi_def_cfa_offset 8
 235              		.cfi_offset 7, -8
 236              		.cfi_offset 14, -4
 237 00ac 00AF     		add	r7, sp, #0
 238              		.cfi_def_cfa_register 7
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	delay_250ns();
 239              		.loc 2 39 0
 240 00ae FFF7FEFF 		bl	delay_250ns
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** 	delay_250ns();
 241              		.loc 2 40 0
 242 00b2 FFF7FEFF 		bl	delay_250ns
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\delays.c **** }...
 243              		.loc 2 41 0
 244 00b6 C046     		nop
 245 00b8 BD46     		mov	sp, r7
 246              		@ sp needed
 247 00ba 80BD     		pop	{r7, pc}
 248              		.cfi_endproc
 249              	.LFE3:
 251              		.align	1
 252              		.global	getPsrReg
 253              		.syntax unified
 254              		.code	16
 255              		.thumb_func
 256              		.fpu softvfp
 258              	getPsrReg:
 259              	.LFB5:
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __attribute__((naked)) unsigned int getPsrReg (void)
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 260              		.loc 1 22 0
 261              		.cfi_startproc
 262              		@ Naked Function: prologue and epilogue provided by programmer.
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 1, uses_anonymous_args = 0
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	__asm (
 265              		.loc 1 23 0
 266              		.syntax divided
 267              	@ 23 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
 268 00bc EFF30080 		 MRS	R0, APSR
 269 00c0 7047     	 BX	LR
 270              	
 271              	@ 0 "" 2
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" MRS	R0, APSR\n"
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BX	LR\n"
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	);
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 272              		.loc 1 27 0
 273              		.thumb
 274              		.syntax unified
 275 00c2 C046     		nop
 276 00c4 1800     		movs	r0, r3
 277              		.cfi_endproc
 278              	.LFE5:
 280              		.align	1
 281              		.global	getControlReg
 282              		.syntax unified
 283              		.code	16
 284              		.thumb_func
 285              		.fpu softvfp
 287              	getControlReg:
 288              	.LFB6:
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __attribute__((naked)) unsigned int getControlReg (void)
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 289              		.loc 1 30 0
 290              		.cfi_startproc
 291              		@ Naked Function: prologue and epilogue provided by programmer.
 292              		@ args = 0, pretend = 0, frame = 0
 293              		@ frame_needed = 1, uses_anonymous_args = 0
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	__asm (
 294              		.loc 1 31 0
 295              		.syntax divided
 296              	@ 31 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
 297 00c6 EFF31480 		 MRS	R0, CONTROL
 298 00ca 7047     	 BX	LR
 299              	
 300              	@ 0 "" 2
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" MRS	R0, CONTROL\n"
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BX	LR\n"
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	);
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 301              		.loc 1 35 0
 302              		.thumb
 303              		.syntax unified
 304 00cc C046     		nop
 305 00ce 1800     		movs	r0, r3
 306              		.cfi_endproc
 307              	.LFE6:
 309              		.align	1
 310              		.global	setPsrReg
 311              		.syntax unified
 312              		.code	16
 313              		.thumb_func
 314              		.fpu softvfp
 316              	setPsrReg:
 317              	.LFB7:
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __attribute__((naked)) void setPsrReg (unsigned int apsr)
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 318              		.loc 1 38 0
 319              		.cfi_startproc
 320              		@ Naked Function: prologue and epilogue provided by programmer.
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 1, uses_anonymous_args = 0
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	__asm (
 323              		.loc 1 39 0
 324              		.syntax divided
 325              	@ 39 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
 326 00d0 80F30088 		 MSR	APSR, R0
 327 00d4 7047     	 BX	LR
 328              	
 329              	@ 0 "" 2
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" MSR	APSR, R0\n"
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BX	LR\n"
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	);
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 330              		.loc 1 43 0
 331              		.thumb
 332              		.syntax unified
 333 00d6 C046     		nop
 334              		.cfi_endproc
 335              	.LFE7:
 337              		.align	1
 338              		.global	setControlReg
 339              		.syntax unified
 340              		.code	16
 341              		.thumb_func
 342              		.fpu softvfp
 344              	setControlReg:
 345              	.LFB8:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __attribute__((naked)) void setControlReg (unsigned int ctrlReg)
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 346              		.loc 1 46 0
 347              		.cfi_startproc
 348              		@ Naked Function: prologue and epilogue provided by programmer.
 349              		@ args = 0, pretend = 0, frame = 0
 350              		@ frame_needed = 1, uses_anonymous_args = 0
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	__asm (
 351              		.loc 1 47 0
 352              		.syntax divided
 353              	@ 47 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
 354 00d8 80F31488 		 MSR	CONTROL, R0
 355 00dc 7047     	 BX	LR
 356              	
 357              	@ 0 "" 2
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" MSR	CONTROL, R0\n"
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BX	LR\n"
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	);
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 358              		.loc 1 51 0
 359              		.thumb
 360              		.syntax unified
 361 00de C046     		nop
 362              		.cfi_endproc
 363              	.LFE8:
 365              		.align	1
 366              		.global	setUnprivileged
 367              		.syntax unified
 368              		.code	16
 369              		.thumb_func
 370              		.fpu softvfp
 372              	setUnprivileged:
 373              	.LFB9:
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void setUnprivileged(void){
 374              		.loc 1 53 0
 375              		.cfi_startproc
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 1, uses_anonymous_args = 0
 378 00e0 80B5     		push	{r7, lr}
 379              		.cfi_def_cfa_offset 8
 380              		.cfi_offset 7, -8
 381              		.cfi_offset 14, -4
 382 00e2 00AF     		add	r7, sp, #0
 383              		.cfi_def_cfa_register 7
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	setControlReg(getControlReg() | 2);
 384              		.loc 1 54 0
 385 00e4 FFF7FEFF 		bl	getControlReg
 386 00e8 0200     		movs	r2, r0
 387 00ea 0223     		movs	r3, #2
 388 00ec 1343     		orrs	r3, r2
 389 00ee 1800     		movs	r0, r3
 390 00f0 FFF7FEFF 		bl	setControlReg
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 391              		.loc 1 55 0
 392 00f4 C046     		nop
 393 00f6 BD46     		mov	sp, r7
 394              		@ sp needed
 395 00f8 80BD     		pop	{r7, pc}
 396              		.cfi_endproc
 397              	.LFE9:
 399              		.align	1
 400              		.global	enable_interrupt
 401              		.syntax unified
 402              		.code	16
 403              		.thumb_func
 404              		.fpu softvfp
 406              	enable_interrupt:
 407              	.LFB10:
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __attribute__((naked)) void enable_interrupt (void)
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 408              		.loc 1 58 0
 409              		.cfi_startproc
 410              		@ Naked Function: prologue and epilogue provided by programmer.
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 1, uses_anonymous_args = 0
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	__asm volatile(
 413              		.loc 1 59 0
 414              		.syntax divided
 415              	@ 59 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
 416 00fa 62B6     		 CPSIE	I
 417 00fc 7047     	 BX	LR
 418              	
 419              	@ 0 "" 2
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" CPSIE	I\n"
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BX	LR\n"
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	);
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 420              		.loc 1 63 0
 421              		.thumb
 422              		.syntax unified
 423 00fe C046     		nop
 424              		.cfi_endproc
 425              	.LFE10:
 427              		.align	1
 428              		.global	disable_interrupt
 429              		.syntax unified
 430              		.code	16
 431              		.thumb_func
 432              		.fpu softvfp
 434              	disable_interrupt:
 435              	.LFB11:
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** __attribute__((naked)) void disable_interrupt (void)
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 436              		.loc 1 66 0
 437              		.cfi_startproc
 438              		@ Naked Function: prologue and epilogue provided by programmer.
 439              		@ args = 0, pretend = 0, frame = 0
 440              		@ frame_needed = 1, uses_anonymous_args = 0
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	__asm volatile(
 441              		.loc 1 67 0
 442              		.syntax divided
 443              	@ 67 "C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick/startup.c" 1
 444 0100 72B6     		 CPSID	I
 445 0102 7047     	 BX	LR
 446              	
 447              	@ 0 "" 2
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" CPSID	I\n"
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	" BX	LR\n"
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	);
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 448              		.loc 1 71 0
 449              		.thumb
 450              		.syntax unified
 451 0104 C046     		nop
 452              		.cfi_endproc
 453              	.LFE11:
 455              		.bss
 456              		.align	2
 457              	systick_flag:
 458 0000 00000000 		.space	4
 460              		.align	2
 461              	delay_count:
 462 0004 00000000 		.space	4
 464              		.text
 465              		.align	1
 466              		.global	delay_1mikro
 467              		.syntax unified
 468              		.code	16
 469              		.thumb_func
 470              		.fpu softvfp
 472              	delay_1mikro:
 473              	.LFB12:
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #ifdef SIMULATOR
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #define DELAY_COUNT	1000
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #else
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #define DELAY_COUNT	1000000
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** #endif
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** static int systick_flag;
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** static int delay_count;
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void delay_1mikro(){
 474              		.loc 1 83 0
 475              		.cfi_startproc
 476              		@ args = 0, pretend = 0, frame = 0
 477              		@ frame_needed = 1, uses_anonymous_args = 0
 478 0106 80B5     		push	{r7, lr}
 479              		.cfi_def_cfa_offset 8
 480              		.cfi_offset 7, -8
 481              		.cfi_offset 14, -4
 482 0108 00AF     		add	r7, sp, #0
 483              		.cfi_def_cfa_register 7
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	systick_flag = 0;
 484              		.loc 1 84 0
 485 010a 094B     		ldr	r3, .L21
 486 010c 0022     		movs	r2, #0
 487 010e 1A60     		str	r2, [r3]
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	STK_CTRL = 0;
 488              		.loc 1 86 0
 489 0110 084B     		ldr	r3, .L21+4
 490 0112 0022     		movs	r2, #0
 491 0114 1A60     		str	r2, [r3]
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	STK_LOAD = ((168) - 1);
 492              		.loc 1 87 0
 493 0116 084B     		ldr	r3, .L21+8
 494 0118 A722     		movs	r2, #167
 495 011a 1A60     		str	r2, [r3]
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	STK_VAL = 0;
 496              		.loc 1 88 0
 497 011c 074B     		ldr	r3, .L21+12
 498 011e 0022     		movs	r2, #0
 499 0120 1A60     		str	r2, [r3]
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	STK_CTRL = 7;
 500              		.loc 1 89 0
 501 0122 044B     		ldr	r3, .L21+4
 502 0124 0722     		movs	r2, #7
 503 0126 1A60     		str	r2, [r3]
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 504              		.loc 1 90 0
 505 0128 C046     		nop
 506 012a BD46     		mov	sp, r7
 507              		@ sp needed
 508 012c 80BD     		pop	{r7, pc}
 509              	.L22:
 510 012e C046     		.align	2
 511              	.L21:
 512 0130 00000000 		.word	systick_flag
 513 0134 10E000E0 		.word	-536813552
 514 0138 14E000E0 		.word	-536813548
 515 013c 18E000E0 		.word	-536813544
 516              		.cfi_endproc
 517              	.LFE12:
 519              		.align	1
 520              		.global	systick_irq_handler
 521              		.syntax unified
 522              		.code	16
 523              		.thumb_func
 524              		.fpu softvfp
 526              	systick_irq_handler:
 527              	.LFB13:
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void systick_irq_handler(){
 528              		.loc 1 92 0
 529              		.cfi_startproc
 530              		@ args = 0, pretend = 0, frame = 0
 531              		@ frame_needed = 1, uses_anonymous_args = 0
 532 0140 80B5     		push	{r7, lr}
 533              		.cfi_def_cfa_offset 8
 534              		.cfi_offset 7, -8
 535              		.cfi_offset 14, -4
 536 0142 00AF     		add	r7, sp, #0
 537              		.cfi_def_cfa_register 7
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	STK_CTRL = 0;
 538              		.loc 1 93 0
 539 0144 0A4B     		ldr	r3, .L27
 540 0146 0022     		movs	r2, #0
 541 0148 1A60     		str	r2, [r3]
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	delay_count--;
 542              		.loc 1 94 0
 543 014a 0A4B     		ldr	r3, .L27+4
 544 014c 1B68     		ldr	r3, [r3]
 545 014e 5A1E     		subs	r2, r3, #1
 546 0150 084B     		ldr	r3, .L27+4
 547 0152 1A60     		str	r2, [r3]
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	if (delay_count > 0){
 548              		.loc 1 95 0
 549 0154 074B     		ldr	r3, .L27+4
 550 0156 1B68     		ldr	r3, [r3]
 551 0158 002B     		cmp	r3, #0
 552 015a 02DD     		ble	.L24
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		delay_1mikro();
 553              		.loc 1 96 0
 554 015c FFF7FEFF 		bl	delay_1mikro
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	}
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	else
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		systick_flag = 1;
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 555              		.loc 1 100 0
 556 0160 02E0     		b	.L26
 557              	.L24:
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 558              		.loc 1 99 0
 559 0162 054B     		ldr	r3, .L27+8
 560 0164 0122     		movs	r2, #1
 561 0166 1A60     		str	r2, [r3]
 562              	.L26:
 563              		.loc 1 100 0
 564 0168 C046     		nop
 565 016a BD46     		mov	sp, r7
 566              		@ sp needed
 567 016c 80BD     		pop	{r7, pc}
 568              	.L28:
 569 016e C046     		.align	2
 570              	.L27:
 571 0170 10E000E0 		.word	-536813552
 572 0174 04000000 		.word	delay_count
 573 0178 00000000 		.word	systick_flag
 574              		.cfi_endproc
 575              	.LFE13:
 577              		.align	1
 578              		.global	delay
 579              		.syntax unified
 580              		.code	16
 581              		.thumb_func
 582              		.fpu softvfp
 584              	delay:
 585              	.LFB14:
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void delay(unsigned int count){
 586              		.loc 1 102 0
 587              		.cfi_startproc
 588              		@ args = 0, pretend = 0, frame = 8
 589              		@ frame_needed = 1, uses_anonymous_args = 0
 590 017c 80B5     		push	{r7, lr}
 591              		.cfi_def_cfa_offset 8
 592              		.cfi_offset 7, -8
 593              		.cfi_offset 14, -4
 594 017e 82B0     		sub	sp, sp, #8
 595              		.cfi_def_cfa_offset 16
 596 0180 00AF     		add	r7, sp, #0
 597              		.cfi_def_cfa_register 7
 598 0182 7860     		str	r0, [r7, #4]
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	delay_count = count;
 599              		.loc 1 103 0
 600 0184 7A68     		ldr	r2, [r7, #4]
 601 0186 064B     		ldr	r3, .L33
 602 0188 1A60     		str	r2, [r3]
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	if(delay_count == 0)
 603              		.loc 1 104 0
 604 018a 054B     		ldr	r3, .L33
 605 018c 1B68     		ldr	r3, [r3]
 606 018e 002B     		cmp	r3, #0
 607 0190 02D0     		beq	.L32
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		return;
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	delay_1mikro();
 608              		.loc 1 106 0
 609 0192 FFF7FEFF 		bl	delay_1mikro
 610 0196 00E0     		b	.L29
 611              	.L32:
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		return;
 612              		.loc 1 105 0
 613 0198 C046     		nop
 614              	.L29:
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 615              		.loc 1 107 0
 616 019a BD46     		mov	sp, r7
 617 019c 02B0     		add	sp, sp, #8
 618              		@ sp needed
 619 019e 80BD     		pop	{r7, pc}
 620              	.L34:
 621              		.align	2
 622              	.L33:
 623 01a0 04000000 		.word	delay_count
 624              		.cfi_endproc
 625              	.LFE14:
 627              		.align	1
 628              		.global	init_handler
 629              		.syntax unified
 630              		.code	16
 631              		.thumb_func
 632              		.fpu softvfp
 634              	init_handler:
 635              	.LFB15:
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void init_handler(){
 636              		.loc 1 109 0
 637              		.cfi_startproc
 638              		@ args = 0, pretend = 0, frame = 0
 639              		@ frame_needed = 1, uses_anonymous_args = 0
 640 01a4 80B5     		push	{r7, lr}
 641              		.cfi_def_cfa_offset 8
 642              		.cfi_offset 7, -8
 643              		.cfi_offset 14, -4
 644 01a6 00AF     		add	r7, sp, #0
 645              		.cfi_def_cfa_register 7
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	GPIO_MODER_D = 0x55555555; /* initiera port D och undantagsvektor*/
 646              		.loc 1 110 0
 647 01a8 074B     		ldr	r3, .L36
 648 01aa 084A     		ldr	r2, .L36+4
 649 01ac 1A60     		str	r2, [r3]
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	#define SCB_VTOR ((volatile unsigned int *) 0xE000ED08) //måste finnas in i en funktion?
 113:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		*SCB_VTOR = 0x2001C000;
 650              		.loc 1 113 0
 651 01ae 084B     		ldr	r3, .L36+8
 652 01b0 084A     		ldr	r2, .L36+12
 653 01b2 1A60     		str	r2, [r3]
 114:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	
 115:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	*((void (**) (void)) 0x2001C03C) = systick_irq_handler;
 654              		.loc 1 115 0
 655 01b4 084B     		ldr	r3, .L36+16
 656 01b6 094A     		ldr	r2, .L36+20
 657 01b8 1A60     		str	r2, [r3]
 116:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	systick_flag = 0;
 658              		.loc 1 116 0
 659 01ba 094B     		ldr	r3, .L36+24
 660 01bc 0022     		movs	r2, #0
 661 01be 1A60     		str	r2, [r3]
 117:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 662              		.loc 1 117 0
 663 01c0 C046     		nop
 664 01c2 BD46     		mov	sp, r7
 665              		@ sp needed
 666 01c4 80BD     		pop	{r7, pc}
 667              	.L37:
 668 01c6 C046     		.align	2
 669              	.L36:
 670 01c8 000C0240 		.word	1073875968
 671 01cc 55555555 		.word	1431655765
 672 01d0 08ED00E0 		.word	-536810232
 673 01d4 00C00120 		.word	536985600
 674 01d8 3CC00120 		.word	536985660
 675 01dc 00000000 		.word	systick_irq_handler
 676 01e0 00000000 		.word	systick_flag
 677              		.cfi_endproc
 678              	.LFE15:
 680              		.align	1
 681              		.global	main
 682              		.syntax unified
 683              		.code	16
 684              		.thumb_func
 685              		.fpu softvfp
 687              	main:
 688              	.LFB16:
 118:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 
 120:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** void main(void)
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** {
 689              		.loc 1 121 0
 690              		.cfi_startproc
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 1, uses_anonymous_args = 0
 693 01e4 80B5     		push	{r7, lr}
 694              		.cfi_def_cfa_offset 8
 695              		.cfi_offset 7, -8
 696              		.cfi_offset 14, -4
 697 01e6 00AF     		add	r7, sp, #0
 698              		.cfi_def_cfa_register 7
 122:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	init_handler();
 699              		.loc 1 122 0
 700 01e8 FFF7FEFF 		bl	init_handler
 123:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	GPIO_ODR_D_LOW = 0;
 701              		.loc 1 123 0
 702 01ec 0E4B     		ldr	r3, .L44
 703 01ee 0022     		movs	r2, #0
 704 01f0 1A70     		strb	r2, [r3]
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	delay(DELAY_COUNT);
 705              		.loc 1 124 0
 706 01f2 FA23     		movs	r3, #250
 707 01f4 9B00     		lsls	r3, r3, #2
 708 01f6 1800     		movs	r0, r3
 709 01f8 FFF7FEFF 		bl	delay
 125:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	GPIO_ODR_D_LOW = 0xFF;
 710              		.loc 1 125 0
 711 01fc 0A4B     		ldr	r3, .L44
 712 01fe FF22     		movs	r2, #255
 713 0200 1A70     		strb	r2, [r3]
 714              	.L41:
 126:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	while(1){
 127:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		if (systick_flag)
 715              		.loc 1 127 0
 716 0202 0A4B     		ldr	r3, .L44+4
 717 0204 1B68     		ldr	r3, [r3]
 718 0206 002B     		cmp	r3, #0
 719 0208 07D1     		bne	.L43
 128:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 			break;
 129:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		/* Här placeras kod som kan utföras så länge */
 130:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		//for (int i =0; i < 1000; i++){};
 131:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		GPIO_ODR_D_HIGH ^= 0xFF;
 720              		.loc 1 131 0
 721 020a 094B     		ldr	r3, .L44+8
 722 020c 1B78     		ldrb	r3, [r3]
 723 020e DBB2     		uxtb	r3, r3
 724 0210 074A     		ldr	r2, .L44+8
 725 0212 DB43     		mvns	r3, r3
 726 0214 DBB2     		uxtb	r3, r3
 727 0216 1370     		strb	r3, [r2]
 127:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 			break;
 728              		.loc 1 127 0
 729 0218 F3E7     		b	.L41
 730              	.L43:
 128:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 			break;
 731              		.loc 1 128 0
 732 021a C046     		nop
 132:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 		
 133:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	}
 134:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	
 135:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	/* Här finns koden som väntar på time-out */
 136:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	
 137:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** 	GPIO_ODR_D_LOW = 0;
 733              		.loc 1 137 0
 734 021c 024B     		ldr	r3, .L44
 735 021e 0022     		movs	r2, #0
 736 0220 1A70     		strb	r2, [r3]
 138:C:/Users/Andre/Desktop/DAT390_labb_v4/sys_tick\startup.c **** }
 737              		.loc 1 138 0
 738 0222 C046     		nop
 739 0224 BD46     		mov	sp, r7
 740              		@ sp needed
 741 0226 80BD     		pop	{r7, pc}
 742              	.L45:
 743              		.align	2
 744              	.L44:
 745 0228 140C0240 		.word	1073875988
 746 022c 00000000 		.word	systick_flag
 747 0230 150C0240 		.word	1073875989
 748              		.cfi_endproc
 749              	.LFE16:
 751              	.Letext0:
