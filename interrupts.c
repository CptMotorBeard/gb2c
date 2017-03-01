#include "interrupts.h"
#include "hardware.h"

void interruptStep() {
	if(interrupt.master && interrupt.enable && interrupt.flags) {
		BYTE fire = interrupt.enable & interrupt.flags;
		
		if(fire & INTERRUPTS_VBLANK) {
			interrupt.flags &= ~INTERRUPTS_VBLANK;
			vblank();
		}
		
		if(fire & INTERRUPTS_LCDSTAT) {
			interrupt.flags &= ~INTERRUPTS_LCDSTAT;
			lcdStat();
		}
		
		if(fire & INTERRUPTS_TIMER) {
			interrupt.flags &= ~INTERRUPTS_TIMER;
			timer();
		}
		
		if(fire & INTERRUPTS_SERIAL) {
			interrupt.flags &= ~INTERRUPTS_SERIAL;
			serial();
		}
		
		if(fire & INTERRUPTS_JOYPAD) {
			interrupt.flags &= ~INTERRUPTS_JOYPAD;
			joypad();
		}
	}
}

void vblank() {
	interrupt.master = 0;
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	PC.pair = 0x40;
	drawScreen();
	clock += 12;
}

void lcdStat() {
	interrupt.master = 0;
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	PC.pair = 0x48;
	
	clock += 12;
}

void timer() {
	interrupt.master = 0;
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	PC.pair = 0x50;
	
	clock += 12;
}

void serial() {
	interrupt.master = 0;
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	PC.pair = 0x58;
	
	clock += 12;
}

void joypad() {
	interrupt.master = 0;
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	PC.pair = 0x60;
	
	clock += 12;
}
