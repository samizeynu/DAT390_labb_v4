   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"main.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel/main.c"
   1:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** /*
   2:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c ****  * 	main.c
   3:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c ****  * 
   4:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c ****  */
   5:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c ****  //github test
   6:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** #include "game_startup.h"
   7:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //#include "plant.xbm"
   8:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //#include "backGround.xbm"
   9:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** #include "ship.xbm"
  10:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  11:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  12:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  13:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** void startup ( void )
  14:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  26              		.loc 1 14 1
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  15:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** __asm volatile(
  31              		.loc 1 15 1
  32              		.syntax divided
  33              	@ 15 "C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel/main.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  16:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  17:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	" MOV SP,R0\n"
  18:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	" BL main\n"				/* call main */
  19:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	"_exit: B .\n"				/* never return */
  20:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	) ;
  21:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** }
  40              		.loc 1 21 1
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.data
  48              		.align	2
  51              	ship_bits:
  52 0000 00010000 		.ascii	"\000\001\000\000\001\000\300\007\000`\014\000 \010\000"
  52      0100C007 
  52      00600C00 
  52      200800
  53 000f 20080030 		.ascii	" \010\0000\030\000\0300\000\010 \000\010 \000\014`\000"
  53      18001830 
  53      00082000 
  53      0820000C 
  53      6000
  54 0021 444400F4 		.ascii	"DD\000\364_\000\034p\000\010 \000\000\000\000\000\000"
  54      5F001C70 
  54      00082000 
  54      00000000 
  54      00
  55 0032 00000000 		.ascii	"\000\000\000\000\000\000\000\000\000\000"
  55      00000000 
  55      0000
  56              		.global	square_geometry
  57              		.align	2
  60              	square_geometry:
  61 003c 10000000 		.word	16
  62 0040 05000000 		.word	5
  63 0044 05000000 		.word	5
  64 0048 00       		.byte	0
  65 0049 00       		.byte	0
  66 004a 01       		.byte	1
  67 004b 00       		.byte	0
  68 004c 02       		.byte	2
  69 004d 00       		.byte	0
  70 004e 03       		.byte	3
  71 004f 00       		.byte	0
  72 0050 04       		.byte	4
  73 0051 00       		.byte	0
  74 0052 00       		.byte	0
  75 0053 01       		.byte	1
  76 0054 04       		.byte	4
  77 0055 01       		.byte	1
  78 0056 00       		.byte	0
  79 0057 02       		.byte	2
  80 0058 04       		.byte	4
  81 0059 02       		.byte	2
  82 005a 00       		.byte	0
  83 005b 03       		.byte	3
  84 005c 04       		.byte	4
  85 005d 03       		.byte	3
  86 005e 00       		.byte	0
  87 005f 04       		.byte	4
  88 0060 01       		.byte	1
  89 0061 04       		.byte	4
  90 0062 02       		.byte	2
  91 0063 04       		.byte	4
  92 0064 03       		.byte	3
  93 0065 04       		.byte	4
  94 0066 04       		.byte	4
  95 0067 04       		.byte	4
  96 0068 00000000 		.space	8
  96      00000000 
  97              		.global	ball_geometry
  98              		.align	2
 101              	ball_geometry:
 102 0070 0C000000 		.word	12
 103 0074 04000000 		.word	4
 104 0078 04000000 		.word	4
 105 007c 00       		.byte	0
 106 007d 01       		.byte	1
 107 007e 00       		.byte	0
 108 007f 02       		.byte	2
 109 0080 01       		.byte	1
 110 0081 00       		.byte	0
 111 0082 01       		.byte	1
 112 0083 01       		.byte	1
 113 0084 01       		.byte	1
 114 0085 02       		.byte	2
 115 0086 01       		.byte	1
 116 0087 03       		.byte	3
 117 0088 02       		.byte	2
 118 0089 00       		.byte	0
 119 008a 02       		.byte	2
 120 008b 01       		.byte	1
 121 008c 02       		.byte	2
 122 008d 02       		.byte	2
 123 008e 02       		.byte	2
 124 008f 03       		.byte	3
 125 0090 03       		.byte	3
 126 0091 01       		.byte	1
 127 0092 03       		.byte	3
 128 0093 02       		.byte	2
 129 0094 00000000 		.space	16
 129      00000000 
 129      00000000 
 129      00000000 
 130              		.global	padd_geometry
 131              		.align	2
 134              	padd_geometry:
 135 00a4 28000000 		.word	40
 136 00a8 14000000 		.word	20
 137 00ac 02000000 		.word	2
 138 00b0 00       		.byte	0
 139 00b1 00       		.byte	0
 140 00b2 01       		.byte	1
 141 00b3 00       		.byte	0
 142 00b4 02       		.byte	2
 143 00b5 00       		.byte	0
 144 00b6 03       		.byte	3
 145 00b7 00       		.byte	0
 146 00b8 04       		.byte	4
 147 00b9 00       		.byte	0
 148 00ba 05       		.byte	5
 149 00bb 00       		.byte	0
 150 00bc 06       		.byte	6
 151 00bd 00       		.byte	0
 152 00be 07       		.byte	7
 153 00bf 00       		.byte	0
 154 00c0 08       		.byte	8
 155 00c1 00       		.byte	0
 156 00c2 09       		.byte	9
 157 00c3 00       		.byte	0
 158 00c4 0A       		.byte	10
 159 00c5 00       		.byte	0
 160 00c6 0B       		.byte	11
 161 00c7 00       		.byte	0
 162 00c8 0C       		.byte	12
 163 00c9 00       		.byte	0
 164 00ca 0D       		.byte	13
 165 00cb 00       		.byte	0
 166 00cc 0E       		.byte	14
 167 00cd 00       		.byte	0
 168 00ce 0F       		.byte	15
 169 00cf 00       		.byte	0
 170 00d0 10       		.byte	16
 171 00d1 00       		.byte	0
 172 00d2 11       		.byte	17
 173 00d3 00       		.byte	0
 174 00d4 12       		.byte	18
 175 00d5 00       		.byte	0
 176 00d6 13       		.byte	19
 177 00d7 00       		.byte	0
 178              		.align	2
 181              	square_1:
 182 00d8 00000000 		.word	square_geometry
 183 00dc 00000000 		.word	0
 184 00e0 00000000 		.word	0
 185 00e4 01000000 		.word	1
 186 00e8 01000000 		.word	1
 187 00ec 00000000 		.word	draw_object
 188 00f0 00000000 		.word	clear_object
 189 00f4 00000000 		.word	move_object
 190 00f8 00000000 		.word	set_object_speed
 191              		.align	2
 194              	square_2:
 195 00fc 00000000 		.word	square_geometry
 196 0100 00000000 		.word	0
 197 0104 00000000 		.word	0
 198 0108 01000000 		.word	1
 199 010c 01000000 		.word	1
 200 0110 00000000 		.word	draw_object
 201 0114 00000000 		.word	clear_object
 202 0118 00000000 		.word	move_object
 203 011c 00000000 		.word	set_object_speed
 204              		.align	2
 207              	square_3:
 208 0120 00000000 		.word	square_geometry
 209 0124 00000000 		.word	0
 210 0128 00000000 		.word	0
 211 012c 01000000 		.word	1
 212 0130 01000000 		.word	1
 213 0134 00000000 		.word	draw_object
 214 0138 00000000 		.word	clear_object
 215 013c 00000000 		.word	move_object
 216 0140 00000000 		.word	set_object_speed
 217              		.align	2
 220              	square_4:
 221 0144 00000000 		.word	square_geometry
 222 0148 00000000 		.word	0
 223 014c 00000000 		.word	0
 224 0150 01000000 		.word	1
 225 0154 01000000 		.word	1
 226 0158 00000000 		.word	draw_object
 227 015c 00000000 		.word	clear_object
 228 0160 00000000 		.word	move_object
 229 0164 00000000 		.word	set_object_speed
 230              		.align	2
 233              	square_5:
 234 0168 00000000 		.word	square_geometry
 235 016c 00000000 		.word	0
 236 0170 00000000 		.word	0
 237 0174 01000000 		.word	1
 238 0178 01000000 		.word	1
 239 017c 00000000 		.word	draw_object
 240 0180 00000000 		.word	clear_object
 241 0184 00000000 		.word	move_object
 242 0188 00000000 		.word	set_object_speed
 243              		.align	2
 246              	square_6:
 247 018c 00000000 		.word	square_geometry
 248 0190 00000000 		.word	0
 249 0194 00000000 		.word	0
 250 0198 01000000 		.word	1
 251 019c 01000000 		.word	1
 252 01a0 00000000 		.word	draw_object
 253 01a4 00000000 		.word	clear_object
 254 01a8 00000000 		.word	move_object
 255 01ac 00000000 		.word	set_object_speed
 256              		.align	2
 259              	square_7:
 260 01b0 00000000 		.word	square_geometry
 261 01b4 00000000 		.word	0
 262 01b8 00000000 		.word	0
 263 01bc 01000000 		.word	1
 264 01c0 01000000 		.word	1
 265 01c4 00000000 		.word	draw_object
 266 01c8 00000000 		.word	clear_object
 267 01cc 00000000 		.word	move_object
 268 01d0 00000000 		.word	set_object_speed
 269              		.align	2
 272              	square_8:
 273 01d4 00000000 		.word	square_geometry
 274 01d8 00000000 		.word	0
 275 01dc 00000000 		.word	0
 276 01e0 01000000 		.word	1
 277 01e4 01000000 		.word	1
 278 01e8 00000000 		.word	draw_object
 279 01ec 00000000 		.word	clear_object
 280 01f0 00000000 		.word	move_object
 281 01f4 00000000 		.word	set_object_speed
 282              		.align	2
 285              	square_9:
 286 01f8 00000000 		.word	square_geometry
 287 01fc 00000000 		.word	0
 288 0200 00000000 		.word	0
 289 0204 01000000 		.word	1
 290 0208 01000000 		.word	1
 291 020c 00000000 		.word	draw_object
 292 0210 00000000 		.word	clear_object
 293 0214 00000000 		.word	move_object
 294 0218 00000000 		.word	set_object_speed
 295              		.align	2
 298              	ball:
 299 021c 00000000 		.word	ball_geometry
 300 0220 FDFFFFFF 		.word	-3
 301 0224 03000000 		.word	3
 302 0228 28000000 		.word	40
 303 022c 2D000000 		.word	45
 304 0230 00000000 		.word	draw_object
 305 0234 00000000 		.word	clear_object
 306 0238 00000000 		.word	move_object
 307 023c 00000000 		.word	set_object_speed
 308              		.align	2
 311              	padd:
 312 0240 00000000 		.word	padd_geometry
 313 0244 00000000 		.word	0
 314 0248 00000000 		.word	0
 315 024c 32000000 		.word	50
 316 0250 37000000 		.word	55
 317 0254 00000000 		.word	draw_object
 318 0258 00000000 		.word	clear_object
 319 025c 00000000 		.word	move_padd
 320 0260 00000000 		.word	set_object_speed
 321              		.section	.rodata
 322              		.align	2
 323              	.LC0:
 324 0000 57656C63 		.ascii	"Welcome \000"
 324      6F6D6520 
 324      00
 325 0009 000000   		.align	2
 326              	.LC2:
 327 000c 746F2074 		.ascii	"to the game!\000"
 327      68652067 
 327      616D6521 
 327      00
 328              		.text
 329              		.align	1
 330              		.global	ascii_message
 331              		.syntax unified
 332              		.code	16
 333              		.thumb_func
 334              		.fpu softvfp
 336              	ascii_message:
 337              	.LFB1:
  22:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  23:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** GEOMETRY square_geometry =
  24:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  25:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	16, 
  26:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	5, 
  27:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	5,
  28:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{
  29:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{0,0}, {1,0}, {2,0}, {3,0}, {4,0},
  30:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{0,1}, 						{4,1},
  31:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{0,2}, 						{4,2},
  32:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{0,3}, 						{4,3},
  33:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{0,4}, {1,4}, {2,4}, {3,4}, {4,4},
  34:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	}
  35:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
  36:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** GEOMETRY ball_geometry=
  37:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  38:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	12, //tot pix
  39:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	4,	//bredd
  40:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	4,	//längd
  41:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{
  42:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		{0,1},{0,2},
  43:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		{1,0},{1,1},{1,2},{1,3},
  44:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		{2,0},{2,1},{2,2},{2,3},
  45:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		{3,1},{3,2},
  46:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	}
  47:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
  48:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** GEOMETRY padd_geometry=
  49:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  50:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	40, 
  51:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	20,2,	
  52:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	{
  53:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		{0,0},{1,0},{2,0},{3,0},{4,0},{5,0},{6,0},{7,0},{8,0},{9,0},{10,0},{11,0},{12,0},{13,0},{14,0},{1
  54:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		{0,1},{1,1},{2,1},{3,1},{4,1},{5,1},{6,1},{7,1},{8,1},{9,1},{10,1},{11,1},{12,1},{13,1},{14,1},{1
  55:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	}
  56:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
  57:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  58:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_1 =
  59:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  60:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  61:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
  62:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
  63:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
  64:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
  65:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
  66:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  67:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
  68:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  69:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_2 =
  70:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  71:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  72:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
  73:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
  74:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
  75:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
  76:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
  77:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  78:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
  79:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  80:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_3 =
  81:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  82:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  83:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
  84:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
  85:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
  86:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
  87:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
  88:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
  89:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
  90:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
  91:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_4 =
  92:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
  93:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
  94:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
  95:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
  96:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
  97:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
  98:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
  99:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 100:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 101:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 102:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_5 =
 103:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 104:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 105:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
 106:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
 107:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 108:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 109:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
 110:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 111:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 112:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 113:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_6 =
 114:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 115:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 116:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
 117:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
 118:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 119:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 120:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
 121:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 122:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 123:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_7 =
 124:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 125:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 126:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
 127:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
 128:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 129:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 130:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
 131:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 132:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 133:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 134:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_8 =
 135:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 136:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 137:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
 138:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
 139:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 140:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 141:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
 142:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 143:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 144:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 145:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT square_9 =
 146:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 147:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&square_geometry,
 148:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
 149:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	1,1,
 150:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 151:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 152:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
 153:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 154:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 155:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT ball=
 156:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 157:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&ball_geometry,
 158:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	-3,3,
 159:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	40,45,
 160:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 161:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 162:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_object,
 163:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 164:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 165:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 166:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static OBJECT padd=
 167:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 168:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&padd_geometry,
 169:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0,0,
 170:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	50,55,
 171:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_object,
 172:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_object,
 173:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_padd,
 174:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_object_speed
 175:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 176:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 177:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** void ascii_message(){
 338              		.loc 1 177 21
 339              		.cfi_startproc
 340              		@ args = 0, pretend = 0, frame = 32
 341              		@ frame_needed = 1, uses_anonymous_args = 0
 342 0000 B0B5     		push	{r4, r5, r7, lr}
 343              		.cfi_def_cfa_offset 16
 344              		.cfi_offset 4, -16
 345              		.cfi_offset 5, -12
 346              		.cfi_offset 7, -8
 347              		.cfi_offset 14, -4
 348 0002 88B0     		sub	sp, sp, #32
 349              		.cfi_def_cfa_offset 48
 350 0004 00AF     		add	r7, sp, #0
 351              		.cfi_def_cfa_register 7
 178:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	char *s;
 179:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	char test1[] = "Welcome ";
 352              		.loc 1 179 7
 353 0006 1024     		movs	r4, #16
 354 0008 3B19     		adds	r3, r7, r4
 355 000a 1A4A     		ldr	r2, .L7
 356 000c 03CA     		ldmia	r2!, {r0, r1}
 357 000e 03C3     		stmia	r3!, {r0, r1}
 358 0010 1278     		ldrb	r2, [r2]
 359 0012 1A70     		strb	r2, [r3]
 180:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	char test2[] = "to the game!";
 360              		.loc 1 180 7
 361 0014 3B00     		movs	r3, r7
 362 0016 184A     		ldr	r2, .L7+4
 363 0018 23CA     		ldmia	r2!, {r0, r1, r5}
 364 001a 23C3     		stmia	r3!, {r0, r1, r5}
 365 001c 1278     		ldrb	r2, [r2]
 366 001e 1A70     		strb	r2, [r3]
 181:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	ascii_gotoxy(1,1);
 367              		.loc 1 181 2
 368 0020 0121     		movs	r1, #1
 369 0022 0120     		movs	r0, #1
 370 0024 FFF7FEFF 		bl	ascii_gotoxy
 182:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	s = test1;
 371              		.loc 1 182 4
 372 0028 3B19     		adds	r3, r7, r4
 373 002a FB61     		str	r3, [r7, #28]
 183:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while (*s){
 374              		.loc 1 183 8
 375 002c 06E0     		b	.L3
 376              	.L4:
 184:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		ascii_write_char(*s++); // ascii_write_char
 377              		.loc 1 184 22
 378 002e FB69     		ldr	r3, [r7, #28]
 379 0030 5A1C     		adds	r2, r3, #1
 380 0032 FA61     		str	r2, [r7, #28]
 381              		.loc 1 184 3
 382 0034 1B78     		ldrb	r3, [r3]
 383 0036 1800     		movs	r0, r3
 384 0038 FFF7FEFF 		bl	ascii_write_char
 385              	.L3:
 183:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while (*s){
 386              		.loc 1 183 9
 387 003c FB69     		ldr	r3, [r7, #28]
 388 003e 1B78     		ldrb	r3, [r3]
 183:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while (*s){
 389              		.loc 1 183 8
 390 0040 002B     		cmp	r3, #0
 391 0042 F4D1     		bne	.L4
 185:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	}
 186:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	ascii_gotoxy(1,2);
 392              		.loc 1 186 2
 393 0044 0221     		movs	r1, #2
 394 0046 0120     		movs	r0, #1
 395 0048 FFF7FEFF 		bl	ascii_gotoxy
 187:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	s = test2;
 396              		.loc 1 187 4
 397 004c 3B00     		movs	r3, r7
 398 004e FB61     		str	r3, [r7, #28]
 188:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while (*s){
 399              		.loc 1 188 8
 400 0050 06E0     		b	.L5
 401              	.L6:
 189:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		ascii_write_char(*s++); // ascii_write_char
 402              		.loc 1 189 22
 403 0052 FB69     		ldr	r3, [r7, #28]
 404 0054 5A1C     		adds	r2, r3, #1
 405 0056 FA61     		str	r2, [r7, #28]
 406              		.loc 1 189 3
 407 0058 1B78     		ldrb	r3, [r3]
 408 005a 1800     		movs	r0, r3
 409 005c FFF7FEFF 		bl	ascii_write_char
 410              	.L5:
 188:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while (*s){
 411              		.loc 1 188 9
 412 0060 FB69     		ldr	r3, [r7, #28]
 413 0062 1B78     		ldrb	r3, [r3]
 188:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while (*s){
 414              		.loc 1 188 8
 415 0064 002B     		cmp	r3, #0
 416 0066 F4D1     		bne	.L6
 190:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	}
 191:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** }
 417              		.loc 1 191 1
 418 0068 C046     		nop
 419 006a C046     		nop
 420 006c BD46     		mov	sp, r7
 421 006e 08B0     		add	sp, sp, #32
 422              		@ sp needed
 423 0070 B0BD     		pop	{r4, r5, r7, pc}
 424              	.L8:
 425 0072 C046     		.align	2
 426              	.L7:
 427 0074 00000000 		.word	.LC0
 428 0078 0C000000 		.word	.LC2
 429              		.cfi_endproc
 430              	.LFE1:
 432              		.align	1
 433              		.global	init_spel
 434              		.syntax unified
 435              		.code	16
 436              		.thumb_func
 437              		.fpu softvfp
 439              	init_spel:
 440              	.LFB2:
 192:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 193:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** void init_spel(){
 441              		.loc 1 193 17
 442              		.cfi_startproc
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 1, uses_anonymous_args = 0
 445 007c 80B5     		push	{r7, lr}
 446              		.cfi_def_cfa_offset 8
 447              		.cfi_offset 7, -8
 448              		.cfi_offset 14, -4
 449 007e 00AF     		add	r7, sp, #0
 450              		.cfi_def_cfa_register 7
 194:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	GPIO_MODER_E = 0x55555555;
 451              		.loc 1 194 2
 452 0080 034B     		ldr	r3, .L10
 453              		.loc 1 194 15
 454 0082 044A     		ldr	r2, .L10+4
 455 0084 1A60     		str	r2, [r3]
 195:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	ascii_init();
 456              		.loc 1 195 2
 457 0086 FFF7FEFF 		bl	ascii_init
 196:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	//ascii_message();
 197:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** }
 458              		.loc 1 197 1
 459 008a C046     		nop
 460 008c BD46     		mov	sp, r7
 461              		@ sp needed
 462 008e 80BD     		pop	{r7, pc}
 463              	.L11:
 464              		.align	2
 465              	.L10:
 466 0090 00100240 		.word	1073876992
 467 0094 55555555 		.word	1431655765
 468              		.cfi_endproc
 469              	.LFE2:
 471              		.align	1
 472              		.global	main
 473              		.syntax unified
 474              		.code	16
 475              		.thumb_func
 476              		.fpu softvfp
 478              	main:
 479              	.LFB3:
 198:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 199:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** /*
 200:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static sprite ship =
 201:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 202:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	&ship_geo,
 203:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0, 0,
 204:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0, 0,
 205:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	ship_width,
 206:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	ship_height,
 207:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	ship_bits,
 208:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_sprite,
 209:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_sprite,
 210:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_sprite,
 211:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_sprite_speed
 212:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 213:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 214:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 215:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 216:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** static sprite plant =
 217:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 218:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	0, 0,
 219:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	50, 50,
 220:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	plant_width,
 221:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	plant_height,
 222:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	plant_bits,
 223:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	draw_sprite,
 224:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	clear_sprite,
 225:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	move_sprite,
 226:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	set_sprite_speed
 227:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** };
 228:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** */
 229:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 
 230:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** int main(int argc, char **argv)
 231:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** {
 480              		.loc 1 231 1
 481              		.cfi_startproc
 482              		@ args = 0, pretend = 0, frame = 104
 483              		@ frame_needed = 1, uses_anonymous_args = 0
 484 0098 90B5     		push	{r4, r7, lr}
 485              		.cfi_def_cfa_offset 12
 486              		.cfi_offset 4, -12
 487              		.cfi_offset 7, -8
 488              		.cfi_offset 14, -4
 489 009a 9BB0     		sub	sp, sp, #108
 490              		.cfi_def_cfa_offset 120
 491 009c 00AF     		add	r7, sp, #0
 492              		.cfi_def_cfa_register 7
 493 009e 7860     		str	r0, [r7, #4]
 494 00a0 3960     		str	r1, [r7]
 232:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	init_spel();
 495              		.loc 1 232 2
 496 00a2 FFF7FEFF 		bl	init_spel
 233:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT ppadd=&padd;
 497              		.loc 1 233 10
 498 00a6 4D4B     		ldr	r3, .L18
 499 00a8 BB65     		str	r3, [r7, #88]
 234:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT pball = &ball;
 500              		.loc 1 234 10
 501 00aa 4D4B     		ldr	r3, .L18+4
 502 00ac 7B65     		str	r3, [r7, #84]
 235:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_1 = &square_1;
 503              		.loc 1 235 10
 504 00ae 4D4B     		ldr	r3, .L18+8
 505 00b0 3B65     		str	r3, [r7, #80]
 236:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_2 = &square_2;
 506              		.loc 1 236 10
 507 00b2 4D4B     		ldr	r3, .L18+12
 508 00b4 FB64     		str	r3, [r7, #76]
 237:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_3 = &square_3;
 509              		.loc 1 237 10
 510 00b6 4D4B     		ldr	r3, .L18+16
 511 00b8 BB64     		str	r3, [r7, #72]
 238:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_4 = &square_4;
 512              		.loc 1 238 10
 513 00ba 4D4B     		ldr	r3, .L18+20
 514 00bc 7B64     		str	r3, [r7, #68]
 239:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_5 = &square_5;
 515              		.loc 1 239 10
 516 00be 4D4B     		ldr	r3, .L18+24
 517 00c0 3B64     		str	r3, [r7, #64]
 240:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_6 = &square_6;
 518              		.loc 1 240 10
 519 00c2 4D4B     		ldr	r3, .L18+28
 520 00c4 FB63     		str	r3, [r7, #60]
 241:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_7 = &square_7;
 521              		.loc 1 241 10
 522 00c6 4D4B     		ldr	r3, .L18+32
 523 00c8 BB63     		str	r3, [r7, #56]
 242:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_8 = &square_8;
 524              		.loc 1 242 10
 525 00ca 4D4B     		ldr	r3, .L18+36
 526 00cc 7B63     		str	r3, [r7, #52]
 243:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT sq_9 = &square_9;
 527              		.loc 1 243 10
 528 00ce 4D4B     		ldr	r3, .L18+40
 529 00d0 3B63     		str	r3, [r7, #48]
 244:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	POBJECT arr[] = {sq_1, sq_2, sq_3, sq_4, sq_5, sq_6, sq_7, sq_8, sq_9};
 530              		.loc 1 244 10
 531 00d2 0821     		movs	r1, #8
 532 00d4 7B18     		adds	r3, r7, r1
 533 00d6 3A6D     		ldr	r2, [r7, #80]
 534 00d8 1A60     		str	r2, [r3]
 535 00da 7B18     		adds	r3, r7, r1
 536 00dc FA6C     		ldr	r2, [r7, #76]
 537 00de 5A60     		str	r2, [r3, #4]
 538 00e0 7B18     		adds	r3, r7, r1
 539 00e2 BA6C     		ldr	r2, [r7, #72]
 540 00e4 9A60     		str	r2, [r3, #8]
 541 00e6 7B18     		adds	r3, r7, r1
 542 00e8 7A6C     		ldr	r2, [r7, #68]
 543 00ea DA60     		str	r2, [r3, #12]
 544 00ec 7B18     		adds	r3, r7, r1
 545 00ee 3A6C     		ldr	r2, [r7, #64]
 546 00f0 1A61     		str	r2, [r3, #16]
 547 00f2 7B18     		adds	r3, r7, r1
 548 00f4 FA6B     		ldr	r2, [r7, #60]
 549 00f6 5A61     		str	r2, [r3, #20]
 550 00f8 7B18     		adds	r3, r7, r1
 551 00fa BA6B     		ldr	r2, [r7, #56]
 552 00fc 9A61     		str	r2, [r3, #24]
 553 00fe 7B18     		adds	r3, r7, r1
 554 0100 7A6B     		ldr	r2, [r7, #52]
 555 0102 DA61     		str	r2, [r3, #28]
 556 0104 7B18     		adds	r3, r7, r1
 557 0106 3A6B     		ldr	r2, [r7, #48]
 558 0108 1A62     		str	r2, [r3, #32]
 245:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	
 246:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	graphic_init();
 559              		.loc 1 246 2
 560 010a FFF7FEFF 		bl	graphic_init
 247:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** #ifndef	SIMULATOR
 248:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	graphic_clear_screen();
 249:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** #endif
 250:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	int test = (sizeof(arr) / sizeof(arr[0]));
 561              		.loc 1 250 6
 562 010e 0923     		movs	r3, #9
 563 0110 FB62     		str	r3, [r7, #44]
 251:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	int x = 0;
 564              		.loc 1 251 6
 565 0112 0023     		movs	r3, #0
 566 0114 7B66     		str	r3, [r7, #100]
 252:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	int i = 0;
 567              		.loc 1 252 6
 568 0116 0023     		movs	r3, #0
 569 0118 3B66     		str	r3, [r7, #96]
 253:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	for (; i <= (test-1); i++, x += 10){
 570              		.loc 1 253 2
 571 011a 2DE0     		b	.L13
 572              	.L14:
 254:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 255:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 					
 256:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 				arr[i]->set_speed(arr[i], x, 0);
 573              		.loc 1 256 8 discriminator 2
 574 011c 0821     		movs	r1, #8
 575 011e 7B18     		adds	r3, r7, r1
 576 0120 3A6E     		ldr	r2, [r7, #96]
 577 0122 9200     		lsls	r2, r2, #2
 578 0124 D358     		ldr	r3, [r2, r3]
 579              		.loc 1 256 11 discriminator 2
 580 0126 1B6A     		ldr	r3, [r3, #32]
 581              		.loc 1 256 5 discriminator 2
 582 0128 0C00     		movs	r4, r1
 583 012a 7A18     		adds	r2, r7, r1
 584 012c 396E     		ldr	r1, [r7, #96]
 585 012e 8900     		lsls	r1, r1, #2
 586 0130 8858     		ldr	r0, [r1, r2]
 587 0132 796E     		ldr	r1, [r7, #100]
 588 0134 0022     		movs	r2, #0
 589 0136 9847     		blx	r3
 590              	.LVL0:
 257:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 				arr[i]->move(arr[i]);
 591              		.loc 1 257 8 discriminator 2
 592 0138 2100     		movs	r1, r4
 593 013a 7B18     		adds	r3, r7, r1
 594 013c 3A6E     		ldr	r2, [r7, #96]
 595 013e 9200     		lsls	r2, r2, #2
 596 0140 D358     		ldr	r3, [r2, r3]
 597              		.loc 1 257 11 discriminator 2
 598 0142 DB69     		ldr	r3, [r3, #28]
 599              		.loc 1 257 5 discriminator 2
 600 0144 0C00     		movs	r4, r1
 601 0146 7A18     		adds	r2, r7, r1
 602 0148 396E     		ldr	r1, [r7, #96]
 603 014a 8900     		lsls	r1, r1, #2
 604 014c 8A58     		ldr	r2, [r1, r2]
 605 014e 1000     		movs	r0, r2
 606 0150 9847     		blx	r3
 607              	.LVL1:
 258:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 				arr[i]->set_speed(arr[i], 0, 0);
 608              		.loc 1 258 8 discriminator 2
 609 0152 2100     		movs	r1, r4
 610 0154 7B18     		adds	r3, r7, r1
 611 0156 3A6E     		ldr	r2, [r7, #96]
 612 0158 9200     		lsls	r2, r2, #2
 613 015a D358     		ldr	r3, [r2, r3]
 614              		.loc 1 258 11 discriminator 2
 615 015c 1B6A     		ldr	r3, [r3, #32]
 616              		.loc 1 258 5 discriminator 2
 617 015e 7A18     		adds	r2, r7, r1
 618 0160 396E     		ldr	r1, [r7, #96]
 619 0162 8900     		lsls	r1, r1, #2
 620 0164 8858     		ldr	r0, [r1, r2]
 621 0166 0022     		movs	r2, #0
 622 0168 0021     		movs	r1, #0
 623 016a 9847     		blx	r3
 624              	.LVL2:
 253:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 625              		.loc 1 253 25 discriminator 2
 626 016c 3B6E     		ldr	r3, [r7, #96]
 627 016e 0133     		adds	r3, r3, #1
 628 0170 3B66     		str	r3, [r7, #96]
 253:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 629              		.loc 1 253 31 discriminator 2
 630 0172 7B6E     		ldr	r3, [r7, #100]
 631 0174 0A33     		adds	r3, r3, #10
 632 0176 7B66     		str	r3, [r7, #100]
 633              	.L13:
 253:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 634              		.loc 1 253 2 discriminator 1
 635 0178 FA6A     		ldr	r2, [r7, #44]
 636 017a 3B6E     		ldr	r3, [r7, #96]
 637 017c 9A42     		cmp	r2, r3
 638 017e CDDC     		bgt	.L14
 639              	.L17:
 259:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //				arr[i]->draw(arr[i]);
 260:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	}
 261:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //	graphic_draw_screen();
 262:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 	while(1){
 263:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		clear_backBuffer();
 640              		.loc 1 263 3
 641 0180 FFF7FEFF 		bl	clear_backBuffer
 264:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		pball->move(pball);
 642              		.loc 1 264 8
 643 0184 7B6D     		ldr	r3, [r7, #84]
 644 0186 DB69     		ldr	r3, [r3, #28]
 645              		.loc 1 264 3
 646 0188 7A6D     		ldr	r2, [r7, #84]
 647 018a 1000     		movs	r0, r2
 648 018c 9847     		blx	r3
 649              	.LVL3:
 265:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //		delay_milli(20);
 266:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		ppadd->move(ppadd);
 650              		.loc 1 266 8
 651 018e BB6D     		ldr	r3, [r7, #88]
 652 0190 DB69     		ldr	r3, [r3, #28]
 653              		.loc 1 266 3
 654 0192 BA6D     		ldr	r2, [r7, #88]
 655 0194 1000     		movs	r0, r2
 656 0196 9847     		blx	r3
 657              	.LVL4:
 267:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		padd_studs(pball,ppadd);
 658              		.loc 1 267 3
 659 0198 BA6D     		ldr	r2, [r7, #88]
 660 019a 7B6D     		ldr	r3, [r7, #84]
 661 019c 1100     		movs	r1, r2
 662 019e 1800     		movs	r0, r3
 663 01a0 FFF7FEFF 		bl	padd_studs
 664              	.LBB2:
 268:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //		p->move(p);
 269:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		for (int f = 0; f <= (test-1); f++){
 665              		.loc 1 269 12
 666 01a4 0023     		movs	r3, #0
 667 01a6 FB65     		str	r3, [r7, #92]
 668              		.loc 1 269 3
 669 01a8 0EE0     		b	.L15
 670              	.L16:
 270:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 				arr[f]->draw(arr[f]);
 671              		.loc 1 270 8 discriminator 3
 672 01aa 0821     		movs	r1, #8
 673 01ac 7B18     		adds	r3, r7, r1
 674 01ae FA6D     		ldr	r2, [r7, #92]
 675 01b0 9200     		lsls	r2, r2, #2
 676 01b2 D358     		ldr	r3, [r2, r3]
 677              		.loc 1 270 11 discriminator 3
 678 01b4 5B69     		ldr	r3, [r3, #20]
 679              		.loc 1 270 5 discriminator 3
 680 01b6 7A18     		adds	r2, r7, r1
 681 01b8 F96D     		ldr	r1, [r7, #92]
 682 01ba 8900     		lsls	r1, r1, #2
 683 01bc 8A58     		ldr	r2, [r1, r2]
 684 01be 1000     		movs	r0, r2
 685 01c0 9847     		blx	r3
 686              	.LVL5:
 269:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 				arr[f]->draw(arr[f]);
 687              		.loc 1 269 35 discriminator 3
 688 01c2 FB6D     		ldr	r3, [r7, #92]
 689 01c4 0133     		adds	r3, r3, #1
 690 01c6 FB65     		str	r3, [r7, #92]
 691              	.L15:
 269:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 				arr[f]->draw(arr[f]);
 692              		.loc 1 269 3 discriminator 1
 693 01c8 FA6A     		ldr	r2, [r7, #44]
 694 01ca FB6D     		ldr	r3, [r7, #92]
 695 01cc 9A42     		cmp	r2, r3
 696 01ce ECDC     		bgt	.L16
 697              	.LBE2:
 271:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //				if(x > 64)
 272:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //					x = x-65;
 273:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		}
 274:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		
 275:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //		sq_1->draw(sq_1);
 276:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //		sq_2->draw(sq_2);
 277:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //		sq_3->draw(sq_3);
 278:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** //		Pship->move_sp(Pship);
 279:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		graphic_draw_screen();
 698              		.loc 1 279 3
 699 01d0 FFF7FEFF 		bl	graphic_draw_screen
 280:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		//delay_milli(40); //25 fps
 281:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		graphic_clear_screen();
 700              		.loc 1 281 3
 701 01d4 FFF7FEFF 		bl	graphic_clear_screen
 263:C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel\main.c **** 		pball->move(pball);
 702              		.loc 1 263 3
 703 01d8 D2E7     		b	.L17
 704              	.L19:
 705 01da C046     		.align	2
 706              	.L18:
 707 01dc 40020000 		.word	padd
 708 01e0 1C020000 		.word	ball
 709 01e4 D8000000 		.word	square_1
 710 01e8 FC000000 		.word	square_2
 711 01ec 20010000 		.word	square_3
 712 01f0 44010000 		.word	square_4
 713 01f4 68010000 		.word	square_5
 714 01f8 8C010000 		.word	square_6
 715 01fc B0010000 		.word	square_7
 716 0200 D4010000 		.word	square_8
 717 0204 F8010000 		.word	square_9
 718              		.cfi_endproc
 719              	.LFE3:
 721              	.Letext0:
 722              		.file 2 "C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel/game_startup.h"
 723              		.file 3 "C:/Users/samze/OneDrive/Dokument/GitHub/DAT390_labb_v4/spel/ship.xbm"
