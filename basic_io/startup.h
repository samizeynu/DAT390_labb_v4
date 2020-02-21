void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

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
 



