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
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay/main.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** #include "startup.h"
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** void startup ( void )
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** {
  26              		.loc 1 5 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** __asm volatile(
  31              		.loc 1 6 0
  32              		.syntax divided
  33              	@ 6 "C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay/main.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	" MOV SP,R0\n"
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	" BL main\n"				/* call main */
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	"_exit: B .\n"				/* never return */
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	) ;
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** }
  40              		.loc 1 12 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	main
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	main:
  56              	.LFB1:
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** void main (void){
  57              		.loc 1 15 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 8
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 82B0     		sub	sp, sp, #8
  66              		.cfi_def_cfa_offset 16
  67 0004 00AF     		add	r7, sp, #0
  68              		.cfi_def_cfa_register 7
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	/*
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	keyb_init();
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	while(1)
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	{
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		char c = keyb();
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		out7seg (c);
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	}
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	ascii_init();
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	char *s;
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	char test1[] = "Alfanumerisk ";
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	char test2[] = " Display - test ";
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	ascii_init();
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	ascii_gotoxy(1,1);
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	s = test1;
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	while(*s)
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		ascii_write_char(*s++);
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	ascii_gotoxy(1,2);
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	s =  test2;
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	while(*s)
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		ascii_write_char(*s++);
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	*/
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	graphic_init();
  69              		.loc 1 43 0
  70 0006 FFF7FEFF 		bl	graphic_init
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	unsigned int i;
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	#ifndef SIMULATOR
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		graphic_clear_screen();
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	#endif
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	for(i = 1; i < 128; i++){
  71              		.loc 1 51 0
  72 000a 0123     		movs	r3, #1
  73 000c 7B60     		str	r3, [r7, #4]
  74 000e 08E0     		b	.L3
  75              	.L4:
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		pixel(i, 10, 1);
  76              		.loc 1 52 0 discriminator 3
  77 0010 7B68     		ldr	r3, [r7, #4]
  78 0012 0122     		movs	r2, #1
  79 0014 0A21     		movs	r1, #10
  80 0016 1800     		movs	r0, r3
  81 0018 FFF7FEFF 		bl	pixel
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		pixel(i, 10, 1);
  82              		.loc 1 51 0 discriminator 3
  83 001c 7B68     		ldr	r3, [r7, #4]
  84 001e 0133     		adds	r3, r3, #1
  85 0020 7B60     		str	r3, [r7, #4]
  86              	.L3:
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		pixel(i, 10, 1);
  87              		.loc 1 51 0 is_stmt 0 discriminator 1
  88 0022 7B68     		ldr	r3, [r7, #4]
  89 0024 7F2B     		cmp	r3, #127
  90 0026 F3D9     		bls	.L4
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	}
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	for(i = 1; i < 64; i++){
  91              		.loc 1 54 0 is_stmt 1
  92 0028 0123     		movs	r3, #1
  93 002a 7B60     		str	r3, [r7, #4]
  94 002c 08E0     		b	.L5
  95              	.L6:
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 			pixel(10, i, 1);
  96              		.loc 1 55 0 discriminator 3
  97 002e 7B68     		ldr	r3, [r7, #4]
  98 0030 0122     		movs	r2, #1
  99 0032 1900     		movs	r1, r3
 100 0034 0A20     		movs	r0, #10
 101 0036 FFF7FEFF 		bl	pixel
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 			pixel(10, i, 1);
 102              		.loc 1 54 0 discriminator 3
 103 003a 7B68     		ldr	r3, [r7, #4]
 104 003c 0133     		adds	r3, r3, #1
 105 003e 7B60     		str	r3, [r7, #4]
 106              	.L5:
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 			pixel(10, i, 1);
 107              		.loc 1 54 0 is_stmt 0 discriminator 1
 108 0040 7B68     		ldr	r3, [r7, #4]
 109 0042 3F2B     		cmp	r3, #63
 110 0044 F3D9     		bls	.L6
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	}
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	delay_milli(5);
 111              		.loc 1 57 0 is_stmt 1
 112 0046 0520     		movs	r0, #5
 113 0048 FFF7FEFF 		bl	delay_milli
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	for(i = 1; i < 128; i++){
 114              		.loc 1 58 0
 115 004c 0123     		movs	r3, #1
 116 004e 7B60     		str	r3, [r7, #4]
 117 0050 08E0     		b	.L7
 118              	.L8:
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		pixel(i, 10, 0);
 119              		.loc 1 59 0 discriminator 3
 120 0052 7B68     		ldr	r3, [r7, #4]
 121 0054 0022     		movs	r2, #0
 122 0056 0A21     		movs	r1, #10
 123 0058 1800     		movs	r0, r3
 124 005a FFF7FEFF 		bl	pixel
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	for(i = 1; i < 128; i++){
 125              		.loc 1 58 0 discriminator 3
 126 005e 7B68     		ldr	r3, [r7, #4]
 127 0060 0133     		adds	r3, r3, #1
 128 0062 7B60     		str	r3, [r7, #4]
 129              	.L7:
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	for(i = 1; i < 128; i++){
 130              		.loc 1 58 0 is_stmt 0 discriminator 1
 131 0064 7B68     		ldr	r3, [r7, #4]
 132 0066 7F2B     		cmp	r3, #127
 133 0068 F3D9     		bls	.L8
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	}
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 		for(i = 1; i < 64; i++){
 134              		.loc 1 61 0 is_stmt 1
 135 006a 0123     		movs	r3, #1
 136 006c 7B60     		str	r3, [r7, #4]
 137 006e 08E0     		b	.L9
 138              	.L10:
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 			pixel(10, i, 0);
 139              		.loc 1 62 0 discriminator 3
 140 0070 7B68     		ldr	r3, [r7, #4]
 141 0072 0022     		movs	r2, #0
 142 0074 1900     		movs	r1, r3
 143 0076 0A20     		movs	r0, #10
 144 0078 FFF7FEFF 		bl	pixel
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 			pixel(10, i, 0);
 145              		.loc 1 61 0 discriminator 3
 146 007c 7B68     		ldr	r3, [r7, #4]
 147 007e 0133     		adds	r3, r3, #1
 148 0080 7B60     		str	r3, [r7, #4]
 149              	.L9:
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 			pixel(10, i, 0);
 150              		.loc 1 61 0 is_stmt 0 discriminator 1
 151 0082 7B68     		ldr	r3, [r7, #4]
 152 0084 3F2B     		cmp	r3, #63
 153 0086 F3D9     		bls	.L10
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	}
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** 	
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c ****  	return 0;
 154              		.loc 1 65 0 is_stmt 1
 155 0088 C046     		nop
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/graphicdisplay\main.c **** }...
 156              		.loc 1 66 0
 157 008a BD46     		mov	sp, r7
 158 008c 02B0     		add	sp, sp, #8
 159              		@ sp needed
 160 008e 80BD     		pop	{r7, pc}
 161              		.cfi_endproc
 162              	.LFE1:
 164              	.Letext0:
