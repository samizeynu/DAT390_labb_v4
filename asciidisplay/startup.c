/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
#define SIMULATOR
#define GPIO_BASE_D 0x40020C00
#define GPIO_MODER_D (*((volatile unsigned int*)(GPIO_BASE_D)))
#define GPIO_MODER_LOW_D (*((volatile unsigned short*)(GPIO_BASE_D)))
#define GPIO_MODER_HIGH_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x02)))

#define GPIO_OTYPER_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x04)))

#define GPIO_PUPDR_D (*((volatile unsigned int*)(GPIO_BASE_D + 0x0C)))

#define GPIO_IDR_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x10)))
#define GPIO_IDR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x10)))
#define GPIO_IDR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x11)))

#define GPIO_ODR_D (*((volatile unsigned short*)(GPIO_BASE_D + 0x14)))
#define GPIO_ODR_D_LOW (*((volatile unsigned char*)(GPIO_BASE_D + 0x14)))
#define GPIO_ODR_D_HIGH (*((volatile unsigned char*)(GPIO_BASE_D + 0x15)))
 

#define GPIO_BASE_E 0x40021000
#define GPIO_MODER_E (*((volatile unsigned int*)(GPIO_BASE_E)))
#define GPIO_MODER_LOW_E (*((volatile unsigned short*)(GPIO_BASE_E)))
#define GPIO_MODER_HIGH_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x02)))

#define GPIO_OTYPER_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x04)))

#define GPIO_PUPDR_E (*((volatile unsigned int*)(GPIO_BASE_E + 0x0C)))

#define GPIO_IDR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x10)))
#define GPIO_IDR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x10)))
#define GPIO_IDR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x11)))

#define GPIO_ODR_E (*((volatile unsigned short*)(GPIO_BASE_E + 0x14)))
#define GPIO_ODR_E_LOW (*((volatile unsigned char*)(GPIO_BASE_E + 0x14)))
#define GPIO_ODR_E_HIGH (*((volatile unsigned char*)(GPIO_BASE_E + 0x15)))

#define B_E			0x40
#define B_SELECT 	4
#define B_RW 		2
#define B_RS 		1

#define STK_BASE 0xE000E010
#define STK_CTRL (*((volatile unsigned int*)(STK_BASE)))
#define STK_LOAD (*((volatile unsigned int*)(STK_BASE + 0x04)))
#define STK_VAL (*((volatile unsigned int*)(STK_BASE + 0x08)))
void ascii_ctrl_bit_set(unsigned char);
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

void delay_milli(unsigned int ms){

#ifdef SIMULATOR
	ms = ms / 100;
	ms++;
#endif
	
	while( ms-- )
		delay_micro(1000);
}


void ascii_command (unsigned char command){
	while ((ascii_read_status() & (1<<7))){}
	delay_micro(8);
	ascii_write_command(command);
}

void ascii_init(){
	ascii_command(0x38); //Function set
	delay_micro(40); 
	//GPIO_ODR_D_HIGH = 0; 
	
	ascii_command(0xC); //Display control
	delay_micro(40); 
	
	ascii_command(1); // clear display
	delay_milli(2);
	
	ascii_command(0x6); //entry mode set
	delay_micro(40);
}

void ascii_write_char (unsigned char character){
	//while ((ascii_read_status() & (1<<7))){}
	
while ((ascii_read_status() & 0x80) == 0x80) {}
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

void init_app(){
#ifdef USBDM
	*((unsigned long *) 0x40023830) = 0x18; //starta clockor port E, D
	__asm volatile ( " LDR R0,=0x8000209\n BLX R0 \n //initiera PLL");
#endif

	GPIO_MODER_E = 0x55555555;
	


}


void main(void)
{
	init_app();
	char *s;
	char test1[] = "Alfanumerisk ";
	char test2[] = " Display - test ";
	
	
	ascii_init();
	ascii_gotoxy(1,1);
	s = test1;
	
	while(*s)
		ascii_write_char(*s++);
	
	ascii_gotoxy(1,2);
	s =  test2;
	
	while(*s)
		ascii_write_char(*s++);
	
	return 0;
}

