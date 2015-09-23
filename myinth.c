#include "clib.h"
#include <stdint.h>

extern int KeyBuffer;
static int number_of_ticks = 0;

void reset_handler() {
	exit(0);
}

void tick_handler() {

	number_of_ticks++;
	printNewLine();
	printString("TICK ");
	printInt(number_of_ticks);
	printNewLine();
	
	signalEOI();
}

void keyboard_handler() {
	
	long int i = 0;
	int j = 0;
	char c = KeyBuffer;
	printNewLine();
	if (c == 'd') {
		printString("DELAY KEY PRESSED");
		for (i = 0; i < 5000; i++) {
			//do nothing
			j = i;
		}
		printNewLine();
		printString("DELAY COMPLETE");
	} else {
		printString("KEYPRESS (");
		printChar(c);
		printString(") IGNORED");
	}
	printNewLine();
	signalEOI();
}
