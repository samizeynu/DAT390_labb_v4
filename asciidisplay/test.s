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
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay/startup.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c ****  * 	startup.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define SIMULATOR
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_BASE_D 0x40020C00
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_MODER_D (*((volatile unsigned int*)(GPIO_BASE_D)))
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_MODER_LOW_D (*((volatile unsigned short*)(GPIO_BASE_D)))
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_MODER_HIGH_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x02)))
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_OTYPER_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x04)))
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_PUPDR_D (*((volatile unsigned int*)(GPIO_BASE_D + 0x0C)))
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_IDR_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x10)))
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_IDR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x10)))
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_IDR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x11)))
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_ODR_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x14)))
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_ODR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x14)))
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_ODR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x15)))
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c ****  
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_BASE_E 0x40021000
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_MODER_E (*((volatile unsigned int*)(GPIO_BASE_E)))
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_MODER_LOW_E (*((volatile unsigned short*)(GPIO_BASE_E)))
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_MODER_HIGH_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x02)))
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_OTYPER_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x04)))
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_PUPDR_E (*((volatile unsigned int*)(GPIO_BASE_E + 0x0C)))
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_IDR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x10)))
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_IDR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x10)))
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_IDR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x11)))
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_ODR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x14)))
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_ODR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x14)))
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define GPIO_ODR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x15)))
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define B_E			0x40
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define B_SELECT 	4
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define B_RW 		2
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define B_RS 		1
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define STK_BASE 0xE000E010
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define STK_CTRL (*((volatile unsigned int*)(STK_BASE)))
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define STK_LOAD (*((volatile unsigned int*)(STK_BASE + 0x04)))
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #define STK_VAL (*((volatile unsigned int*)(STK_BASE + 0x08)))
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char);
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void startup ( void )
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** {
  26              		.loc 1 53 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** __asm volatile(
  31              		.loc 1 54 0
  32              		.syntax divided
  33              	@ 54 "C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	" MOV SP,R0\n"
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	" BL main\n"				/* call main */
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	) ;
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
  40              		.loc 1 60 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	delay_250ns
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	delay_250ns:
  56              	.LFB1:
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void delay_250ns(void){
  57              		.loc 1 62 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	STK_CTRL = 0;
  67              		.loc 1 63 0
  68 0004 0C4B     		ldr	r3, .L4
  69 0006 0022     		movs	r2, #0
  70 0008 1A60     		str	r2, [r3]
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	STK_LOAD = ((168/4) - 1);
  71              		.loc 1 64 0
  72 000a 0C4B     		ldr	r3, .L4+4
  73 000c 2922     		movs	r2, #41
  74 000e 1A60     		str	r2, [r3]
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	STK_VAL = 0;
  75              		.loc 1 65 0
  76 0010 0B4B     		ldr	r3, .L4+8
  77 0012 0022     		movs	r2, #0
  78 0014 1A60     		str	r2, [r3]
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	STK_CTRL = 5;
  79              		.loc 1 66 0
  80 0016 084B     		ldr	r3, .L4
  81 0018 0522     		movs	r2, #5
  82 001a 1A60     		str	r2, [r3]
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	while((STK_CTRL & 0x10000) == 0){};
  83              		.loc 1 68 0
  84 001c C046     		nop
  85              	.L3:
  86              		.loc 1 68 0 is_stmt 0 discriminator 1
  87 001e 064B     		ldr	r3, .L4
  88 0020 1A68     		ldr	r2, [r3]
  89 0022 8023     		movs	r3, #128
  90 0024 5B02     		lsls	r3, r3, #9
  91 0026 1340     		ands	r3, r2
  92 0028 F9D0     		beq	.L3
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	STK_CTRL = 0;
  93              		.loc 1 69 0 is_stmt 1
  94 002a 034B     		ldr	r3, .L4
  95 002c 0022     		movs	r2, #0
  96 002e 1A60     		str	r2, [r3]
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
  97              		.loc 1 70 0
  98 0030 C046     		nop
  99 0032 BD46     		mov	sp, r7
 100              		@ sp needed
 101 0034 80BD     		pop	{r7, pc}
 102              	.L5:
 103 0036 C046     		.align	2
 104              	.L4:
 105 0038 10E000E0 		.word	-536813552
 106 003c 14E000E0 		.word	-536813548
 107 0040 18E000E0 		.word	-536813544
 108              		.cfi_endproc
 109              	.LFE1:
 111              		.align	1
 112              		.global	delay_micro
 113              		.syntax unified
 114              		.code	16
 115              		.thumb_func
 116              		.fpu softvfp
 118              	delay_micro:
 119              	.LFB2:
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void delay_micro(unsigned int us){
 120              		.loc 1 72 0
 121              		.cfi_startproc
 122              		@ args = 0, pretend = 0, frame = 8
 123              		@ frame_needed = 1, uses_anonymous_args = 0
 124 0044 80B5     		push	{r7, lr}
 125              		.cfi_def_cfa_offset 8
 126              		.cfi_offset 7, -8
 127              		.cfi_offset 14, -4
 128 0046 82B0     		sub	sp, sp, #8
 129              		.cfi_def_cfa_offset 16
 130 0048 00AF     		add	r7, sp, #0
 131              		.cfi_def_cfa_register 7
 132 004a 7860     		str	r0, [r7, #4]
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	while(us--){
 133              		.loc 1 73 0
 134 004c 07E0     		b	.L7
 135              	.L8:
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_250ns();
 136              		.loc 1 74 0
 137 004e FFF7FEFF 		bl	delay_250ns
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_250ns();
 138              		.loc 1 75 0
 139 0052 FFF7FEFF 		bl	delay_250ns
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_250ns(); 
 140              		.loc 1 76 0
 141 0056 FFF7FEFF 		bl	delay_250ns
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_250ns();
 142              		.loc 1 77 0
 143 005a FFF7FEFF 		bl	delay_250ns
 144              	.L7:
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_250ns();
 145              		.loc 1 73 0
 146 005e 7B68     		ldr	r3, [r7, #4]
 147 0060 5A1E     		subs	r2, r3, #1
 148 0062 7A60     		str	r2, [r7, #4]
 149 0064 002B     		cmp	r3, #0
 150 0066 F2D1     		bne	.L8
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	}
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 151              		.loc 1 79 0
 152 0068 C046     		nop
 153 006a BD46     		mov	sp, r7
 154 006c 02B0     		add	sp, sp, #8
 155              		@ sp needed
 156 006e 80BD     		pop	{r7, pc}
 157              		.cfi_endproc
 158              	.LFE2:
 160              		.align	1
 161              		.global	ascii_write_controller
 162              		.syntax unified
 163              		.code	16
 164              		.thumb_func
 165              		.fpu softvfp
 167              	ascii_write_controller:
 168              	.LFB3:
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  81:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_write_controller (unsigned char byte){                   //#define B_E		0x40
 169              		.loc 1 81 0
 170              		.cfi_startproc
 171              		@ args = 0, pretend = 0, frame = 8
 172              		@ frame_needed = 1, uses_anonymous_args = 0
 173 0070 80B5     		push	{r7, lr}
 174              		.cfi_def_cfa_offset 8
 175              		.cfi_offset 7, -8
 176              		.cfi_offset 14, -4
 177 0072 82B0     		sub	sp, sp, #8
 178              		.cfi_def_cfa_offset 16
 179 0074 00AF     		add	r7, sp, #0
 180              		.cfi_def_cfa_register 7
 181 0076 0200     		movs	r2, r0
 182 0078 FB1D     		adds	r3, r7, #7
 183 007a 1A70     		strb	r2, [r3]
  82:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_set(B_E);
 184              		.loc 1 82 0
 185 007c 4020     		movs	r0, #64
 186 007e FFF7FEFF 		bl	ascii_ctrl_bit_set
  83:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_ODR_E_HIGH = byte;															//#define B_SELECT 	4
 187              		.loc 1 83 0
 188 0082 064A     		ldr	r2, .L10
 189 0084 FB1D     		adds	r3, r7, #7
 190 0086 1B78     		ldrb	r3, [r3]
 191 0088 1370     		strb	r3, [r2]
  84:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_250ns();															//#define B_RW 		2
 192              		.loc 1 84 0
 193 008a FFF7FEFF 		bl	delay_250ns
  85:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_clear(B_E);																//#define B_RS 		1
 194              		.loc 1 85 0
 195 008e 4020     		movs	r0, #64
 196 0090 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  86:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 197              		.loc 1 86 0
 198 0094 C046     		nop
 199 0096 BD46     		mov	sp, r7
 200 0098 02B0     		add	sp, sp, #8
 201              		@ sp needed
 202 009a 80BD     		pop	{r7, pc}
 203              	.L11:
 204              		.align	2
 205              	.L10:
 206 009c 15100240 		.word	1073877013
 207              		.cfi_endproc
 208              	.LFE3:
 210              		.align	1
 211              		.global	ascii_read_controller
 212              		.syntax unified
 213              		.code	16
 214              		.thumb_func
 215              		.fpu softvfp
 217              	ascii_read_controller:
 218              	.LFB4:
  87:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  88:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** unsigned char ascii_read_controller (void){
 219              		.loc 1 88 0
 220              		.cfi_startproc
 221              		@ args = 0, pretend = 0, frame = 8
 222              		@ frame_needed = 1, uses_anonymous_args = 0
 223 00a0 80B5     		push	{r7, lr}
 224              		.cfi_def_cfa_offset 8
 225              		.cfi_offset 7, -8
 226              		.cfi_offset 14, -4
 227 00a2 82B0     		sub	sp, sp, #8
 228              		.cfi_def_cfa_offset 16
 229 00a4 00AF     		add	r7, sp, #0
 230              		.cfi_def_cfa_register 7
  89:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_set(B_E);															//#define B_SELECT 	4
 231              		.loc 1 89 0
 232 00a6 4020     		movs	r0, #64
 233 00a8 FFF7FEFF 		bl	ascii_ctrl_bit_set
  90:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_250ns();
 234              		.loc 1 90 0
 235 00ac FFF7FEFF 		bl	delay_250ns
  91:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_250ns();
 236              		.loc 1 91 0
 237 00b0 FFF7FEFF 		bl	delay_250ns
  92:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	unsigned char byte = GPIO_IDR_E_HIGH;													//#define B_RW 		2
 238              		.loc 1 92 0
 239 00b4 064A     		ldr	r2, .L14
 240 00b6 FB1D     		adds	r3, r7, #7
 241 00b8 1278     		ldrb	r2, [r2]
 242 00ba 1A70     		strb	r2, [r3]
  93:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_clear(B_E);
 243              		.loc 1 93 0
 244 00bc 4020     		movs	r0, #64
 245 00be FFF7FEFF 		bl	ascii_ctrl_bit_clear
  94:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	return byte;
 246              		.loc 1 94 0
 247 00c2 FB1D     		adds	r3, r7, #7
 248 00c4 1B78     		ldrb	r3, [r3]
  95:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 249              		.loc 1 95 0
 250 00c6 1800     		movs	r0, r3
 251 00c8 BD46     		mov	sp, r7
 252 00ca 02B0     		add	sp, sp, #8
 253              		@ sp needed
 254 00cc 80BD     		pop	{r7, pc}
 255              	.L15:
 256 00ce C046     		.align	2
 257              	.L14:
 258 00d0 11100240 		.word	1073877009
 259              		.cfi_endproc
 260              	.LFE4:
 262              		.align	1
 263              		.global	ascii_ctrl_bit_set
 264              		.syntax unified
 265              		.code	16
 266              		.thumb_func
 267              		.fpu softvfp
 269              	ascii_ctrl_bit_set:
 270              	.LFB5:
  96:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
  97:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** //Adresserar displayen och ettställer de bitar som är 1 i x
  98:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_ctrl_bit_set(unsigned char x){
 271              		.loc 1 98 0
 272              		.cfi_startproc
 273              		@ args = 0, pretend = 0, frame = 8
 274              		@ frame_needed = 1, uses_anonymous_args = 0
 275 00d4 80B5     		push	{r7, lr}
 276              		.cfi_def_cfa_offset 8
 277              		.cfi_offset 7, -8
 278              		.cfi_offset 14, -4
 279 00d6 82B0     		sub	sp, sp, #8
 280              		.cfi_def_cfa_offset 16
 281 00d8 00AF     		add	r7, sp, #0
 282              		.cfi_def_cfa_register 7
 283 00da 0200     		movs	r2, r0
 284 00dc FB1D     		adds	r3, r7, #7
 285 00de 1A70     		strb	r2, [r3]
  99:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_ODR_E_LOW |= (B_SELECT | x);
 286              		.loc 1 99 0
 287 00e0 074B     		ldr	r3, .L17
 288 00e2 1B78     		ldrb	r3, [r3]
 289 00e4 DAB2     		uxtb	r2, r3
 290 00e6 FB1D     		adds	r3, r7, #7
 291 00e8 1B78     		ldrb	r3, [r3]
 292 00ea 1343     		orrs	r3, r2
 293 00ec DBB2     		uxtb	r3, r3
 294 00ee 044A     		ldr	r2, .L17
 295 00f0 0421     		movs	r1, #4
 296 00f2 0B43     		orrs	r3, r1
 297 00f4 DBB2     		uxtb	r3, r3
 298 00f6 1370     		strb	r3, [r2]
 100:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 299              		.loc 1 100 0
 300 00f8 C046     		nop
 301 00fa BD46     		mov	sp, r7
 302 00fc 02B0     		add	sp, sp, #8
 303              		@ sp needed
 304 00fe 80BD     		pop	{r7, pc}
 305              	.L18:
 306              		.align	2
 307              	.L17:
 308 0100 14100240 		.word	1073877012
 309              		.cfi_endproc
 310              	.LFE5:
 312              		.align	1
 313              		.global	ascii_ctrl_bit_clear
 314              		.syntax unified
 315              		.code	16
 316              		.thumb_func
 317              		.fpu softvfp
 319              	ascii_ctrl_bit_clear:
 320              	.LFB6:
 101:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 102:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** //Adresserar displayen och nollställer de bitar som är 1 i x
 103:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_ctrl_bit_clear(unsigned char x){
 321              		.loc 1 103 0
 322              		.cfi_startproc
 323              		@ args = 0, pretend = 0, frame = 8
 324              		@ frame_needed = 1, uses_anonymous_args = 0
 325 0104 80B5     		push	{r7, lr}
 326              		.cfi_def_cfa_offset 8
 327              		.cfi_offset 7, -8
 328              		.cfi_offset 14, -4
 329 0106 82B0     		sub	sp, sp, #8
 330              		.cfi_def_cfa_offset 16
 331 0108 00AF     		add	r7, sp, #0
 332              		.cfi_def_cfa_register 7
 333 010a 0200     		movs	r2, r0
 334 010c FB1D     		adds	r3, r7, #7
 335 010e 1A70     		strb	r2, [r3]
 104:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_ODR_E_LOW &= (B_SELECT | ~x);
 336              		.loc 1 104 0
 337 0110 0A4B     		ldr	r3, .L20
 338 0112 1B78     		ldrb	r3, [r3]
 339 0114 DBB2     		uxtb	r3, r3
 340 0116 5BB2     		sxtb	r3, r3
 341 0118 FA1D     		adds	r2, r7, #7
 342 011a 1278     		ldrb	r2, [r2]
 343 011c 52B2     		sxtb	r2, r2
 344 011e D243     		mvns	r2, r2
 345 0120 52B2     		sxtb	r2, r2
 346 0122 0421     		movs	r1, #4
 347 0124 0A43     		orrs	r2, r1
 348 0126 52B2     		sxtb	r2, r2
 349 0128 1340     		ands	r3, r2
 350 012a 5AB2     		sxtb	r2, r3
 351 012c 034B     		ldr	r3, .L20
 352 012e D2B2     		uxtb	r2, r2
 353 0130 1A70     		strb	r2, [r3]
 105:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 354              		.loc 1 105 0
 355 0132 C046     		nop
 356 0134 BD46     		mov	sp, r7
 357 0136 02B0     		add	sp, sp, #8
 358              		@ sp needed
 359 0138 80BD     		pop	{r7, pc}
 360              	.L21:
 361 013a C046     		.align	2
 362              	.L20:
 363 013c 14100240 		.word	1073877012
 364              		.cfi_endproc
 365              	.LFE6:
 367              		.align	1
 368              		.global	ascii_write_command
 369              		.syntax unified
 370              		.code	16
 371              		.thumb_func
 372              		.fpu softvfp
 374              	ascii_write_command:
 375              	.LFB7:
 106:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 107:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_write_command(unsigned char command){
 376              		.loc 1 107 0
 377              		.cfi_startproc
 378              		@ args = 0, pretend = 0, frame = 8
 379              		@ frame_needed = 1, uses_anonymous_args = 0
 380 0140 80B5     		push	{r7, lr}
 381              		.cfi_def_cfa_offset 8
 382              		.cfi_offset 7, -8
 383              		.cfi_offset 14, -4
 384 0142 82B0     		sub	sp, sp, #8
 385              		.cfi_def_cfa_offset 16
 386 0144 00AF     		add	r7, sp, #0
 387              		.cfi_def_cfa_register 7
 388 0146 0200     		movs	r2, r0
 389 0148 FB1D     		adds	r3, r7, #7
 390 014a 1A70     		strb	r2, [r3]
 108:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_clear(B_RS);
 391              		.loc 1 108 0
 392 014c 0120     		movs	r0, #1
 393 014e FFF7FEFF 		bl	ascii_ctrl_bit_clear
 109:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_clear(B_RW);
 394              		.loc 1 109 0
 395 0152 0220     		movs	r0, #2
 396 0154 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 110:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_write_controller(command);
 397              		.loc 1 110 0
 398 0158 FB1D     		adds	r3, r7, #7
 399 015a 1B78     		ldrb	r3, [r3]
 400 015c 1800     		movs	r0, r3
 401 015e FFF7FEFF 		bl	ascii_write_controller
 111:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 402              		.loc 1 111 0
 403 0162 C046     		nop
 404 0164 BD46     		mov	sp, r7
 405 0166 02B0     		add	sp, sp, #8
 406              		@ sp needed
 407 0168 80BD     		pop	{r7, pc}
 408              		.cfi_endproc
 409              	.LFE7:
 411              		.align	1
 412              		.global	ascii_write_data
 413              		.syntax unified
 414              		.code	16
 415              		.thumb_func
 416              		.fpu softvfp
 418              	ascii_write_data:
 419              	.LFB8:
 112:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 113:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_write_data(unsigned char data){
 420              		.loc 1 113 0
 421              		.cfi_startproc
 422              		@ args = 0, pretend = 0, frame = 8
 423              		@ frame_needed = 1, uses_anonymous_args = 0
 424 016a 80B5     		push	{r7, lr}
 425              		.cfi_def_cfa_offset 8
 426              		.cfi_offset 7, -8
 427              		.cfi_offset 14, -4
 428 016c 82B0     		sub	sp, sp, #8
 429              		.cfi_def_cfa_offset 16
 430 016e 00AF     		add	r7, sp, #0
 431              		.cfi_def_cfa_register 7
 432 0170 0200     		movs	r2, r0
 433 0172 FB1D     		adds	r3, r7, #7
 434 0174 1A70     		strb	r2, [r3]
 114:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_set(B_RS);
 435              		.loc 1 114 0
 436 0176 0120     		movs	r0, #1
 437 0178 FFF7FEFF 		bl	ascii_ctrl_bit_set
 115:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_clear(B_RW);
 438              		.loc 1 115 0
 439 017c 0220     		movs	r0, #2
 440 017e FFF7FEFF 		bl	ascii_ctrl_bit_clear
 116:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_write_controller(data);
 441              		.loc 1 116 0
 442 0182 FB1D     		adds	r3, r7, #7
 443 0184 1B78     		ldrb	r3, [r3]
 444 0186 1800     		movs	r0, r3
 445 0188 FFF7FEFF 		bl	ascii_write_controller
 117:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 446              		.loc 1 117 0
 447 018c C046     		nop
 448 018e BD46     		mov	sp, r7
 449 0190 02B0     		add	sp, sp, #8
 450              		@ sp needed
 451 0192 80BD     		pop	{r7, pc}
 452              		.cfi_endproc
 453              	.LFE8:
 455              		.align	1
 456              		.global	ascii_read_status
 457              		.syntax unified
 458              		.code	16
 459              		.thumb_func
 460              		.fpu softvfp
 462              	ascii_read_status:
 463              	.LFB9:
 118:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 119:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** unsigned char ascii_read_status(void){
 464              		.loc 1 119 0
 465              		.cfi_startproc
 466              		@ args = 0, pretend = 0, frame = 8
 467              		@ frame_needed = 1, uses_anonymous_args = 0
 468 0194 90B5     		push	{r4, r7, lr}
 469              		.cfi_def_cfa_offset 12
 470              		.cfi_offset 4, -12
 471              		.cfi_offset 7, -8
 472              		.cfi_offset 14, -4
 473 0196 83B0     		sub	sp, sp, #12
 474              		.cfi_def_cfa_offset 24
 475 0198 00AF     		add	r7, sp, #0
 476              		.cfi_def_cfa_register 7
 120:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_MODER_E &= 0x0000FFFF;
 477              		.loc 1 120 0
 478 019a 0E4B     		ldr	r3, .L26
 479 019c 1A68     		ldr	r2, [r3]
 480 019e 0D4B     		ldr	r3, .L26
 481 01a0 1204     		lsls	r2, r2, #16
 482 01a2 120C     		lsrs	r2, r2, #16
 483 01a4 1A60     		str	r2, [r3]
 121:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	unsigned char read_status;
 122:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_clear(B_RS);
 484              		.loc 1 122 0
 485 01a6 0120     		movs	r0, #1
 486 01a8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 123:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_set(B_RW);
 487              		.loc 1 123 0
 488 01ac 0220     		movs	r0, #2
 489 01ae FFF7FEFF 		bl	ascii_ctrl_bit_set
 124:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	read_status = ascii_read_controller();
 490              		.loc 1 124 0
 491 01b2 FC1D     		adds	r4, r7, #7
 492 01b4 FFF7FEFF 		bl	ascii_read_controller
 493 01b8 0300     		movs	r3, r0
 494 01ba 2370     		strb	r3, [r4]
 125:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_MODER_E |= 0x55550000;
 495              		.loc 1 125 0
 496 01bc 054B     		ldr	r3, .L26
 497 01be 1A68     		ldr	r2, [r3]
 498 01c0 044B     		ldr	r3, .L26
 499 01c2 0549     		ldr	r1, .L26+4
 500 01c4 0A43     		orrs	r2, r1
 501 01c6 1A60     		str	r2, [r3]
 126:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c ****     return read_status;
 502              		.loc 1 126 0
 503 01c8 FB1D     		adds	r3, r7, #7
 504 01ca 1B78     		ldrb	r3, [r3]
 127:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 505              		.loc 1 127 0
 506 01cc 1800     		movs	r0, r3
 507 01ce BD46     		mov	sp, r7
 508 01d0 03B0     		add	sp, sp, #12
 509              		@ sp needed
 510 01d2 90BD     		pop	{r4, r7, pc}
 511              	.L27:
 512              		.align	2
 513              	.L26:
 514 01d4 00100240 		.word	1073876992
 515 01d8 00005555 		.word	1431633920
 516              		.cfi_endproc
 517              	.LFE9:
 519              		.align	1
 520              		.global	ascii_read_data
 521              		.syntax unified
 522              		.code	16
 523              		.thumb_func
 524              		.fpu softvfp
 526              	ascii_read_data:
 527              	.LFB10:
 128:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 129:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** unsigned char ascii_read_data(void){
 528              		.loc 1 129 0
 529              		.cfi_startproc
 530              		@ args = 0, pretend = 0, frame = 8
 531              		@ frame_needed = 1, uses_anonymous_args = 0
 532 01dc 90B5     		push	{r4, r7, lr}
 533              		.cfi_def_cfa_offset 12
 534              		.cfi_offset 4, -12
 535              		.cfi_offset 7, -8
 536              		.cfi_offset 14, -4
 537 01de 83B0     		sub	sp, sp, #12
 538              		.cfi_def_cfa_offset 24
 539 01e0 00AF     		add	r7, sp, #0
 540              		.cfi_def_cfa_register 7
 130:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_MODER_E &= 0x0000FFFF;
 541              		.loc 1 130 0
 542 01e2 0E4B     		ldr	r3, .L30
 543 01e4 1A68     		ldr	r2, [r3]
 544 01e6 0D4B     		ldr	r3, .L30
 545 01e8 1204     		lsls	r2, r2, #16
 546 01ea 120C     		lsrs	r2, r2, #16
 547 01ec 1A60     		str	r2, [r3]
 131:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	unsigned char read_data;
 132:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_set(B_RS);
 548              		.loc 1 132 0
 549 01ee 0120     		movs	r0, #1
 550 01f0 FFF7FEFF 		bl	ascii_ctrl_bit_set
 133:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_ctrl_bit_set(B_RW);
 551              		.loc 1 133 0
 552 01f4 0220     		movs	r0, #2
 553 01f6 FFF7FEFF 		bl	ascii_ctrl_bit_set
 134:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	read_data = ascii_read_controller();
 554              		.loc 1 134 0
 555 01fa FC1D     		adds	r4, r7, #7
 556 01fc FFF7FEFF 		bl	ascii_read_controller
 557 0200 0300     		movs	r3, r0
 558 0202 2370     		strb	r3, [r4]
 135:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_MODER_E |= 0x55550000;
 559              		.loc 1 135 0
 560 0204 054B     		ldr	r3, .L30
 561 0206 1A68     		ldr	r2, [r3]
 562 0208 044B     		ldr	r3, .L30
 563 020a 0549     		ldr	r1, .L30+4
 564 020c 0A43     		orrs	r2, r1
 565 020e 1A60     		str	r2, [r3]
 136:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c ****     return read_data;
 566              		.loc 1 136 0
 567 0210 FB1D     		adds	r3, r7, #7
 568 0212 1B78     		ldrb	r3, [r3]
 137:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 569              		.loc 1 137 0
 570 0214 1800     		movs	r0, r3
 571 0216 BD46     		mov	sp, r7
 572 0218 03B0     		add	sp, sp, #12
 573              		@ sp needed
 574 021a 90BD     		pop	{r4, r7, pc}
 575              	.L31:
 576              		.align	2
 577              	.L30:
 578 021c 00100240 		.word	1073876992
 579 0220 00005555 		.word	1431633920
 580              		.cfi_endproc
 581              	.LFE10:
 583              		.global	__aeabi_uidiv
 584              		.align	1
 585              		.global	delay_milli
 586              		.syntax unified
 587              		.code	16
 588              		.thumb_func
 589              		.fpu softvfp
 591              	delay_milli:
 592              	.LFB11:
 138:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 139:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void delay_milli(unsigned int ms){
 593              		.loc 1 139 0
 594              		.cfi_startproc
 595              		@ args = 0, pretend = 0, frame = 8
 596              		@ frame_needed = 1, uses_anonymous_args = 0
 597 0224 80B5     		push	{r7, lr}
 598              		.cfi_def_cfa_offset 8
 599              		.cfi_offset 7, -8
 600              		.cfi_offset 14, -4
 601 0226 82B0     		sub	sp, sp, #8
 602              		.cfi_def_cfa_offset 16
 603 0228 00AF     		add	r7, sp, #0
 604              		.cfi_def_cfa_register 7
 605 022a 7860     		str	r0, [r7, #4]
 140:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 141:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #ifdef SIMULATOR
 142:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ms = ms / 100;
 606              		.loc 1 142 0
 607 022c 7B68     		ldr	r3, [r7, #4]
 608 022e 6421     		movs	r1, #100
 609 0230 1800     		movs	r0, r3
 610 0232 FFF7FEFF 		bl	__aeabi_uidiv
 611              	.LVL0:
 612 0236 0300     		movs	r3, r0
 613 0238 7B60     		str	r3, [r7, #4]
 143:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ms++;
 614              		.loc 1 143 0
 615 023a 7B68     		ldr	r3, [r7, #4]
 616 023c 0133     		adds	r3, r3, #1
 617 023e 7B60     		str	r3, [r7, #4]
 144:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** #endif
 145:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 146:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	while( ms-- )
 618              		.loc 1 146 0
 619 0240 04E0     		b	.L33
 620              	.L34:
 147:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_micro(1000);
 621              		.loc 1 147 0
 622 0242 FA23     		movs	r3, #250
 623 0244 9B00     		lsls	r3, r3, #2
 624 0246 1800     		movs	r0, r3
 625 0248 FFF7FEFF 		bl	delay_micro
 626              	.L33:
 146:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		delay_micro(1000);
 627              		.loc 1 146 0
 628 024c 7B68     		ldr	r3, [r7, #4]
 629 024e 5A1E     		subs	r2, r3, #1
 630 0250 7A60     		str	r2, [r7, #4]
 631 0252 002B     		cmp	r3, #0
 632 0254 F5D1     		bne	.L34
 148:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 633              		.loc 1 148 0
 634 0256 C046     		nop
 635 0258 BD46     		mov	sp, r7
 636 025a 02B0     		add	sp, sp, #8
 637              		@ sp needed
 638 025c 80BD     		pop	{r7, pc}
 639              		.cfi_endproc
 640              	.LFE11:
 642              		.align	1
 643              		.global	ascii_command
 644              		.syntax unified
 645              		.code	16
 646              		.thumb_func
 647              		.fpu softvfp
 649              	ascii_command:
 650              	.LFB12:
 149:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 150:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 151:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_command (unsigned char command){
 651              		.loc 1 151 0
 652              		.cfi_startproc
 653              		@ args = 0, pretend = 0, frame = 8
 654              		@ frame_needed = 1, uses_anonymous_args = 0
 655 025e 80B5     		push	{r7, lr}
 656              		.cfi_def_cfa_offset 8
 657              		.cfi_offset 7, -8
 658              		.cfi_offset 14, -4
 659 0260 82B0     		sub	sp, sp, #8
 660              		.cfi_def_cfa_offset 16
 661 0262 00AF     		add	r7, sp, #0
 662              		.cfi_def_cfa_register 7
 663 0264 0200     		movs	r2, r0
 664 0266 FB1D     		adds	r3, r7, #7
 665 0268 1A70     		strb	r2, [r3]
 152:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	while ((ascii_read_status() & (1<<7))){};
 666              		.loc 1 152 0
 667 026a C046     		nop
 668              	.L36:
 669              		.loc 1 152 0 is_stmt 0 discriminator 1
 670 026c FFF7FEFF 		bl	ascii_read_status
 671 0270 0300     		movs	r3, r0
 672 0272 5BB2     		sxtb	r3, r3
 673 0274 002B     		cmp	r3, #0
 674 0276 F9DB     		blt	.L36
 153:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_micro(8);
 675              		.loc 1 153 0 is_stmt 1
 676 0278 0820     		movs	r0, #8
 677 027a FFF7FEFF 		bl	delay_micro
 154:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_write_command(command);
 678              		.loc 1 154 0
 679 027e FB1D     		adds	r3, r7, #7
 680 0280 1B78     		ldrb	r3, [r3]
 681 0282 1800     		movs	r0, r3
 682 0284 FFF7FEFF 		bl	ascii_write_command
 155:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 683              		.loc 1 155 0
 684 0288 C046     		nop
 685 028a BD46     		mov	sp, r7
 686 028c 02B0     		add	sp, sp, #8
 687              		@ sp needed
 688 028e 80BD     		pop	{r7, pc}
 689              		.cfi_endproc
 690              	.LFE12:
 692              		.align	1
 693              		.global	ascii_init
 694              		.syntax unified
 695              		.code	16
 696              		.thumb_func
 697              		.fpu softvfp
 699              	ascii_init:
 700              	.LFB13:
 156:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 157:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_init(){
 701              		.loc 1 157 0
 702              		.cfi_startproc
 703              		@ args = 0, pretend = 0, frame = 0
 704              		@ frame_needed = 1, uses_anonymous_args = 0
 705 0290 80B5     		push	{r7, lr}
 706              		.cfi_def_cfa_offset 8
 707              		.cfi_offset 7, -8
 708              		.cfi_offset 14, -4
 709 0292 00AF     		add	r7, sp, #0
 710              		.cfi_def_cfa_register 7
 158:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_command(0x38); //Function set
 711              		.loc 1 158 0
 712 0294 3820     		movs	r0, #56
 713 0296 FFF7FEFF 		bl	ascii_command
 159:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_micro(40); 
 714              		.loc 1 159 0
 715 029a 2820     		movs	r0, #40
 716 029c FFF7FEFF 		bl	delay_micro
 160:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	//GPIO_ODR_D_HIGH = 0; 
 161:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 162:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_command(0xC); //Display control
 717              		.loc 1 162 0
 718 02a0 0C20     		movs	r0, #12
 719 02a2 FFF7FEFF 		bl	ascii_command
 163:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_micro(40); 
 720              		.loc 1 163 0
 721 02a6 2820     		movs	r0, #40
 722 02a8 FFF7FEFF 		bl	delay_micro
 164:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 165:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_command(1); // clear display
 723              		.loc 1 165 0
 724 02ac 0120     		movs	r0, #1
 725 02ae FFF7FEFF 		bl	ascii_command
 166:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_milli(2);
 726              		.loc 1 166 0
 727 02b2 0220     		movs	r0, #2
 728 02b4 FFF7FEFF 		bl	delay_milli
 167:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 168:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_command(0x6); //entry mode set
 729              		.loc 1 168 0
 730 02b8 0620     		movs	r0, #6
 731 02ba FFF7FEFF 		bl	ascii_command
 169:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_micro(40);
 732              		.loc 1 169 0
 733 02be 2820     		movs	r0, #40
 734 02c0 FFF7FEFF 		bl	delay_micro
 170:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 735              		.loc 1 170 0
 736 02c4 C046     		nop
 737 02c6 BD46     		mov	sp, r7
 738              		@ sp needed
 739 02c8 80BD     		pop	{r7, pc}
 740              		.cfi_endproc
 741              	.LFE13:
 743              		.align	1
 744              		.global	ascii_write_char
 745              		.syntax unified
 746              		.code	16
 747              		.thumb_func
 748              		.fpu softvfp
 750              	ascii_write_char:
 751              	.LFB14:
 171:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 172:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_write_char (unsigned char character){
 752              		.loc 1 172 0
 753              		.cfi_startproc
 754              		@ args = 0, pretend = 0, frame = 8
 755              		@ frame_needed = 1, uses_anonymous_args = 0
 756 02ca 80B5     		push	{r7, lr}
 757              		.cfi_def_cfa_offset 8
 758              		.cfi_offset 7, -8
 759              		.cfi_offset 14, -4
 760 02cc 82B0     		sub	sp, sp, #8
 761              		.cfi_def_cfa_offset 16
 762 02ce 00AF     		add	r7, sp, #0
 763              		.cfi_def_cfa_register 7
 764 02d0 0200     		movs	r2, r0
 765 02d2 FB1D     		adds	r3, r7, #7
 766 02d4 1A70     		strb	r2, [r3]
 173:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	//while ((ascii_read_status() & (1<<7))){}
 174:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 175:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** while ((ascii_read_status() & 0x80) == 0x80) {};
 767              		.loc 1 175 0
 768 02d6 C046     		nop
 769              	.L39:
 770              		.loc 1 175 0 is_stmt 0 discriminator 1
 771 02d8 FFF7FEFF 		bl	ascii_read_status
 772 02dc 0300     		movs	r3, r0
 773 02de 1A00     		movs	r2, r3
 774 02e0 8023     		movs	r3, #128
 775 02e2 1340     		ands	r3, r2
 776 02e4 802B     		cmp	r3, #128
 777 02e6 F7D0     		beq	.L39
 176:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_micro(8);
 778              		.loc 1 176 0 is_stmt 1
 779 02e8 0820     		movs	r0, #8
 780 02ea FFF7FEFF 		bl	delay_micro
 177:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_write_data(character);
 781              		.loc 1 177 0
 782 02ee FB1D     		adds	r3, r7, #7
 783 02f0 1B78     		ldrb	r3, [r3]
 784 02f2 1800     		movs	r0, r3
 785 02f4 FFF7FEFF 		bl	ascii_write_data
 178:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	delay_micro(40);
 786              		.loc 1 178 0
 787 02f8 2820     		movs	r0, #40
 788 02fa FFF7FEFF 		bl	delay_micro
 179:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 789              		.loc 1 179 0
 790 02fe C046     		nop
 791 0300 BD46     		mov	sp, r7
 792 0302 02B0     		add	sp, sp, #8
 793              		@ sp needed
 794 0304 80BD     		pop	{r7, pc}
 795              		.cfi_endproc
 796              	.LFE14:
 798              		.align	1
 799              		.global	ascii_gotoxy
 800              		.syntax unified
 801              		.code	16
 802              		.thumb_func
 803              		.fpu softvfp
 805              	ascii_gotoxy:
 806              	.LFB15:
 180:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 181:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void ascii_gotoxy(int x,int y){ //x = rad, y = column
 807              		.loc 1 181 0
 808              		.cfi_startproc
 809              		@ args = 0, pretend = 0, frame = 16
 810              		@ frame_needed = 1, uses_anonymous_args = 0
 811 0306 80B5     		push	{r7, lr}
 812              		.cfi_def_cfa_offset 8
 813              		.cfi_offset 7, -8
 814              		.cfi_offset 14, -4
 815 0308 84B0     		sub	sp, sp, #16
 816              		.cfi_def_cfa_offset 24
 817 030a 00AF     		add	r7, sp, #0
 818              		.cfi_def_cfa_register 7
 819 030c 7860     		str	r0, [r7, #4]
 820 030e 3960     		str	r1, [r7]
 182:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	unsigned char adress = 0;
 821              		.loc 1 182 0
 822 0310 0F21     		movs	r1, #15
 823 0312 7B18     		adds	r3, r7, r1
 824 0314 0022     		movs	r2, #0
 825 0316 1A70     		strb	r2, [r3]
 183:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	adress = x-1;
 826              		.loc 1 183 0
 827 0318 7B68     		ldr	r3, [r7, #4]
 828 031a DAB2     		uxtb	r2, r3
 829 031c 7B18     		adds	r3, r7, r1
 830 031e 013A     		subs	r2, r2, #1
 831 0320 1A70     		strb	r2, [r3]
 184:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 185:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	if(y==2)
 832              		.loc 1 185 0
 833 0322 3B68     		ldr	r3, [r7]
 834 0324 022B     		cmp	r3, #2
 835 0326 05D1     		bne	.L41
 186:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		adress = adress + 0x40;
 836              		.loc 1 186 0
 837 0328 0F22     		movs	r2, #15
 838 032a BB18     		adds	r3, r7, r2
 839 032c BA18     		adds	r2, r7, r2
 840 032e 1278     		ldrb	r2, [r2]
 841 0330 4032     		adds	r2, r2, #64
 842 0332 1A70     		strb	r2, [r3]
 843              	.L41:
 187:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		
 188:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_write_command(0x80 | adress);
 844              		.loc 1 188 0
 845 0334 0F23     		movs	r3, #15
 846 0336 FB18     		adds	r3, r7, r3
 847 0338 1B78     		ldrb	r3, [r3]
 848 033a 8022     		movs	r2, #128
 849 033c 5242     		rsbs	r2, r2, #0
 850 033e 1343     		orrs	r3, r2
 851 0340 DBB2     		uxtb	r3, r3
 852 0342 1800     		movs	r0, r3
 853 0344 FFF7FEFF 		bl	ascii_write_command
 189:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 854              		.loc 1 189 0
 855 0348 C046     		nop
 856 034a BD46     		mov	sp, r7
 857 034c 04B0     		add	sp, sp, #16
 858              		@ sp needed
 859 034e 80BD     		pop	{r7, pc}
 860              		.cfi_endproc
 861              	.LFE15:
 863              		.align	1
 864              		.global	init_app
 865              		.syntax unified
 866              		.code	16
 867              		.thumb_func
 868              		.fpu softvfp
 870              	init_app:
 871              	.LFB16:
 190:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 191:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void init_app(){
 872              		.loc 1 191 0
 873              		.cfi_startproc
 874              		@ args = 0, pretend = 0, frame = 0
 875              		@ frame_needed = 1, uses_anonymous_args = 0
 876 0350 80B5     		push	{r7, lr}
 877              		.cfi_def_cfa_offset 8
 878              		.cfi_offset 7, -8
 879              		.cfi_offset 14, -4
 880 0352 00AF     		add	r7, sp, #0
 881              		.cfi_def_cfa_register 7
 192:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** //#ifdef USBDM
 193:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** //	*((unsigned long *) 0x40023830) = 0x18; //starta clockor port E, D
 194:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** //	__asm volatile ( " LDR R0,=0x8000209\n BLX R0 \n //initiera PLL");
 195:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** //#endif
 196:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 197:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	GPIO_MODER_E = 0x55555555;
 882              		.loc 1 197 0
 883 0354 024B     		ldr	r3, .L43
 884 0356 034A     		ldr	r2, .L43+4
 885 0358 1A60     		str	r2, [r3]
 198:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 199:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 200:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 201:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 886              		.loc 1 201 0
 887 035a C046     		nop
 888 035c BD46     		mov	sp, r7
 889              		@ sp needed
 890 035e 80BD     		pop	{r7, pc}
 891              	.L44:
 892              		.align	2
 893              	.L43:
 894 0360 00100240 		.word	1073876992
 895 0364 55555555 		.word	1431655765
 896              		.cfi_endproc
 897              	.LFE16:
 899              		.section	.rodata
 900              		.align	2
 901              	.LC0:
 902 0000 416C6661 		.ascii	"Alfanumerisk \000"
 902      6E756D65 
 902      7269736B 
 902      2000
 903 000e 0000     		.align	2
 904              	.LC2:
 905 0010 20446973 		.ascii	" Display - test2 \000"
 905      706C6179 
 905      202D2074 
 905      65737432 
 905      2000
 906              		.text
 907              		.align	1
 908              		.global	main
 909              		.syntax unified
 910              		.code	16
 911              		.thumb_func
 912              		.fpu softvfp
 914              	main:
 915              	.LFB17:
 202:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 203:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 
 204:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** void main(void)
 205:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** {
 916              		.loc 1 205 0
 917              		.cfi_startproc
 918              		@ args = 0, pretend = 0, frame = 40
 919              		@ frame_needed = 1, uses_anonymous_args = 0
 920 0368 B0B5     		push	{r4, r5, r7, lr}
 921              		.cfi_def_cfa_offset 16
 922              		.cfi_offset 4, -16
 923              		.cfi_offset 5, -12
 924              		.cfi_offset 7, -8
 925              		.cfi_offset 14, -4
 926 036a 8AB0     		sub	sp, sp, #40
 927              		.cfi_def_cfa_offset 56
 928 036c 00AF     		add	r7, sp, #0
 929              		.cfi_def_cfa_register 7
 206:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	init_app();
 930              		.loc 1 206 0
 931 036e FFF7FEFF 		bl	init_app
 207:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	char *s;
 208:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	char test1[] = "Alfanumerisk ";
 932              		.loc 1 208 0
 933 0372 1424     		movs	r4, #20
 934 0374 3B19     		adds	r3, r7, r4
 935 0376 1B4A     		ldr	r2, .L51
 936 0378 23CA     		ldmia	r2!, {r0, r1, r5}
 937 037a 23C3     		stmia	r3!, {r0, r1, r5}
 938 037c 1288     		ldrh	r2, [r2]
 939 037e 1A80     		strh	r2, [r3]
 209:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	char test2[] = " Display - test2 ";
 940              		.loc 1 209 0
 941 0380 3B00     		movs	r3, r7
 942 0382 194A     		ldr	r2, .L51+4
 943 0384 23CA     		ldmia	r2!, {r0, r1, r5}
 944 0386 23C3     		stmia	r3!, {r0, r1, r5}
 945 0388 1168     		ldr	r1, [r2]
 946 038a 1960     		str	r1, [r3]
 947 038c 9288     		ldrh	r2, [r2, #4]
 948 038e 9A80     		strh	r2, [r3, #4]
 210:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 211:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 212:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_init();
 949              		.loc 1 212 0
 950 0390 FFF7FEFF 		bl	ascii_init
 213:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_gotoxy(1,1);
 951              		.loc 1 213 0
 952 0394 0121     		movs	r1, #1
 953 0396 0120     		movs	r0, #1
 954 0398 FFF7FEFF 		bl	ascii_gotoxy
 214:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	s = test1;
 955              		.loc 1 214 0
 956 039c 3B19     		adds	r3, r7, r4
 957 039e 7B62     		str	r3, [r7, #36]
 215:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 216:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	while(*s)
 958              		.loc 1 216 0
 959 03a0 06E0     		b	.L46
 960              	.L47:
 217:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		ascii_write_char(*s++);
 961              		.loc 1 217 0
 962 03a2 7B6A     		ldr	r3, [r7, #36]
 963 03a4 5A1C     		adds	r2, r3, #1
 964 03a6 7A62     		str	r2, [r7, #36]
 965 03a8 1B78     		ldrb	r3, [r3]
 966 03aa 1800     		movs	r0, r3
 967 03ac FFF7FEFF 		bl	ascii_write_char
 968              	.L46:
 216:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		ascii_write_char(*s++);
 969              		.loc 1 216 0
 970 03b0 7B6A     		ldr	r3, [r7, #36]
 971 03b2 1B78     		ldrb	r3, [r3]
 972 03b4 002B     		cmp	r3, #0
 973 03b6 F4D1     		bne	.L47
 218:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 219:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	ascii_gotoxy(1,2);
 974              		.loc 1 219 0
 975 03b8 0221     		movs	r1, #2
 976 03ba 0120     		movs	r0, #1
 977 03bc FFF7FEFF 		bl	ascii_gotoxy
 220:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	s =  test2;
 978              		.loc 1 220 0
 979 03c0 3B00     		movs	r3, r7
 980 03c2 7B62     		str	r3, [r7, #36]
 221:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 222:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	while(*s)
 981              		.loc 1 222 0
 982 03c4 06E0     		b	.L48
 983              	.L49:
 223:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		ascii_write_char(*s++);
 984              		.loc 1 223 0
 985 03c6 7B6A     		ldr	r3, [r7, #36]
 986 03c8 5A1C     		adds	r2, r3, #1
 987 03ca 7A62     		str	r2, [r7, #36]
 988 03cc 1B78     		ldrb	r3, [r3]
 989 03ce 1800     		movs	r0, r3
 990 03d0 FFF7FEFF 		bl	ascii_write_char
 991              	.L48:
 222:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 		ascii_write_char(*s++);
 992              		.loc 1 222 0
 993 03d4 7B6A     		ldr	r3, [r7, #36]
 994 03d6 1B78     		ldrb	r3, [r3]
 995 03d8 002B     		cmp	r3, #0
 996 03da F4D1     		bne	.L49
 224:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	
 225:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** 	return 0;
 997              		.loc 1 225 0
 998 03dc C046     		nop
 226:C:/Users/Andre/Desktop/DAT390_labb_v4/asciidisplay\startup.c **** }
 999              		.loc 1 226 0
 1000 03de BD46     		mov	sp, r7
 1001 03e0 0AB0     		add	sp, sp, #40
 1002              		@ sp needed
 1003 03e2 B0BD     		pop	{r4, r5, r7, pc}
 1004              	.L52:
 1005              		.align	2
 1006              	.L51:
 1007 03e4 00000000 		.word	.LC0
 1008 03e8 10000000 		.word	.LC2
 1009              		.cfi_endproc
 1010              	.LFE17:
 1012              	.Letext0:
