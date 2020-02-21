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
  25              		.file 1 "Z:/DATlaborationer/delay/startup.c"
   1:Z:/DATlaborationer/delay\startup.c **** /*
   2:Z:/DATlaborationer/delay\startup.c ****  * 	startup.c
   3:Z:/DATlaborationer/delay\startup.c ****  *
   4:Z:/DATlaborationer/delay\startup.c ****  */
   5:Z:/DATlaborationer/delay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:Z:/DATlaborationer/delay\startup.c **** 
   7:Z:/DATlaborationer/delay\startup.c **** //#define SIMULATOR
   8:Z:/DATlaborationer/delay\startup.c **** #define GPIO_BASE_D 0x40020C00
   9:Z:/DATlaborationer/delay\startup.c **** #define GPIO_MODER_D (*((volatile unsigned int*)(GPIO_BASE_D)))
  10:Z:/DATlaborationer/delay\startup.c **** #define GPIO_MODER_LOW_D (*((unsigned short*)(GPIO_BASE_D)))
  11:Z:/DATlaborationer/delay\startup.c **** #define GPIO_MODER_HIGH_D (*((unsigned short*)(GPIO_BASE_D + 0x02)))
  12:Z:/DATlaborationer/delay\startup.c **** 
  13:Z:/DATlaborationer/delay\startup.c **** #define GPIO_OTYPER_D (*((unsigned short*)(GPIO_BASE_D + 0x04)))
  14:Z:/DATlaborationer/delay\startup.c **** 
  15:Z:/DATlaborationer/delay\startup.c **** #define GPIO_PUPDR_D (*((unsigned int*)(GPIO_BASE_D + 0x0C)))
  16:Z:/DATlaborationer/delay\startup.c **** 
  17:Z:/DATlaborationer/delay\startup.c **** #define GPIO_IDR_D (*((unsigned short*)(GPIO_BASE_D + 0x10)))
  18:Z:/DATlaborationer/delay\startup.c **** #define GPIO_IDR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x10)))
  19:Z:/DATlaborationer/delay\startup.c **** #define GPIO_IDR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x11)))
  20:Z:/DATlaborationer/delay\startup.c **** 
  21:Z:/DATlaborationer/delay\startup.c **** #define GPIO_ODR_D (*((unsigned short*)(GPIO_BASE_D + 0x14)))
  22:Z:/DATlaborationer/delay\startup.c **** #define GPIO_ODR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x14)))
  23:Z:/DATlaborationer/delay\startup.c **** #define GPIO_ODR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x15)))
  24:Z:/DATlaborationer/delay\startup.c ****  
  25:Z:/DATlaborationer/delay\startup.c **** 
  26:Z:/DATlaborationer/delay\startup.c **** #define GPIO_BASE_E 0x40021000
  27:Z:/DATlaborationer/delay\startup.c **** #define GPIO_MODER_E (*((volatile unsigned int*)(GPIO_BASE_E)))
  28:Z:/DATlaborationer/delay\startup.c **** #define GPIO_MODER_LOW_E (*((volatile unsigned short*)(GPIO_BASE_E)))
  29:Z:/DATlaborationer/delay\startup.c **** #define GPIO_MODER_HIGH_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x02)))
  30:Z:/DATlaborationer/delay\startup.c **** 
  31:Z:/DATlaborationer/delay\startup.c **** #define GPIO_OTYPER_E (*((unsigned short*)(GPIO_BASE_E + 0x04)))
  32:Z:/DATlaborationer/delay\startup.c **** #define GPIO_OSPEEDR_E (*((volatile unsigned int*)(GPIO_BASE_E + 0x08)))
  33:Z:/DATlaborationer/delay\startup.c **** #define GPIO_PUPDR_E (*((unsigned int*)(GPIO_BASE_E + 0x0C)))
  34:Z:/DATlaborationer/delay\startup.c **** 
  35:Z:/DATlaborationer/delay\startup.c **** #define GPIO_IDR_E (*((unsigned short*)(GPIO_BASE_E + 0x10)))
  36:Z:/DATlaborationer/delay\startup.c **** #define GPIO_IDR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x10)))
  37:Z:/DATlaborationer/delay\startup.c **** #define GPIO_IDR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x11)))
  38:Z:/DATlaborationer/delay\startup.c **** 
  39:Z:/DATlaborationer/delay\startup.c **** #define GPIO_ODR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x14)))
  40:Z:/DATlaborationer/delay\startup.c **** #define GPIO_ODR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x14)))
  41:Z:/DATlaborationer/delay\startup.c **** #define GPIO_ODR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x15)))
  42:Z:/DATlaborationer/delay\startup.c **** 
  43:Z:/DATlaborationer/delay\startup.c **** 
  44:Z:/DATlaborationer/delay\startup.c **** #define STK_BASE 0xE000E010
  45:Z:/DATlaborationer/delay\startup.c **** #define STK_CTRL (*((volatile unsigned int*)(STK_BASE)))
  46:Z:/DATlaborationer/delay\startup.c **** #define STK_LOAD (*((volatile unsigned int*)(STK_BASE + 0x04)))
  47:Z:/DATlaborationer/delay\startup.c **** #define STK_VAL (*((volatile unsigned int*)(STK_BASE + 0x08)))
  48:Z:/DATlaborationer/delay\startup.c **** #define STK_CALIB (*((volatile unsigned int*)(STK_BASE + 0x0C)))
  49:Z:/DATlaborationer/delay\startup.c **** 
  50:Z:/DATlaborationer/delay\startup.c **** void startup ( void )
  51:Z:/DATlaborationer/delay\startup.c **** {
  26              		.loc 1 51 1
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  52:Z:/DATlaborationer/delay\startup.c **** __asm volatile(
  31              		.loc 1 52 1
  32              		.syntax divided
  33              	@ 52 "Z:/DATlaborationer/delay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  53:Z:/DATlaborationer/delay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  54:Z:/DATlaborationer/delay\startup.c **** 	" MOV SP,R0\n"
  55:Z:/DATlaborationer/delay\startup.c **** 	" BL main\n"				/* call main */
  56:Z:/DATlaborationer/delay\startup.c **** 	"_exit: B .\n"				/* never return */
  57:Z:/DATlaborationer/delay\startup.c **** 	) ;
  58:Z:/DATlaborationer/delay\startup.c **** }
  40              		.loc 1 58 1
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
  59:Z:/DATlaborationer/delay\startup.c **** 
  60:Z:/DATlaborationer/delay\startup.c **** void delay_250ns(void){
  57              		.loc 1 60 23
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  61:Z:/DATlaborationer/delay\startup.c **** 	STK_CTRL = 0;
  67              		.loc 1 61 2
  68 0004 0C4B     		ldr	r3, .L4
  69              		.loc 1 61 11
  70 0006 0022     		movs	r2, #0
  71 0008 1A60     		str	r2, [r3]
  62:Z:/DATlaborationer/delay\startup.c **** 	STK_LOAD = ((168/4) - 1);
  72              		.loc 1 62 2
  73 000a 0C4B     		ldr	r3, .L4+4
  74              		.loc 1 62 11
  75 000c 2922     		movs	r2, #41
  76 000e 1A60     		str	r2, [r3]
  63:Z:/DATlaborationer/delay\startup.c **** 	STK_VAL = 0;
  77              		.loc 1 63 2
  78 0010 0B4B     		ldr	r3, .L4+8
  79              		.loc 1 63 10
  80 0012 0022     		movs	r2, #0
  81 0014 1A60     		str	r2, [r3]
  64:Z:/DATlaborationer/delay\startup.c **** 	STK_CTRL = 5;
  82              		.loc 1 64 2
  83 0016 084B     		ldr	r3, .L4
  84              		.loc 1 64 11
  85 0018 0522     		movs	r2, #5
  86 001a 1A60     		str	r2, [r3]
  65:Z:/DATlaborationer/delay\startup.c **** 	
  66:Z:/DATlaborationer/delay\startup.c **** 	while((STK_CTRL & 0x10000) == 0){};
  87              		.loc 1 66 7
  88 001c C046     		nop
  89              	.L3:
  90              		.loc 1 66 9 discriminator 1
  91 001e 064B     		ldr	r3, .L4
  92 0020 1A68     		ldr	r2, [r3]
  93              		.loc 1 66 18 discriminator 1
  94 0022 8023     		movs	r3, #128
  95 0024 5B02     		lsls	r3, r3, #9
  96 0026 1340     		ands	r3, r2
  97              		.loc 1 66 7 discriminator 1
  98 0028 F9D0     		beq	.L3
  67:Z:/DATlaborationer/delay\startup.c **** 	STK_CTRL = 0;
  99              		.loc 1 67 2
 100 002a 034B     		ldr	r3, .L4
 101              		.loc 1 67 11
 102 002c 0022     		movs	r2, #0
 103 002e 1A60     		str	r2, [r3]
  68:Z:/DATlaborationer/delay\startup.c **** }
 104              		.loc 1 68 1
 105 0030 C046     		nop
 106 0032 BD46     		mov	sp, r7
 107              		@ sp needed
 108 0034 80BD     		pop	{r7, pc}
 109              	.L5:
 110 0036 C046     		.align	2
 111              	.L4:
 112 0038 10E000E0 		.word	-536813552
 113 003c 14E000E0 		.word	-536813548
 114 0040 18E000E0 		.word	-536813544
 115              		.cfi_endproc
 116              	.LFE1:
 118              		.align	1
 119              		.global	delay_micro
 120              		.syntax unified
 121              		.code	16
 122              		.thumb_func
 123              		.fpu softvfp
 125              	delay_micro:
 126              	.LFB2:
  69:Z:/DATlaborationer/delay\startup.c **** 
  70:Z:/DATlaborationer/delay\startup.c **** void delay_micro(unsigned int us){
 127              		.loc 1 70 34
 128              		.cfi_startproc
 129              		@ args = 0, pretend = 0, frame = 8
 130              		@ frame_needed = 1, uses_anonymous_args = 0
 131 0044 80B5     		push	{r7, lr}
 132              		.cfi_def_cfa_offset 8
 133              		.cfi_offset 7, -8
 134              		.cfi_offset 14, -4
 135 0046 82B0     		sub	sp, sp, #8
 136              		.cfi_def_cfa_offset 16
 137 0048 00AF     		add	r7, sp, #0
 138              		.cfi_def_cfa_register 7
 139 004a 7860     		str	r0, [r7, #4]
  71:Z:/DATlaborationer/delay\startup.c **** 	while(us--){
 140              		.loc 1 71 7
 141 004c 07E0     		b	.L7
 142              	.L8:
  72:Z:/DATlaborationer/delay\startup.c **** 		delay_250ns();
 143              		.loc 1 72 3
 144 004e FFF7FEFF 		bl	delay_250ns
  73:Z:/DATlaborationer/delay\startup.c **** 		delay_250ns();
 145              		.loc 1 73 3
 146 0052 FFF7FEFF 		bl	delay_250ns
  74:Z:/DATlaborationer/delay\startup.c **** 		delay_250ns(); 
 147              		.loc 1 74 3
 148 0056 FFF7FEFF 		bl	delay_250ns
  75:Z:/DATlaborationer/delay\startup.c **** 		delay_250ns();
 149              		.loc 1 75 3
 150 005a FFF7FEFF 		bl	delay_250ns
 151              	.L7:
  71:Z:/DATlaborationer/delay\startup.c **** 		delay_250ns();
 152              		.loc 1 71 10
 153 005e 7B68     		ldr	r3, [r7, #4]
 154 0060 5A1E     		subs	r2, r3, #1
 155 0062 7A60     		str	r2, [r7, #4]
  71:Z:/DATlaborationer/delay\startup.c **** 		delay_250ns();
 156              		.loc 1 71 7
 157 0064 002B     		cmp	r3, #0
 158 0066 F2D1     		bne	.L8
  76:Z:/DATlaborationer/delay\startup.c **** 	}
  77:Z:/DATlaborationer/delay\startup.c **** }
 159              		.loc 1 77 1
 160 0068 C046     		nop
 161 006a C046     		nop
 162 006c BD46     		mov	sp, r7
 163 006e 02B0     		add	sp, sp, #8
 164              		@ sp needed
 165 0070 80BD     		pop	{r7, pc}
 166              		.cfi_endproc
 167              	.LFE2:
 169              		.align	1
 170              		.global	delay_milli
 171              		.syntax unified
 172              		.code	16
 173              		.thumb_func
 174              		.fpu softvfp
 176              	delay_milli:
 177              	.LFB3:
  78:Z:/DATlaborationer/delay\startup.c **** 
  79:Z:/DATlaborationer/delay\startup.c **** void delay_milli(unsigned int ms){
 178              		.loc 1 79 34
 179              		.cfi_startproc
 180              		@ args = 0, pretend = 0, frame = 8
 181              		@ frame_needed = 1, uses_anonymous_args = 0
 182 0072 80B5     		push	{r7, lr}
 183              		.cfi_def_cfa_offset 8
 184              		.cfi_offset 7, -8
 185              		.cfi_offset 14, -4
 186 0074 82B0     		sub	sp, sp, #8
 187              		.cfi_def_cfa_offset 16
 188 0076 00AF     		add	r7, sp, #0
 189              		.cfi_def_cfa_register 7
 190 0078 7860     		str	r0, [r7, #4]
  80:Z:/DATlaborationer/delay\startup.c **** 
  81:Z:/DATlaborationer/delay\startup.c **** #ifdef SIMULATOR
  82:Z:/DATlaborationer/delay\startup.c **** 	ms = ms / 100;
  83:Z:/DATlaborationer/delay\startup.c **** 	ms++;
  84:Z:/DATlaborationer/delay\startup.c **** #endif
  85:Z:/DATlaborationer/delay\startup.c **** 	
  86:Z:/DATlaborationer/delay\startup.c **** 	while( ms-- )
 191              		.loc 1 86 7
 192 007a 04E0     		b	.L10
 193              	.L11:
  87:Z:/DATlaborationer/delay\startup.c **** 		delay_micro(1000);
 194              		.loc 1 87 3
 195 007c FA23     		movs	r3, #250
 196 007e 9B00     		lsls	r3, r3, #2
 197 0080 1800     		movs	r0, r3
 198 0082 FFF7FEFF 		bl	delay_micro
 199              	.L10:
  86:Z:/DATlaborationer/delay\startup.c **** 		delay_micro(1000);
 200              		.loc 1 86 11
 201 0086 7B68     		ldr	r3, [r7, #4]
 202 0088 5A1E     		subs	r2, r3, #1
 203 008a 7A60     		str	r2, [r7, #4]
  86:Z:/DATlaborationer/delay\startup.c **** 		delay_micro(1000);
 204              		.loc 1 86 7
 205 008c 002B     		cmp	r3, #0
 206 008e F5D1     		bne	.L11
  88:Z:/DATlaborationer/delay\startup.c **** }
 207              		.loc 1 88 1
 208 0090 C046     		nop
 209 0092 C046     		nop
 210 0094 BD46     		mov	sp, r7
 211 0096 02B0     		add	sp, sp, #8
 212              		@ sp needed
 213 0098 80BD     		pop	{r7, pc}
 214              		.cfi_endproc
 215              	.LFE3:
 217              		.align	1
 218              		.global	app_init
 219              		.syntax unified
 220              		.code	16
 221              		.thumb_func
 222              		.fpu softvfp
 224              	app_init:
 225              	.LFB4:
  89:Z:/DATlaborationer/delay\startup.c **** 
  90:Z:/DATlaborationer/delay\startup.c **** void app_init(void)
  91:Z:/DATlaborationer/delay\startup.c **** {
 226              		.loc 1 91 1
 227              		.cfi_startproc
 228              		@ args = 0, pretend = 0, frame = 0
 229              		@ frame_needed = 1, uses_anonymous_args = 0
 230 009a 80B5     		push	{r7, lr}
 231              		.cfi_def_cfa_offset 8
 232              		.cfi_offset 7, -8
 233              		.cfi_offset 14, -4
 234 009c 00AF     		add	r7, sp, #0
 235              		.cfi_def_cfa_register 7
  92:Z:/DATlaborationer/delay\startup.c **** #ifdef USBDM
  93:Z:/DATlaborationer/delay\startup.c **** 	*((unsigned long *) 0x40023830) = 0x18; //starta clockor port E, D
 236              		.loc 1 93 2
 237 009e 0B4B     		ldr	r3, .L13
 238              		.loc 1 93 34
 239 00a0 1822     		movs	r2, #24
 240 00a2 1A60     		str	r2, [r3]
  94:Z:/DATlaborationer/delay\startup.c **** 	__asm volatile ( " LDR R0,=0x8000209\n BLX R0 \n //initiera PLL");
 241              		.loc 1 94 2
 242              		.syntax divided
 243              	@ 94 "Z:/DATlaborationer/delay/startup.c" 1
 244 00a4 1948     		 LDR R0,=0x8000209
 245 00a6 8047     	 BLX R0 
 246              	 //initiera PLL
 247              	@ 0 "" 2
  95:Z:/DATlaborationer/delay\startup.c **** #endif
  96:Z:/DATlaborationer/delay\startup.c **** 
  97:Z:/DATlaborationer/delay\startup.c **** 	GPIO_MODER_E &= 0;
 248              		.loc 1 97 15
 249              		.thumb
 250              		.syntax unified
 251 00a8 094B     		ldr	r3, .L13+4
 252 00aa 1B68     		ldr	r3, [r3]
 253 00ac 084B     		ldr	r3, .L13+4
 254 00ae 0022     		movs	r2, #0
 255 00b0 1A60     		str	r2, [r3]
  98:Z:/DATlaborationer/delay\startup.c **** 	GPIO_MODER_E |= 0x00005555; //pin 1 - 8 bargraph
 256              		.loc 1 98 15
 257 00b2 074B     		ldr	r3, .L13+4
 258 00b4 1A68     		ldr	r2, [r3]
 259 00b6 064B     		ldr	r3, .L13+4
 260 00b8 0649     		ldr	r1, .L13+8
 261 00ba 0A43     		orrs	r2, r1
 262 00bc 1A60     		str	r2, [r3]
  99:Z:/DATlaborationer/delay\startup.c **** 	GPIO_OSPEEDR_E = 0xFFFFFFFF;
 263              		.loc 1 99 2
 264 00be 064B     		ldr	r3, .L13+12
 265              		.loc 1 99 17
 266 00c0 0122     		movs	r2, #1
 267 00c2 5242     		rsbs	r2, r2, #0
 268 00c4 1A60     		str	r2, [r3]
 100:Z:/DATlaborationer/delay\startup.c **** 	
 101:Z:/DATlaborationer/delay\startup.c **** 	//GPIO_OTYPER_E |= 0x0000; //push-pull output type
 102:Z:/DATlaborationer/delay\startup.c **** 	
 103:Z:/DATlaborationer/delay\startup.c **** }
 269              		.loc 1 103 1
 270 00c6 C046     		nop
 271 00c8 BD46     		mov	sp, r7
 272              		@ sp needed
 273 00ca 80BD     		pop	{r7, pc}
 274              	.L14:
 275              		.align	2
 276              	.L13:
 277 00cc 30380240 		.word	1073887280
 278 00d0 00100240 		.word	1073876992
 279 00d4 55550000 		.word	21845
 280 00d8 08100240 		.word	1073877000
 281              		.cfi_endproc
 282              	.LFE4:
 284              		.align	1
 285              		.global	main
 286              		.syntax unified
 287              		.code	16
 288              		.thumb_func
 289              		.fpu softvfp
 291              	main:
 292              	.LFB5:
 104:Z:/DATlaborationer/delay\startup.c **** 
 105:Z:/DATlaborationer/delay\startup.c **** 
 106:Z:/DATlaborationer/delay\startup.c **** void main(void)
 107:Z:/DATlaborationer/delay\startup.c **** {
 293              		.loc 1 107 1
 294              		.cfi_startproc
 295              		@ args = 0, pretend = 0, frame = 0
 296              		@ frame_needed = 1, uses_anonymous_args = 0
 297 00dc 80B5     		push	{r7, lr}
 298              		.cfi_def_cfa_offset 8
 299              		.cfi_offset 7, -8
 300              		.cfi_offset 14, -4
 301 00de 00AF     		add	r7, sp, #0
 302              		.cfi_def_cfa_register 7
 108:Z:/DATlaborationer/delay\startup.c **** 	app_init();
 303              		.loc 1 108 2
 304 00e0 FFF7FEFF 		bl	app_init
 305              	.L16:
 109:Z:/DATlaborationer/delay\startup.c **** 	
 110:Z:/DATlaborationer/delay\startup.c **** 	while(1){
 111:Z:/DATlaborationer/delay\startup.c **** 		GPIO_ODR_E_LOW = 0;
 306              		.loc 1 111 3 discriminator 1
 307 00e4 084B     		ldr	r3, .L17
 308              		.loc 1 111 18 discriminator 1
 309 00e6 0022     		movs	r2, #0
 310 00e8 1A70     		strb	r2, [r3]
 112:Z:/DATlaborationer/delay\startup.c **** 		delay_milli(500);
 311              		.loc 1 112 3 discriminator 1
 312 00ea FA23     		movs	r3, #250
 313 00ec 5B00     		lsls	r3, r3, #1
 314 00ee 1800     		movs	r0, r3
 315 00f0 FFF7FEFF 		bl	delay_milli
 113:Z:/DATlaborationer/delay\startup.c **** 		GPIO_ODR_E_LOW = 0xFF;
 316              		.loc 1 113 3 discriminator 1
 317 00f4 044B     		ldr	r3, .L17
 318              		.loc 1 113 18 discriminator 1
 319 00f6 FF22     		movs	r2, #255
 320 00f8 1A70     		strb	r2, [r3]
 114:Z:/DATlaborationer/delay\startup.c **** 		delay_milli(500);
 321              		.loc 1 114 3 discriminator 1
 322 00fa FA23     		movs	r3, #250
 323 00fc 5B00     		lsls	r3, r3, #1
 324 00fe 1800     		movs	r0, r3
 325 0100 FFF7FEFF 		bl	delay_milli
 111:Z:/DATlaborationer/delay\startup.c **** 		delay_milli(500);
 326              		.loc 1 111 18 discriminator 1
 327 0104 EEE7     		b	.L16
 328              	.L18:
 329 0106 C046     		.align	2
 330              	.L17:
 331 0108 14100240 		.word	1073877012
 332              		.cfi_endproc
 333              	.LFE5:
 335              	.Letext0:
