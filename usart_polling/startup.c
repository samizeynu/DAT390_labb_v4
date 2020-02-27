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

void _inituart(){
	USART1->brr = 0x2D9; // baudrate 115200 : USARTDIV = 84 Mhz / (baudrate*16) : konvertera heltalet och decimalet
	USART1->cr2 = 0;
	
	USART1->cr1 = BIT_UE | BIT_TE | BIT_RE;
}

char _tstchar(){ 
	if((USART1->sr & BIT_RXNE) == BIT_RXNE)
		return (char)USART1->dr;
	
	return 0;
}

void _outchar(char c){
	while(USART1->sr & BIT_TXE){
		USART1->dr = (unsigned short) c;
	}
}

void main(void)
{
	char c;
	_inituart();
	while(1){
		c = _tstchar();
		if(c)
			_outchar(c);
	}
}

