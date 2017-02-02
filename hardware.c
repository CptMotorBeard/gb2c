#include <stdio.h>

// Defining the types based off of GB types and data sizes
typedef unsigned char BYTE;
typedef char SIGNED_BYTE;
typedef unsigned short WORD;
typedef signed short SIGNED_WORD;

// Registers can work either as a single 8 bit register or a pair to make a 16 bit register.
typedef union {
	struct {
		BYTE lo;
		BYTE hi;
	};
	WORD pair;
} Register;

// We have our register pairs defined below.
Register registerAF;
Register registerBC;
Register registerDE;
Register registerHL;

// Then we have the flags, these are the bits that the F register uses
#define flag_Z 7
#define flag_N 6
#define flag_H 5
#define flag_C 4

// program counter is 16 bits, or a word
WORD PC;

// stack pointer is 16 bits, but some opcodes use the high and low bits so declare it as a register
Register SP;

// Screen resolution is 160x144. RGB is the third value
BYTE screen[160][144][3];

// The cpu memory map looks like :
//
//--------------------------- FFFF
// I/O ports + internal RAM
//--------------------------- FF00
// Internal RAM
//--------------------------- C000
// 8kB switchable RAM bank
//--------------------------- A000
// 16kB VRAM
//--------------------------- 8000
// 16kB switchable ROM bank
//--------------------------- 4000
// 16kB ROM bank #0
//--------------------------- 0000
//
// So total memory for the CPU is 0x10000 values
BYTE cpu[0x10000];

// Initial values at bootup for the hardware
void initialize() {
	PC = 0x100;
	SP.pair = 0xFFFE;
	registerAF.pair = 0x01B0;
	registerBC.pair = 0x0013;
	registerDE.pair = 0x00D8;
	registerHL.pair = 0x014D;
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
}

// Simple test to make sure everything is working
int main( int argc, char *argv[] ) {
	initialize();
	printf("%02X\n", SP.hi);
	printf("%02X\n", SP.lo);
	return 0;
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
	// No other special areas, just write the data
	else { cpu[address] = data; }
}
