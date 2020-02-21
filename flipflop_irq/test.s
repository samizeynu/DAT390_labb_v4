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
  25              		.file 1 "C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq/startup.c"
   1:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** /*
   2:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c ****  * 	startup.c
   3:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c ****  *
   4:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c ****  */
   5:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c ****  
   6:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c ****  #include "startup.h"
   7:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   8:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
   9:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
  10:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
  11:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** void startup ( void )
  12:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** {
  26              		.loc 1 12 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  13:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** __asm volatile(
  31              		.loc 1 13 0
  32              		.syntax divided
  33              	@ 13 "C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  14:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  15:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	" MOV SP,R0\n"
  16:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	" BL main\n"				/* call main */
  17:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	"_exit: B .\n"				/* never return */
  18:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	) ;
  19:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** }
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
  20:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
  21:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** static volatile unsigned char count;
  22:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
  23:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** void irq_handler(){
  61              		.loc 1 23 0
  62              		.cfi_startproc
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 1, uses_anonymous_args = 0
  65 0000 80B5     		push	{r7, lr}
  66              		.cfi_def_cfa_offset 8
  67              		.cfi_offset 7, -8
  68              		.cfi_offset 14, -4
  69 0002 00AF     		add	r7, sp, #0
  70              		.cfi_def_cfa_register 7
  24:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	unsigned char x;
  25:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	if(EXTI_PR & 0x8)
  71              		.loc 1 25 0
  72 0004 0A4B     		ldr	r3, .L4
  73 0006 1B68     		ldr	r3, [r3]
  74 0008 0822     		movs	r2, #8
  75 000a 1340     		ands	r3, r2
  76 000c 06D0     		beq	.L3
  26:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		count++;
  77              		.loc 1 26 0
  78 000e 094B     		ldr	r3, .L4+4
  79 0010 1B78     		ldrb	r3, [r3]
  80 0012 DBB2     		uxtb	r3, r3
  81 0014 0133     		adds	r3, r3, #1
  82 0016 DAB2     		uxtb	r2, r3
  83 0018 064B     		ldr	r3, .L4+4
  84 001a 1A70     		strb	r2, [r3]
  85              	.L3:
  27:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		
  28:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	EXTI_PR |= 8; 			//kvittera avbrottet
  86              		.loc 1 28 0
  87 001c 044B     		ldr	r3, .L4
  88 001e 1A68     		ldr	r2, [r3]
  89 0020 034B     		ldr	r3, .L4
  90 0022 0821     		movs	r1, #8
  91 0024 0A43     		orrs	r2, r1
  92 0026 1A60     		str	r2, [r3]
  29:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** }
  93              		.loc 1 29 0
  94 0028 C046     		nop
  95 002a BD46     		mov	sp, r7
  96              		@ sp needed
  97 002c 80BD     		pop	{r7, pc}
  98              	.L5:
  99 002e C046     		.align	2
 100              	.L4:
 101 0030 143C0140 		.word	1073822740
 102 0034 00000000 		.word	count
 103              		.cfi_endproc
 104              	.LFE1:
 106              		.align	1
 107              		.global	init_flipflop
 108              		.syntax unified
 109              		.code	16
 110              		.thumb_func
 111              		.fpu softvfp
 113              	init_flipflop:
 114              	.LFB2:
  30:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** /*
  31:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** void out7seg (unsigned char c){
  32:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	switch(c){
  33:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0: GPIO_ODR_D_LOW = 0x3F; break;
  34:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 1: GPIO_ODR_D_LOW = 0x06; break;
  35:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 2: GPIO_ODR_D_LOW = 0x5B; break;
  36:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 3: GPIO_ODR_D_LOW = 0x4F; break;
  37:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 4: GPIO_ODR_D_LOW = 0x66; break;
  38:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 5: GPIO_ODR_D_LOW = 0x6D; break;
  39:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 6: GPIO_ODR_D_LOW = 0x7D; break;
  40:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 7: GPIO_ODR_D_LOW = 0x07; break;
  41:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 8: GPIO_ODR_D_LOW = 0x7F; break;
  42:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 9: GPIO_ODR_D_LOW = 0x6F; break;
  43:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0xA: GPIO_ODR_D_LOW = 0x77; break;
  44:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0xB: GPIO_ODR_D_LOW = 0x7C; break;
  45:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0xC: GPIO_ODR_D_LOW = 0x39; break;
  46:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0xD: GPIO_ODR_D_LOW = 0x3F; break;
  47:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0xE: GPIO_ODR_D_LOW = 0x79; break;
  48:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		case 0xF: GPIO_ODR_D_LOW = 0x71; break;
  49:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		
  50:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		default: GPIO_ODR_D_LOW = 0x00; break;
  51:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	}
  52:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** }*/
  53:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
  54:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** void init_flipflop(){
 115              		.loc 1 54 0
 116              		.cfi_startproc
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 1, uses_anonymous_args = 0
 119 0038 80B5     		push	{r7, lr}
 120              		.cfi_def_cfa_offset 8
 121              		.cfi_offset 7, -8
 122              		.cfi_offset 14, -4
 123 003a 00AF     		add	r7, sp, #0
 124              		.cfi_def_cfa_register 7
  55:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	GPIO_MODER_LOW_D = 0x5555;
 125              		.loc 1 55 0
 126 003c 1A4B     		ldr	r3, .L7
 127 003e 1B4A     		ldr	r2, .L7+4
 128 0040 1A80     		strh	r2, [r3]
  56:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	GPIO_MODER_LOW_E = 0x0000;
 129              		.loc 1 56 0
 130 0042 1B4B     		ldr	r3, .L7+8
 131 0044 0022     		movs	r2, #0
 132 0046 1A80     		strh	r2, [r3]
  57:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	
  58:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	SYSCFG_EXTICR1 &= ~0xF000; 						//PE3 = 4 till avbrottslina EXTI3 
 133              		.loc 1 58 0
 134 0048 1A4B     		ldr	r3, .L7+12
 135 004a 1A68     		ldr	r2, [r3]
 136 004c 194B     		ldr	r3, .L7+12
 137 004e 1A49     		ldr	r1, .L7+16
 138 0050 0A40     		ands	r2, r1
 139 0052 1A60     		str	r2, [r3]
  59:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	SYSCFG_EXTICR1 |= 0x4000;
 140              		.loc 1 59 0
 141 0054 174B     		ldr	r3, .L7+12
 142 0056 1A68     		ldr	r2, [r3]
 143 0058 164B     		ldr	r3, .L7+12
 144 005a 8021     		movs	r1, #128
 145 005c C901     		lsls	r1, r1, #7
 146 005e 0A43     		orrs	r2, r1
 147 0060 1A60     		str	r2, [r3]
  60:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	
  61:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	EXTI_IMR |= 8; 									//aktivera avbrott EXTI3 : motsvarande bit b3 i registern
 148              		.loc 1 61 0
 149 0062 164B     		ldr	r3, .L7+20
 150 0064 1A68     		ldr	r2, [r3]
 151 0066 154B     		ldr	r3, .L7+20
 152 0068 0821     		movs	r1, #8
 153 006a 0A43     		orrs	r2, r1
 154 006c 1A60     		str	r2, [r3]
  62:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** //	EXTI_FTSR &= ~8;								//maskera negativ flank
  63:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** //	EXTI_RTSR |= 8;									//aktivera positiv flank
  64:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	
  65:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	EXTI_RTSR &= ~8;								//maskera positiv flank
 155              		.loc 1 65 0
 156 006e 144B     		ldr	r3, .L7+24
 157 0070 1A68     		ldr	r2, [r3]
 158 0072 134B     		ldr	r3, .L7+24
 159 0074 0821     		movs	r1, #8
 160 0076 8A43     		bics	r2, r1
 161 0078 1A60     		str	r2, [r3]
  66:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	EXTI_FTSR |= 8;									//aktivera negativ flank
 162              		.loc 1 66 0
 163 007a 124B     		ldr	r3, .L7+28
 164 007c 1A68     		ldr	r2, [r3]
 165 007e 114B     		ldr	r3, .L7+28
 166 0080 0821     		movs	r1, #8
 167 0082 0A43     		orrs	r2, r1
 168 0084 1A60     		str	r2, [r3]
  67:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	
  68:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	SCB_VTOR = 0x2001C000; 							//relokera avbrottsvektorn
 169              		.loc 1 68 0
 170 0086 104B     		ldr	r3, .L7+32
 171 0088 104A     		ldr	r2, .L7+36
 172 008a 1A60     		str	r2, [r3]
  69:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	
  70:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	*((void (**) (void)) 0x2001C064) = irq_handler; //motsvarar avbrottsnummer 9, vektor offset 0x64
 173              		.loc 1 70 0
 174 008c 104B     		ldr	r3, .L7+40
 175 008e 114A     		ldr	r2, .L7+44
 176 0090 1A60     		str	r2, [r3]
  71:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	
  72:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	NVIC_ISER0 |= (1<<9); 							//bit b9 i set-enable register
 177              		.loc 1 72 0
 178 0092 114B     		ldr	r3, .L7+48
 179 0094 1A68     		ldr	r2, [r3]
 180 0096 104B     		ldr	r3, .L7+48
 181 0098 8021     		movs	r1, #128
 182 009a 8900     		lsls	r1, r1, #2
 183 009c 0A43     		orrs	r2, r1
 184 009e 1A60     		str	r2, [r3]
  73:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** }
 185              		.loc 1 73 0
 186 00a0 C046     		nop
 187 00a2 BD46     		mov	sp, r7
 188              		@ sp needed
 189 00a4 80BD     		pop	{r7, pc}
 190              	.L8:
 191 00a6 C046     		.align	2
 192              	.L7:
 193 00a8 000C0240 		.word	1073875968
 194 00ac 55550000 		.word	21845
 195 00b0 00100240 		.word	1073876992
 196 00b4 08380140 		.word	1073821704
 197 00b8 FF0FFFFF 		.word	-61441
 198 00bc 003C0140 		.word	1073822720
 199 00c0 083C0140 		.word	1073822728
 200 00c4 0C3C0140 		.word	1073822732
 201 00c8 08ED00E0 		.word	-536810232
 202 00cc 00C00120 		.word	536985600
 203 00d0 64C00120 		.word	536985700
 204 00d4 00000000 		.word	irq_handler
 205 00d8 00E100E0 		.word	-536813312
 206              		.cfi_endproc
 207              	.LFE2:
 209              		.align	1
 210              		.global	main
 211              		.syntax unified
 212              		.code	16
 213              		.thumb_func
 214              		.fpu softvfp
 216              	main:
 217              	.LFB3:
  74:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 
  75:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** void main(void)
  76:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** {
 218              		.loc 1 76 0
 219              		.cfi_startproc
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 1, uses_anonymous_args = 0
 222 00dc 80B5     		push	{r7, lr}
 223              		.cfi_def_cfa_offset 8
 224              		.cfi_offset 7, -8
 225              		.cfi_offset 14, -4
 226 00de 00AF     		add	r7, sp, #0
 227              		.cfi_def_cfa_register 7
  77:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	init_flipflop();
 228              		.loc 1 77 0
 229 00e0 FFF7FEFF 		bl	init_flipflop
 230              	.L10:
  78:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 	while(1){
  79:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** //		out7seg(count);
  80:C:/Users/Andre/Desktop/DAT390_labb_v4/flipflop_irq\startup.c **** 		GPIO_ODR_D_LOW = count;
 231              		.loc 1 80 0 discriminator 1
 232 00e4 024A     		ldr	r2, .L11
 233 00e6 034B     		ldr	r3, .L11+4
 234 00e8 1B78     		ldrb	r3, [r3]
 235 00ea DBB2     		uxtb	r3, r3
 236 00ec 1370     		strb	r3, [r2]
 237 00ee F9E7     		b	.L10
 238              	.L12:
 239              		.align	2
 240              	.L11:
 241 00f0 140C0240 		.word	1073875988
 242 00f4 00000000 		.word	count
 243              		.cfi_endproc
 244              	.LFE3:
 246              	.Letext0:
