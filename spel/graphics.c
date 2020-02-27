/*
 * 	graphics.c
 *
 */

#include "startup.h"

void graphic_ctrl_bit_set(uint8_t x){
	GPIO_ODR_E_LOW |= (~B_SELECT & x); 			//Dubbelkolla sedan
}

void graphic_ctrl_bit_clear(uint8_t x){
	GPIO_ODR_E_LOW &= ~(B_SELECT | x);			//Dubbelkolla sedan
}

static void select_controller(uint8_t controller){
	switch(controller){
		case 0: graphic_ctrl_bit_clear(B_CS1 | B_CS2); break;
		case 0x08: graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2); break;
		case 0x10: graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1); break;
		case 0x08 | 0x10: graphic_ctrl_bit_set(B_CS1 | B_CS2); break;
	}	
}

static void graphic_wait_ready(void){
	graphic_ctrl_bit_clear(B_E);
	GPIO_MODER_E = 0x00005555;
	graphic_ctrl_bit_clear(B_RS);
	graphic_ctrl_bit_set(B_RW);
	delay_500ns();
	while(GPIO_IDR_E_HIGH & LCD_BUSY){
		graphic_ctrl_bit_set(B_E);
		delay_500ns();
		graphic_ctrl_bit_clear(B_E);
		delay_500ns();
	}
	graphic_ctrl_bit_set(B_E);
	GPIO_MODER_E = 0x55555555;
}

unsigned char graphic_read(unsigned char controller){
	unsigned char read_data;
	graphic_ctrl_bit_clear(B_E);
	GPIO_MODER_E = 0x00005555;
	graphic_ctrl_bit_set(B_RS | B_RW);
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	read_data = GPIO_IDR_E_HIGH;
	graphic_ctrl_bit_clear(B_E);
	GPIO_MODER_E = 0x55555555;
	if(controller == B_CS1){
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if (controller == B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	return read_data;
}

void graphic_write(unsigned char value, unsigned char controller){
	GPIO_ODR_E_HIGH = value;
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	graphic_ctrl_bit_clear(B_E);
	if(controller & B_CS1){
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if(controller & B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	GPIO_ODR_E_HIGH = 0;
	graphic_ctrl_bit_set(B_E);  		//ettställs som förberedelse för nästa arbetscykel
	select_controller(0);
}

void graphic_write_command(uint8_t command, uint8_t controller){
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RS | B_RW);
	graphic_write(command, controller);
}

void graphic_write_data(uint8_t data, uint8_t controller){
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_set(B_RS);
	graphic_ctrl_bit_clear(B_RW);
	graphic_write(data, controller);
}

unsigned char graphic_read_data(unsigned char controller){
	(void) graphic_read(controller);
	
	return graphic_read(controller);
}

void graphic_init(){
	GPIO_MODER_E = 0x55555555;
	
	graphic_ctrl_bit_set(B_E);
	delay_micro(10);
	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RESET | B_E);
	delay_milli(30);
	graphic_ctrl_bit_set(B_RESET);
	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
	graphic_write_command(LCD_ON, B_CS1 | B_CS2);
	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2);
	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);
	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);
	select_controller(0);
}

void graphic_clear_screen(){
	for(int page = 0; page <=7; page++){
		graphic_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
		graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
		for (int adress = 0; adress <= 63; adress++)
			graphic_write_data(0, B_CS1 | B_CS2);
	}
}

void pixel (unsigned int x, unsigned int y, unsigned int set){
	uint8_t mask, c, controller;
	int index;
	if (y < 1 || y > 64 || x < 1 || x > 128) 
		return;
	
	index = (y-1) / 8;
	
	switch((y-1) % 8){
		case 0: mask = 1; break;
		case 1: mask = 2; break;
		case 2: mask = 4; break;
		case 3: mask = 8; break;
		case 4: mask = 0x10; break;
		case 5: mask = 0x20; break;
		case 6: mask = 0x40; break;
		case 7: mask = 0x80; break;
	}
	
	if (!set)
		mask &= ~mask;
	if(x > 64){
		controller = B_CS2;
		x = x-65;
	}
	else{
		controller = B_CS1;
		x = x-1;
	}
	graphic_write_command(LCD_SET_ADD | x, controller);
	graphic_write_command(LCD_SET_PAGE | index, controller);
	c = graphic_read_data(controller);
	graphic_write_data(LCD_SET_ADD | x, controller);
	
	if(set)
		mask = mask | c;
	else
		mask = mask & c;
		
	graphic_write_data(mask, controller);
}

/*
//STRUCTS
typedef struct tPoint{
	unsigned char x;
	unsigned char y;
} POINT;

#define MAX_POINTS 20

typedef struct tGeometry{
	int numpoints;
	int sizex;
	int sizey;
	POINT px [MAX_POINTS];
} GEOMETRY, *PGEOMETRY;

GEOMETRY ball_geometry = {12,
 4, 4, 
 { {0,1}, {0,2}, {1,0}, {1,1}, {1,2}, {1,3}, {2,0}, {2,1}, {2,2}, {2,3}, {3,1}, {3,2} } };
 
typedef struct tObj{
	PGEOMETRY geo;
	int dirx,diry;
	int posx,posy;
	void(*draw)(struct tObj *);
	void(*clear)(struct tObj *);
	void(*move)(struct tObj *);
	void(*set_speed)(struct tObj *, int, int);
} OBJECT,*POBJECT;
 
void set_object_speed(POBJECT o, int speedx, int speedy);
void draw_object(POBJECT o);
void clear_object(POBJECT o);
void move_object(POBJECT o);

static OBJECT ball =
{
	&ball_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};
 
void set_object_speed(POBJECT o, int speedx, int speedy){
	o->dirx = speedx;
	o->diry = speedy;
}	
 
void draw_object(POBJECT o){
	for(int i= 0; i<= o->geo->numpoints; i++){
		pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y, 1);
	}
}

void clear_object(POBJECT o){
	for(int i= 0; i<= o->geo->numpoints; i++){
		pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y, 0);
	}
}
 
void move_object(POBJECT o){
	o->clear(o);
	if(o->posx < 1)
		o->set_speed(o, -o->dirx, o->diry);
	
	if(o->posx > 128)
		o->set_speed(o, -o->dirx, o->diry);
		
	if(o->posy < 1)
		o->set_speed(o, o->dirx, -o->diry);
		
	if(o->posy > 64)
		o->set_speed(o, o->dirx, -o->diry);
		
	o->draw(o);
}

*/


 
 

