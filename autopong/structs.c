#include "startup.h"


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
		o->set_speed(o, o->dirx*(-1), o->diry);
	
	if(o->posx > 128)
		o->set_speed(o, -o->dirx, o->diry);
		
	if(o->posy < 1)
		o->set_speed(o, o->dirx, -o->diry);
		
	if(o->posy > 64)
		o->set_speed(o, o->dirx, -o->diry);
	
	o->posx = o->posx + o->dirx;
	o->posy = o->posy + o->diry;
	o->draw(o);
}
