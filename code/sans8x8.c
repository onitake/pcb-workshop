/*
 * sans8x8
 * 2016 Gregor Riepl <onitake@gmail.com>
 *
 * This is free and unencumbered software released into the public domain.
 * 
 * Anyone is free to copy, modify, publish, use, compile, sell, or
 * distribute this software, either in source code form or as a compiled
 * binary, for any purpose, commercial or non-commercial, and by any
 * means.
 * 
 * In jurisdictions that recognize copyright laws, the author or authors
 * of this software dedicate any and all copyright interest in the
 * software to the public domain. We make this dedication for the benefit
 * of the public at large and to the detriment of our heirs and
 * successors. We intend this dedication to be an overt act of
 * relinquishment in perpetuity of all present and future rights to this
 * software under copyright law.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */
#include <stdint.h>
#include <avr/pgmspace.h>
const unsigned char FONT_SANS8X8[][8] PROGMEM = {
	{ 0x18, 0x3c, 0x7e, 0xcb, 0xf3, 0x7e, 0x3c, 0x18 },
	{ 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00 },
	{ 0xff, 0xff, 0x06, 0x1c, 0x38, 0x60, 0xff, 0xff },
	{ 0x30, 0x78, 0xdc, 0xce, 0xca, 0xdb, 0x71, 0x21 },
	{ 0x18, 0x3c, 0x66, 0xd3, 0xcb, 0x66, 0x3c, 0x18 },
	{ 0x46, 0x4e, 0xcb, 0xdb, 0xdb, 0xd3, 0x72, 0x62 },
	{ 0xc2, 0xe3, 0xf3, 0xd3, 0xdb, 0xcb, 0xce, 0xc6 },
	{ 0x00, 0x08, 0x0c, 0x06, 0x03, 0xff, 0xff, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x3c, 0x7e, 0x66, 0xc3, 0xc3, 0xc3, 0xc3, 0xc3 },
	{ 0x18, 0x3c, 0x66, 0xc3, 0xc3, 0x66, 0x3c, 0x18 },
};
const unsigned char FONTMAP_SANS8X8[] PROGMEM = {
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	8,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	4,	7,	6,	0,	0,	0,	3,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	9,	0,	0,	0,	0,	0,	1,	0,	0,	0,	0,	2,	10,
	0,	0,	0,	5,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,
};
