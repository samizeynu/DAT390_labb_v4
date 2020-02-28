/*
 * 	delay.c
 *
 */

#include "game_startup.h"

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

void delay_500ns(void){
	delay_250ns();
	delay_250ns();
}