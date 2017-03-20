#include "hardware.h"
#include "timers.h"
#include "interrupts.h"
#include <stdio.h>

#define TIMA 	0xFF05
#define TMA		0xFF06
#define TMC		0xFF07

#define CLOCKSPEED 4194304

int dividerCounter = 0;
int timerCounter = CLOCKSPEED / 4096;

void timerStep(int cycles) {
	dividerRegister(cycles);
	if ((cpu[TMC] >> 2) & 1) {
		timerCounter -= cycles;
		if (timerCounter <= 0) {
			setFrequency();
			if (cpu[TIMA] == 255) {
				writeMemory(TIMA, cpu[TMA]);
				if (interrupt.enable && INTERRUPTS_TIMER) {interrupt.flags |= INTERRUPTS_TIMER;}
			} else {
				cpu[TIMA]++;
			}
		}
	}
}

BYTE getFrequency() {
	return cpu[TMC] & 0x3;
}

void setFrequency() {
	BYTE f = getFrequency();
	int frequency;
	switch (f) {
		case 0: frequency = 4096; break;
		case 1: frequency = 262144; break;
		case 2: frequency = 65536; break;
		case 3: frequency = 16382; break;
	}
	timerCounter = CLOCKSPEED / frequency;
}

void dividerRegister(int cycles) {
	dividerCounter += cycles;
	if (dividerCounter >= 255){
		dividerCounter = 0;
		cpu[0xFF04]++;
	}
}