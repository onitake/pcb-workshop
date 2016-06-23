/* 
 * font.h
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

#ifndef _FONT_H
#define _FONT_H

#include <avr/pgmspace.h>
#include <stdint.h>

// Character to font map
extern const uint8_t FONTMAP[] PROGMEM;

// Font
// Bit maps in col-major order
extern const uint8_t FONT[][8] PROGMEM;

#endif //_FONT_H
