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

void irq_handler(){
	unsigned char x;
	if(EXTI_PR & 0x8){
		EXTI_PR |= 8; 							//kvittera avbrottet
			x = GPIO_IDR_E_LOW;
			if(x & (1<<0)){
				GPIO_ODR_E_LOW |= (1<<4); 		//kvittera irq0
				count++;
				GPIO_ODR_E_LOW &= ~(1<<4);
			}
			if(x & 2){
				GPIO_ODR_E_LOW |= (1<<5); 		//kvittera irq1
				count = 0;
				GPIO_ODR_E_LOW &= ~(1<<5);
			}
			if(x & 4){
				GPIO_ODR_E_LOW |= (1<<6); 		//kvittera irq2
				GPIO_ODR_D_LOW ^= 0xFF;
				GPIO_ODR_E_LOW &= ~(1<<6);
			}
}}

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
	
	SYSCFG_EXTICR1 &= ~0xF000; 						//PE3 = 4 till avbrottslina EXTI3 
	SYSCFG_EXTICR1 |= 0x4000;
	
	EXTI_IMR |= 8; 									//aktivera avbrott EXTI3 : motsvarande bit b3 i registern
//	EXTI_FTSR &= ~8;								//maskera negativ flank
//	EXTI_RTSR |= 8;									//aktivera positiv flank
	
	EXTI_RTSR &= ~8;								//maskera positiv flank
	EXTI_FTSR |= 8;									//aktivera negativ flank
	
	SCB_VTOR = 0x2001C000; 							//relokera avbrottsvektorn
	
	*((void (**) (void)) 0x2001C064) = irq_handler; //motsvarar avbrottsnummer 9, vektor offset 0x64
	
	NVIC_ISER0 |= (1<<9); 							//bit b9 i set-enable register
}

void main(void)
{
	init_flipflop();
	while(1){
		out7seg(count);
//		GPIO_ODR_D_HIGH = count;
	}
}

