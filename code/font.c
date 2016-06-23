/* 
 * font.c
 * 
 * CoSin 2016 LED Matrix Tag
 * Controller firmware
 * 
 * Copyright (c) 2016 Gregor Riepl <onitake@gmail.com>
 * 
 * This documentation describes Open Hardware and is licensed under the
 * CERN OHL v. 1.1.
 * You may redistribute and modify this documentation under the terms of the
 * CERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed
 * WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF
 * MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A
 * PARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable
 * conditions
 */

#include "font.h"

const uint8_t FONTMAP[] PROGMEM = {
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
	/* */1, /*!*/0, /*"*/0, /*#*/0, /*$*/0, /*%*/0, /*&*/0, /*'*/0, /*(*/0, /*)*/0, /***/0, /*+*/0, /*,*/0, /*-*/0, /*.*/0, /*/*/0,
	/*0*/0, /*1*/0, /*2*/0, /*3*/0, /*4*/0, /*5*/0, /*6*/0, /*7*/0, /*8*/0, /*9*/0, /*:*/0, /*;*/0, /*<*/0, /*=*/0, /*>*/0, /*?*/0, 
	/*@*/0, /*A*/0, /*B*/0, /*C*/2, /*D*/0, /*E*/0, /*F*/0, /*G*/0, /*H*/0, /*I*/5, /*J*/0, /*K*/0, /*L*/0, /*M*/0, /*N*/6, /*O*/3,
	/*P*/0, /*Q*/0, /*R*/0, /*S*/4, /*T*/0, /*U*/0, /*V*/0, /*W*/0, /*X*/0, /*Y*/0, /*Z*/0, /*[*/0, /*\*/0, /*]*/0, /*^*/0, /*_*/0, 
	/*`*/0, /*a*/0, /*b*/0, /*c*/0, /*d*/0, /*e*/0, /*f*/0, /*g*/0, /*h*/0, /*i*/0, /*j*/0, /*k*/0, /*l*/0, /*m*/0, /*n*/0, /*o*/0,
	/*p*/0, /*q*/0, /*r*/0, /*s*/0, /*t*/0, /*u*/0, /*v*/0, /*w*/0, /*x*/0, /*y*/0, /*z*/0, /*{*/0, /*|*/0, /*}*/0, /*~*/0, /*DEL*/0, 
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
	/*NBSP*/1, /*¡*/0, /*¢*/0, /*£*/0, /*€*/0, /*¥*/0, /*Š*/0, /*§*/0, /*š*/0, /*©*/0, /*ª*/0, /*«*/0, /*¬*/0, /*­ */3, /*®*/0, /*¯*/0,
	/*°*/0, /*±*/0, /*²*/0, /*³*/0, /*Ž*/0, /*µ*/0, /*¶*/0, /*·*/0, /*ž*/0, /*¹*/0, /*º*/0, /*»*/0, /*Œ*/0, /*œ*/0, /*Ÿ*/0, /*¿*/0,
	/*À*/0, /*Á*/0, /*Â*/0, /*Ã*/0, /*Ä*/0, /*Å*/0, /*Æ*/0, /*Ç*/0, /*È*/0, /*É*/0, /*Ê*/0, /*Ë*/0, /*Ì*/0, /*Í*/0, /*Î*/0, /*Ï*/0,
	/*Ð*/0, /*Ñ*/0, /*Ò*/0, /*Ó*/0, /*Ô*/0, /*Õ*/0, /*Ö*/0, /*×*/0, /*Ø*/0, /*Ù*/0, /*Ú*/0, /*Û*/0, /*Ü*/0, /*Ý*/0, /*Þ*/0, /*ß*/0,
	/*à*/0, /*á*/0, /*â*/0, /*ã*/0, /*ä*/0, /*å*/0, /*æ*/0, /*ç*/0, /*è*/0, /*é*/0, /*ê*/0, /*ë*/0, /*ì*/0, /*í*/0, /*î*/0, /*ï*/0,
	/*ð*/0, /*ñ*/0, /*ò*/0, /*ó*/0, /*ô*/0, /*õ*/0, /*ö*/0, /*÷*/0, /*ø*/0, /*ù*/0, /*ú*/0, /*û*/0, /*ü*/0, /*ý*/0, /*þ*/0, /*ÿ*/0,
};

/* The bitmaps are laid out like this:
 * Byte 1 2 3 4 5 6 7 8
 * Bit1 ................
 *    2 ......====......
 *    3 ....==....==....
 *    4 ....==....==....
 *    5 ....========....
 *    6 ....==....==....
 *    7 ....==....==....
 *    8 ................
 * Data   00  12  7c  00
 *      00  7c  12  00
 */
const uint8_t FONT[][8] PROGMEM = {
	// ...==...
	// ..====..
	// .==..==.
	// ====.===
	// ===.====
	// .==.===.
	// ..====..
	// ...==...
	{ 0x18, 0x3c, 0x7e, 0xcb, 0xf3, 0x7e, 0x3c, 0x18 },
	// ........
	// ........
	// ........
	// ........
	// ........
	// ........
	// ........
	// ........
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
	// ...=====
	// .=======
	// ===.....
	// ==......
	// ==......
	// ===.....
	// .=======
	// ...=====
	{ 0x3c, 0x7e, 0x66, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3 },
	// ...==...
	// ..====..
	// .==..==.
	// ==....==
	// ==....==
	// .==..==.
	// ..====..
	// ...==...
	{ 0x18, 0x3c, 0x66, 0xc3, 0xc3, 0x66, 0x3c, 0x18 },
	// ..====..
	// ========
	// ==.....=
	// .====...
	// ...====.
	// =.....==
	// ========
	// ..====..
	{ 0x66, 0xce, 0xcb, 0xdb, 0xdb, 0xd3, 0x72, 0x66 },
	// ...==...
	// ...==...
	// ...==...
	// ...==...
	// ...==...
	// ...==...
	// ...==...
	// ...==...
	{ 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00 },
	// ==....==
	// ===...==
	// ====..==
	// ==.==.==
	// ==.==.==
	// ==..====
	// ==...===
	// ==....==
	{ 0xff, 0xff, 0x06, 0x1c, 0x38, 0x60, 0xff, 0xff },
};