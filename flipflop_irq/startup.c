/*
 * 	startup.c
 *
 */
 
 #include "game_startup.h"
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
	if(EXTI_PR & 0x8)
		count++;
		
	EXTI_PR |= 8; 			//kvittera avbrottet
}
/*
void out7seg (unsigned char c){
	switch(c){
		case 0: GPIO_ODR_D_LOW = 0x3F; break;
		case 1: GPIO_ODR_D_LOW = 0x06; break;
		case 2: GPIO_ODR_D_LOW = 0x5B; break;
		case 3: GPIO_ODR_D_LOW = 0x4F; break;
		case 4: GPIO_ODR_D_LOW = 0x66; break;
		case 5: GPIO_ODR_D_LOW = 0x6D; break;
		case 6: GPIO_ODR_D_LOW = 0x7D; break;
		case 7: GPIO_ODR_D_LOW = 0x07; break;
		case 8: GPIO_ODR_D_LOW = 0x7F; break;
		case 9: GPIO_ODR_D_LOW = 0x6F; break;
		case 0xA: GPIO_ODR_D_LOW = 0x77; break;
		case 0xB: GPIO_ODR_D_LOW = 0x7C; break;
		case 0xC: GPIO_ODR_D_LOW = 0x39; break;
		case 0xD: GPIO_ODR_D_LOW = 0x3F; break;
		case 0xE: GPIO_ODR_D_LOW = 0x79; break;
		case 0xF: GPIO_ODR_D_LOW = 0x71; break;
		
		default: GPIO_ODR_D_LOW = 0x00; break;
	}
}*/

void init_flipflop(){
	GPIO_MODER_LOW_D = 0x5555;						//GPIO D b0 - b7 utgångar	
	GPIO_MODER_LOW_E = 0x0000;						//GPIO E b0 - b7 ingångar	
	
	SYSCFG_EXTICR1 &= ~0xF000; 						//nollställer EXTI3
	SYSCFG_EXTICR1 |= 0x4000;						//PE3 = 4 till avbrottslina EXTI3 
	
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
//		out7seg(count);
		GPIO_ODR_D_LOW = count;
	}
}

