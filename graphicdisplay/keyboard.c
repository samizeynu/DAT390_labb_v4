/*
 * 	keyboard.c
 *
 */

#include "startup.h"

void keyb_init(void){
	
#ifdef USBDM
	*((unsigned long *) 0x40023830) = 0x18; //starta clockor port E, D
	//__asm volatile ( " LDR R0,=0x8000209\n BLX R0 \n //initiera PLL");
#endif

	GPIO_MODER_D &= 0;
	GPIO_MODER_D |= 0x55005555; //pin 1 - 8 display, pin 9 - 15 keyboard ( b0 - b3 input, b4 - b7 output) 
	
	GPIO_OTYPER_D |= 0x0000; //push-pull output type
	
	GPIO_PUPDR_D |= 0x00AA0000; //pull-down input
}

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
}

void keybActivate(unsigned int row){
	switch(row){
		case 1: GPIO_ODR_D_HIGH = 0x10; break;//eller GPIO_ODR_D_HIGH = (1<<(row+3));
		case 2: GPIO_ODR_D_HIGH = 0x20; break;
		case 3: GPIO_ODR_D_HIGH = 0x40; break;
		case 4: GPIO_ODR_D_HIGH = 0x80; break;
		case 0: GPIO_ODR_D_HIGH = 0x00; break;
	}
}

int keybGetCol(void){
	unsigned char c = GPIO_IDR_D_HIGH;
	if(c & 0x8) return 4;
	if(c & 0x4) return 3;
	if(c & 0x2) return 2;
	if(c & 0x1) return 1;
	return 0;
}

unsigned char keyb(void){
	int row, column;
	unsigned char key[] = {1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
	for(row = 1; row <=4; row++){
		keybActivate(row);
		if( (column = keybGetCol()) )
		{
			keybActivate(0); //To clear the register??
			return key[4*(row-1) + (column-1)];
		}
	}
	keybActivate(0);
	return 0xFF;
}
