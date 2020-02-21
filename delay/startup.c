/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

//#define SIMULATOR
#define GPIO_BASE_D 0x40020C00
#define GPIO_MODER_D (*((volatile unsigned int*)(GPIO_BASE_D)))
#define GPIO_MODER_LOW_D (*((unsigned short*)(GPIO_BASE_D)))
#define GPIO_MODER_HIGH_D (*((unsigned short*)(GPIO_BASE_D + 0x02)))

#define GPIO_OTYPER_D (*((unsigned short*)(GPIO_BASE_D + 0x04)))

#define GPIO_PUPDR_D (*((unsigned int*)(GPIO_BASE_D + 0x0C)))

#define GPIO_IDR_D (*((unsigned short*)(GPIO_BASE_D + 0x10)))
#define GPIO_IDR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x10)))
#define GPIO_IDR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x11)))

#define GPIO_ODR_D (*((unsigned short*)(GPIO_BASE_D + 0x14)))
#define GPIO_ODR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x14)))
#define GPIO_ODR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x15)))
 

#define GPIO_BASE_E 0x40021000
#define GPIO_MODER_E (*((volatile unsigned int*)(GPIO_BASE_E)))
#define GPIO_MODER_LOW_E (*((volatile unsigned short*)(GPIO_BASE_E)))
#define GPIO_MODER_HIGH_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x02)))

#define GPIO_OTYPER_E (*((unsigned short*)(GPIO_BASE_E + 0x04)))
#define GPIO_OSPEEDR_E (*((volatile unsigned int*)(GPIO_BASE_E + 0x08)))
#define GPIO_PUPDR_E (*((unsigned int*)(GPIO_BASE_E + 0x0C)))

#define GPIO_IDR_E (*((unsigned short*)(GPIO_BASE_E + 0x10)))
#define GPIO_IDR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x10)))
#define GPIO_IDR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x11)))

#define GPIO_ODR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x14)))
#define GPIO_ODR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x14)))
#define GPIO_ODR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x15)))


#define STK_BASE 0xE000E010
#define STK_CTRL (*((volatile unsigned int*)(STK_BASE)))
#define STK_LOAD (*((volatile unsigned int*)(STK_BASE + 0x04)))
#define STK_VAL (*((volatile unsigned int*)(STK_BASE + 0x08)))
#define STK_CALIB (*((volatile unsigned int*)(STK_BASE + 0x0C)))

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

void delay_250ns(void){
	STK_CTRL = 0;
	STK_LOAD = ((168/4) - 1);
	STK_VAL = 0;
	STK_CTRL = 5;
	
	while((STK_CTRL & 0x10000) == 0){};
	STK_CTRL = 0;
}

void delay_micro(unsigned int us){
	while(us--){
		delay_250ns();
		delay_250ns();
		delay_250ns(); 
		delay_250ns();
	}
}

void delay_milli(unsigned int ms){

#ifdef SIMULATOR
	ms = ms / 100;
	ms++;
#endif
	
	while( ms-- )
		delay_micro(1000);
}

void app_init(void)
{
#ifdef USBDM
	*((unsigned long *) 0x40023830) = 0x18; //starta clockor port E, D
	__asm volatile ( " LDR R0,=0x8000209\n BLX R0 \n //initiera PLL");
#endif

	GPIO_MODER_E &= 0;
	GPIO_MODER_E |= 0x00005555; //pin 1 - 8 bargraph
	GPIO_OSPEEDR_E = 0xFFFFFFFF;
	
	//GPIO_OTYPER_E |= 0x0000; //push-pull output type
	
}


void main(void)
{
	app_init();
	
	while(1){
		GPIO_ODR_E_LOW = 0;
		delay_milli(500);
		GPIO_ODR_E_LOW = 0xFF;
		delay_milli(500);
	}
}

