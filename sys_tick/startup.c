/*
 * 	startup.c
 *
 */
 
#include "startup.h"
#include "delays.c"

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

__attribute__((naked)) unsigned int getPsrReg (void)
{
	__asm (
	" MRS	R0, APSR\n"
	" BX	LR\n"
	);
}

__attribute__((naked)) unsigned int getControlReg (void)
{
	__asm (
	" MRS	R0, CONTROL\n"
	" BX	LR\n"
	);
}

__attribute__((naked)) void setPsrReg (unsigned int apsr)
{
	__asm (
	" MSR	APSR, R0\n"
	" BX	LR\n"
	);
}

__attribute__((naked)) void setControlReg (unsigned int ctrlReg)
{
	__asm (
	" MSR	CONTROL, R0\n"
	" BX	LR\n"
	);
}

void setUnprivileged(void){
	setControlReg(getControlReg() | 2);
}

__attribute__((naked)) void enable_interrupt (void)
{
	__asm volatile(
	" CPSIE	I\n"
	" BX	LR\n"
	);
}

__attribute__((naked)) void disable_interrupt (void)
{
	__asm volatile(
	" CPSID	I\n"
	" BX	LR\n"
	);
}

#ifdef SIMULATOR
#define DELAY_COUNT	1000
#else
#define DELAY_COUNT	1000000
#endif


static int systick_flag;
static int delay_count;

void delay_1mikro(){
	systick_flag = 0;
	
	STK_CTRL = 0;
	STK_LOAD = ((168) - 1);
	STK_VAL = 0;
	STK_CTRL = 7;
}

void systick_irq_handler(){
	STK_CTRL = 0;
	delay_count--;
	if (delay_count > 0){
		delay_1mikro();
	}
	else
		systick_flag = 1;
}

void delay(unsigned int count){
	delay_count = count;
	if(delay_count == 0)
		return;
	delay_1mikro();
}

void init_handler(){
	GPIO_MODER_D = 0x55555555; /* initiera port D och undantagsvektor*/
	
	#define SCB_VTOR ((volatile unsigned int *) 0xE000ED08) //måste finnas in i en funktion?
		*SCB_VTOR = 0x2001C000;
	
	*((void (**) (void)) 0x2001C03C) = systick_irq_handler;
	systick_flag = 0;
}


void main(void)
{
	init_handler();
	GPIO_ODR_D_LOW = 0;
	delay(DELAY_COUNT);
	GPIO_ODR_D_LOW = 0xFF;
	while(1){
		if (systick_flag)
			break;
		/* Här placeras kod som kan utföras så länge */
		//for (int i =0; i < 1000; i++){};
		GPIO_ODR_D_HIGH ^= 0xFF;
		
	}
	
	/* Här finns koden som väntar på time-out */
	
	GPIO_ODR_D_LOW = 0;
}

