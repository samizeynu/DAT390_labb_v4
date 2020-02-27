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
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/autopong/main.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  * 	main.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** void startup ( void )
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** {
  26              		.loc 1 10 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** __asm volatile(
  31              		.loc 1 11 0
  32              		.syntax divided
  33              	@ 11 "C:/Users/Andre/Desktop/DAT390_labb_v4/autopong/main.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	" MOV SP,R0\n"
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	" BL main\n"				/* call main */
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	"_exit: B .\n"				/* never return */
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	) ;
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** }
  40              		.loc 1 17 0
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
  81              		.align	2
  84              	ball:
  85 0034 00000000 		.word	ball_geometry
  86 0038 00000000 		.word	0
  87 003c 00000000 		.word	0
  88 0040 01000000 		.word	1
  89 0044 01000000 		.word	1
  90 0048 00000000 		.word	draw_object
  91 004c 00000000 		.word	clear_object
  92 0050 00000000 		.word	move_object
  93 0054 00000000 		.word	set_object_speed
  94              		.text
  95              		.align	1
  96              		.global	main
  97              		.syntax unified
  98              		.code	16
  99              		.thumb_func
 100              		.fpu softvfp
 102              	main:
 103              	.LFB1:
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** GEOMETRY ball_geometry = {12,
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  4, 4, 
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  { {0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} } };
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c ****  static OBJECT ball =
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** {
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	&ball_geometry,
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	0,0,
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	1,1,
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	draw_object,
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	clear_object,
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	move_object,
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	set_object_speed
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** };
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** int main(int argc, char **argv)
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** {
 104              		.loc 1 35 0
 105              		.cfi_startproc
 106              		@ args = 0, pretend = 0, frame = 16
 107              		@ frame_needed = 1, uses_anonymous_args = 0
 108 0000 80B5     		push	{r7, lr}
 109              		.cfi_def_cfa_offset 8
 110              		.cfi_offset 7, -8
 111              		.cfi_offset 14, -4
 112 0002 84B0     		sub	sp, sp, #16
 113              		.cfi_def_cfa_offset 24
 114 0004 00AF     		add	r7, sp, #0
 115              		.cfi_def_cfa_register 7
 116 0006 7860     		str	r0, [r7, #4]
 117 0008 3960     		str	r1, [r7]
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	POBJECT p = &ball;
 118              		.loc 1 36 0
 119 000a 084B     		ldr	r3, .L4
 120 000c FB60     		str	r3, [r7, #12]
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	graphic_init();
 121              		.loc 1 37 0
 122 000e FFF7FEFF 		bl	graphic_init
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	#ifndef SIMULATOR
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 		graphic_clear_screen();
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	#endif
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	p->set_speed(p, 4, 1);
 123              		.loc 1 43 0
 124 0012 FB68     		ldr	r3, [r7, #12]
 125 0014 1B6A     		ldr	r3, [r3, #32]
 126 0016 F868     		ldr	r0, [r7, #12]
 127 0018 0122     		movs	r2, #1
 128 001a 0421     		movs	r1, #4
 129 001c 9847     		blx	r3
 130              	.LVL0:
 131              	.L3:
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 	while(1){
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/autopong\main.c **** 		p->move(p);
 132              		.loc 1 45 0 discriminator 1
 133 001e FB68     		ldr	r3, [r7, #12]
 134 0020 DB69     		ldr	r3, [r3, #28]
 135 0022 FA68     		ldr	r2, [r7, #12]
 136 0024 1000     		movs	r0, r2
 137 0026 9847     		blx	r3
 138              	.LVL1:
 139 0028 F9E7     		b	.L3
 140              	.L5:
 141 002a C046     		.align	2
 142              	.L4:
 143 002c 34000000 		.word	ball
 144              		.cfi_endproc
 145              	.LFE1:
 147              	.Letext0:
 148              		.file 2 "C:/Users/Andre/Desktop/DAT390_labb_v4/autopong/startup.h"
