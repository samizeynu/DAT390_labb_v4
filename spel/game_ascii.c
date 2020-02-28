/*
 * 	ascii.c
 *
 */
 
 #include "game_startup.h"


void ascii_write_controller (unsigned char byte){                   //#define B_E		0x40
	ascii_ctrl_bit_set(B_E);
	GPIO_ODR_E_HIGH = byte;															//#define B_SELECT 	4
	delay_250ns();															//#define B_RW 		2
	ascii_ctrl_bit_clear(B_E);																//#define B_RS 		1
}

unsigned char ascii_read_controller (void){
	ascii_ctrl_bit_set(B_E);															//#define B_SELECT 	4
	delay_250ns();
	delay_250ns();
	unsigned char byte = GPIO_IDR_E_HIGH;													//#define B_RW 		2
	ascii_ctrl_bit_clear(B_E);
	return byte;
}

//Adresserar displayen och ettställer de bitar som är 1 i x
void ascii_ctrl_bit_set(unsigned char x){
	GPIO_ODR_E_LOW |= (B_SELECT | x); 		
}

//Adresserar displayen och nollställer de bitar som är 1 i x
void ascii_ctrl_bit_clear(unsigned char x){
	GPIO_ODR_E_LOW &= (B_SELECT | ~x);
}

void ascii_write_command(unsigned char command){
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}

void ascii_write_data(unsigned char data){
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}

unsigned char ascii_read_status(void){
	GPIO_MODER_E &= 0x0000FFFF;
	unsigned char read_status;
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	read_status = ascii_read_controller();
	GPIO_MODER_E |= 0x55550000;
    return read_status;
}

unsigned char ascii_read_data(void){
	GPIO_MODER_E &= 0x0000FFFF;
	unsigned char read_data;
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	read_data = ascii_read_controller();
	GPIO_MODER_E |= 0x55550000;
    return read_data;
}


void ascii_command (unsigned char command){
	while ((ascii_read_status() & (1<<7))){}
	delay_micro(8);
	ascii_write_command(command);
}

void ascii_init(){
	ascii_command(0x38); //Function set
	delay_micro(40); 
	
	ascii_command(0xC); //Display control
	delay_micro(40); 
	
	ascii_command(1); // clear display
	delay_milli(2);
	
	ascii_command(0x6); //entry mode set
	delay_micro(40);
}

void ascii_write_char (unsigned char character){
	//while ((ascii_read_status() & (1<<7))){};
	
	while ((ascii_read_status() & 0x80) == 0x80) {};
		delay_micro(8);
		ascii_write_data(character);
		delay_micro(40);
}

void ascii_gotoxy(int x,int y){ //x = rad, y = column
	unsigned char adress = 0;
	adress = x-1;
	
	if(y==2)
		adress = adress + 0x40;
		
	ascii_write_command(0x80 | adress);
}