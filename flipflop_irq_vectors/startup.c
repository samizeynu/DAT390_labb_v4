/*
 * 	startup.c
 *
 */
 
 #include "startup.h"
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );



void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

static volatile unsigned char count;

void irq_handler_0(){
	unsigned char x = (EXTI_PR & 0x1);
	if(EXTI_PR & 0x1){
		EXTI_PR |= 0x1; 							//kvittera avbrottet
		
	GPIO_ODR_E_LOW |= (1<<4); 		//kvittera irq0
	count++;
	GPIO_ODR_E_LOW &= ~(1<<4);
	}
}

void irq_handler_1(){
	unsigned char x = (EXTI_PR & 0x2);
	if(EXTI_PR & EXTI1_BPOS){
		EXTI_PR |= EXTI1_BPOS; 							//kvittera avbrottet
				
	GPIO_ODR_E_LOW |= (1<<5); 		//kvittera irq1
	count = 0;
	GPIO_ODR_E_LOW &= ~(1<<5);
	}
}

void irq_handler_2(){
	unsigned char x = (EXTI_PR & 0x4);
	if(EXTI_PR & EXTI2_BPOS){
		EXTI_PR |= EXTI2_BPOS; 							//kvittera avbrottet
		
	GPIO_ODR_E_LOW |= (1<<6); 		//kvittera irq2
	
	GPIO_ODR_E_LOW &= ~(1<<6);
	
	GPIO_ODR_D_LOW ^= 0xFF;
			}
}

void out7seg (unsigned char c){
	switch(c){
		case 0: GPIO_ODR_D_HIGH = 0x3F; break;
		case 1: GPIO_ODR_D_HIGH = 0x06; break;
		case 2: GPIO_ODR_D_HIGH = 0x5B; break;
		case 3: GPIO_ODR_D_HIGH = 0x4F; break;
		case 4: GPIO_ODR_D_HIGH = 0x66; break;
		case 5: GPIO_ODR_D_HIGH = 0x6D; break;
		case 6: GPIO_ODR_D_HIGH = 0x7D; break;
		case 7: GPIO_ODR_D_HIGH = 0x07; break;
		case 8: GPIO_ODR_D_HIGH = 0x7F; break;
		case 9: GPIO_ODR_D_HIGH = 0x6F; break;
//		case 0xA: GPIO_ODR_D_LOW = 0x77; break;
//		case 0xB: GPIO_ODR_D_LOW = 0x7C; break;
//		case 0xC: GPIO_ODR_D_LOW = 0x39; break;
//		case 0xD: GPIO_ODR_D_LOW = 0x3F; break;
//		case 0xE: GPIO_ODR_D_LOW = 0x79; break;
//		case 0xF: GPIO_ODR_D_LOW = 0x71; break;
		
		default: GPIO_ODR_D_HIGH = 0x00; break;
	}
}

void init_flipflop(){
	GPIO_MODER_D = 0x55555555;
	GPIO_MODER_LOW_E = 0x5500;
	
	/* SET REGISTERS TO 0 */
	SYSCFG_EXTICR1 &= ~(0xFFFF); 
	
	/* PE = 4 till avbrottslina EXTI0 &  EXTI2 & EXTI1 */
	SYSCFG_EXTICR1 |= 0x0444;
	
	EXTI_IMR |= (EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS); 			//aktivera avbrott EXTI0 &  EXTI2 & EXTI1 : motsvarande bits
	
//	EXTI_RTSR &= ~(EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//maskera positiv flank
//	EXTI_FTSR |= (EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//aktivera negativ flank
	
	EXTI_RTSR |= (EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//aktivera positiv flank
	EXTI_FTSR &= ~(EXTI0_BPOS | EXTI2_BPOS | EXTI1_BPOS);			//maskera negativ flank
	
	SCB_VTOR = 0x2001C000; 											//relokera avbrottsvektorn
	
	EXTI1_IRQVEC = irq_handler_1;					//motsvarar avbrottsnummer 7, vektor offset 0x5C
	EXTI2_IRQVEC = irq_handler_2;					//motsvarar avbrottsnummer 8, vektor offset 0x60
	EXTI0_IRQVEC = irq_handler_0;				//motsvarar avbrottsnummer 9, vektor offset 0x58
	
	NVIC_ISER0 |= (NVIC_EXTI1_BPOS | NVIC_EXTI2_BPOS | NVIC_EXTI0_BPOS); 							//bit b9 | b8 | b7 i set-enable register
}

void main(void)
{
	init_flipflop();
	while(1){
		out7seg(count);
//		GPIO_ODR_D_HIGH = count;
	}
}

