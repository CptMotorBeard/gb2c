#include <stdio.h>
#include "hardware.h"
#include "interrupts.h"

// Initial values at bootup for the hardware
void initialize() {
	PC.pair = 0x100;
	SP.pair = 0xFFFE;
	registerAF.pair = 0x01B0;
	registerBC.pair = 0x0013;
	registerDE.pair = 0x00D8;
	registerHL.pair = 0x014D;
	cpu[0xFF00] = 0xCF;
	cpu[0xFF05] = 0x00;
	cpu[0xFF06] = 0x00;
	cpu[0xFF07] = 0x00;
	cpu[0xFF10] = 0x80;
	cpu[0xFF11] = 0xBF;
	cpu[0xFF12] = 0xF3;
	cpu[0xFF14] = 0xBF;
	cpu[0xFF16] = 0x3F;
	cpu[0xFF17] = 0x00;
	cpu[0xFF19] = 0xBF;
	cpu[0xFF1A] = 0x7F;
	cpu[0xFF1B] = 0xFF;
	cpu[0xFF1C] = 0x9F;
	cpu[0xFF1E] = 0xBF;
	cpu[0xFF20] = 0xFF;
	cpu[0xFF21] = 0x00;
	cpu[0xFF22] = 0x00;
	cpu[0xFF23] = 0xBF;
	cpu[0xFF24] = 0x77;
	cpu[0xFF25] = 0xF3;
	cpu[0xFF26] = 0xF1;
	cpu[0xFF40] = 0x91;
	cpu[0xFF42] = 0x00;
	cpu[0xFF43] = 0x00;
	cpu[0xFF45] = 0x00;
	cpu[0xFF47] = 0xFC;
	cpu[0xFF48] = 0xFF;
	cpu[0xFF49] = 0xFF;
	cpu[0xFF4A] = 0x00;
	cpu[0xFF4B] = 0x00;
	cpu[0xFFFF] = 0x00;
	
	interrupt.master = 1;
	interrupt.enable = 0;
	interrupt.flags = 0;
	interrupt.timer = 0xFF;
	
	stopped = 0;
	
	keys.keys1.a = 1;
	keys.keys1.b = 1;
	keys.keys1.start = 1;
	keys.keys1.select = 1;
	
	keys.keys2.up = 1;
	keys.keys2.down = 1;
	keys.keys2.left = 1;
	keys.keys2.right = 1;
}

void writeMemory(WORD address, BYTE data) {
	// 0x0000 - 0x8000 is read only
	if (address < 0x8000) {} // don't write anything
	// 0xE000 - 0xFE00 also writes to RAM
	else if ((address >= 0xE000) && (address < 0xFE00)) {
		// Write to memory
		cpu[address] = data;
		// duplicate to regular RAM
		writeMemory(address-0x2000, data);
	}
	// More read only areas
	else if ((address >= 0xFEA0) && (address < 0xFEFF)) {} // don't write anything
	// Scanline resets if written to
	else if (address == 0xFF44) {cpu[address] = 0;}
	// Interrupts
	else if (address == 0xFF0F) {cpu[address] = data; interrupt.flags = data;}
	else if (address == 0xFFFF) {cpu[address] = data; interrupt.enable = data;}
	// No other special areas, just write the data
	else { cpu[address] = data; }
}

void printRegisters() {
	printf("\r");
	printf("Register AF : %04X", registerAF.pair);
	printf("  Register BC : %04X", registerBC.pair);
	printf("  Register DE : %04X", registerDE.pair);
	printf("  Register HL : %04X", registerHL.pair);
	
	printf("  PC : %04X", PC.pair);
	printf("  SP : %04X", SP.pair);
		
	//printf("  RET : %02X%02X", cpu[SP.pair], cpu[SP.pair+1]);
	//printf("  RET2 : %02X%02X", cpu[SP.pair+2], cpu[SP.pair+3]);
	//printf("  RET3 : %02X%02X", cpu[SP.pair+4], cpu[SP.pair+5]);
	//printf("  RET4 : %02X%02X", cpu[SP.pair+6], cpu[SP.pair+7]);
	
	printf("  keys1 : %1X%1X%1X%1X", keys.keys1.start, keys.keys1.select, keys.keys1.b, keys.keys1.a);
	printf("  keys1 : %1X%1X%1X%1X", keys.keys2.down, keys.keys2.up, keys.keys2.left, keys.keys2.right);
	
	printf("  FF00 : %02X", cpu[0xFF00]);
	//printf("\n");
}