/* 
 * cosin.c
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

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "map.h"

// Global state
struct {
	// The framebuffer
	// in column-major order
	uint8_t fb[8];
	// Current column
	uint8_t col;
	// Letter index
	uint8_t scene;
	// Horizontal offset
	uint8_t offset;
} global __attribute__((section(".noinit")));

const char MESSAGE[] PROGMEM = "COSIN 2016 ";
extern const unsigned char FONT_SANS8X8[][8] PROGMEM;
extern const unsigned char FONTMAP_SANS8X8[] PROGMEM;

// Initalize ports and timers
void init() {
	global.col = 0;
	memset(global.fb, 0, 8*8);
	global.scene = 0;
	global.offset = 0;

	PORTB &= ~0xff;
	DDRB |= 0xff;
	PORTD &= ~0x3f;
	DDRD |= 0x3f;
	PORTA &= ~0x03;
	DDRA |= 0x03;
	
	OCR1A = F_CPU / 1024 / 8;
	TIMSK |= _BV(TOIE1);
	// Fast PWM, TOP in OCR1A
	TCCR1A = _BV(WGM11) | _BV(WGM10);
	// CLKio / 1024
	TCCR1B = _BV(WGM13) | _BV(WGM12) | _BV(CS12) | _BV(CS10);
}

// Write a letter to the framebuffer
void wrletter(char letter, int8_t xoffset) {
	uint8_t xstart, xlen;
	if (xoffset < 0) {
		if (xoffset >= -8) {
			xstart = -xoffset;
			xlen = 8 + xoffset;
		} else {
			xstart = 0;
			xlen = 0;
		}
		xoffset = 0;
	} else if (xoffset >= 0) {
		if (xoffset < 8) {
			xlen = 8 - xoffset;
		} else {
			xlen = 0;
		}
		xstart = 0;
	}
	if (xlen > 0) {
		uint8_t index = pgm_read_byte(&FONTMAP_SANS8X8[(uint8_t) letter]);
		memcpy_P(global.fb + xoffset, FONT_SANS8X8[index] + xstart, xlen);
	}
}

// Refresh the display (one column at a time)
void refresh() {
	// Port map
	// COL1: PB1
	// COL2: PB3
	// COL3: PB5
	// COL4: PB7
	// COL5: PD5
	// COL6: PD3
	// COL7: PA0
	// COL8: PD1
	// ROW1: PB0
	// ROW2: PB2
	// ROW3: PB4
	// ROW4: PB6
	// ROW5: PD4
	// ROW6: PD2
	// ROW7: PA1
	// ROW8: PD0
	
	// Wiring
	// COL is driven by MOSFETs, while ROW is driven directly by MCU
	// Switch COL first, then present ROW bit pattern
	
	uint8_t bitmap = global.fb[global.col];
	uint8_t pa = 0, pb = 0, pd = 0;

	// switch is no good here - it will make avr-gcc allocate and
	// initialize 18 bytes of .data space for the lookup table - WTF!
	uint8_t col = global.col;
	if (col == 0) {
		pb |= _BV(1);
	} else if (col == 1) {
		pb |= _BV(3);
	} else if (col == 2) {
		pb |= _BV(5);
	} else if (col == 3) {
		pb |= _BV(7);
	} else if (col == 4) {
		pd |= _BV(5);
	} else if (col == 5) {
		pd |= _BV(3);
	} else if (col == 6) {
		pa |= _BV(0);
	} else if (col == 7) {
		pd |= _BV(1);
	}
	
	if (bitmap & _BV(0)) {
		pb |= _BV(0);
	}
	if (bitmap & _BV(1)) {
		pb |= _BV(2);
	}
	if (bitmap & _BV(2)) {
		pb |= _BV(4);
	}
	if (bitmap & _BV(3)) {
		pb |= _BV(6);
	}
	if (bitmap & _BV(4)) {
		pd |= _BV(4);
	}
	if (bitmap & _BV(5)) {
		pd |= _BV(2);
	}
	if (bitmap & _BV(6)) {
		pa |= _BV(1);
	}
	if (bitmap & _BV(7)) {
		pd |= _BV(0);
	}

	PORTA = pa;
	PORTB = pb;
	PORTD = pd;
	
	global.col = (global.col + 1) & 0x7;
}

// Update the display
ISR(TIMER1_OVF_vect) {
#if 0
	uint8_t col = global.scene >> 3;
	uint8_t row = global.scene & 0x07;
	uint8_t i;
	for (i = 0; i < 8; i++) {
		if (row == i) {
			global.fb[i] = 1 << col;
		} else {
			global.fb[i] = 0x00;
		}
	}
	global.scene = (global.scene + 1) & 0x3f;
#else
	wrletter(pgm_read_byte(&MESSAGE[global.scene]), -global.offset);
	uint8_t next;
	if (global.scene < sizeof(MESSAGE) - 2) {
		next = global.scene + 1;
	} else {
		next = 0;
	}
	wrletter(pgm_read_byte(&MESSAGE[next]), 8 - global.offset);
	if (global.offset >= 7) {
		global.scene = next;
		global.offset = 0;
	} else {
		global.offset++;
	}
#endif
}

int main() {
	init();
	
#if 1
	wrletter(pgm_read_byte(&MESSAGE[0]), 0);
	
	sei();
	
	while (true) {
		refresh();
	}
#else

	// COL1: PB7
	// COL2: PB5
	// COL3: PB3
	// COL4: PB1
	// COL5: PD5
	// COL6: PD3
	// COL7: PA0
	// COL8: PD1
	// ROW1: PB6
	// ROW2: PB4
	// ROW3: PB2
	// ROW4: PB0
	// ROW5: PD4
	// ROW6: PD2
	// ROW7: PA1
	// ROW8: PD0
	
	PORTB |= 0xff;
	PORTD |= 0x3f;
	PORTA |= 0x03;
	while (1);

	uint8_t pb = 0;
	uint8_t pd = 0;
	uint8_t pa = 0;
	
	while (1) {
		PORTB = pb;
		PORTD = pd;
		PORTA = pa;
		
		if (pb == 0xff) {
			if (pd == 0x3f) {
				if (pa == 0x3) {
					pa = 0;
				} else {
					pa++;
				}
			}
			pd++;
		}
		pb++;

		_delay_ms(10);
	}
	
#endif

	return 0;
}
