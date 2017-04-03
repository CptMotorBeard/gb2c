#include <stdio.h>
#include <string.h>
#include "hardware.h"
#include "interrupts.h"
#include "timers.h"

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

	m.mode = 0;
	m.ramBank = 0;
	m.ramEnable = 0;
	m.ramMode = 0;
	m.romBank = 0;
	m.select = 0;

	memset(ramBanks,0,0x8000);
}
BYTE readMemory(WORD address){
	if((address <= 0x3FFF) & (address >= 0)){
		return cartridge[address];
	}else if((address <= 0x7FFF) & (address >= 0x4000)){
		return cartridge[address + m.romBank*0x4000];
	}else if((address <= 0xBFFF) & (address >=0xA000)){
		return ramBanks[address + m.ramBank*0x2000];
	}else if (address == 0xFF00) {
		if (!(cpu[0xFF00] & 0x20)){
			return (BYTE) (0xC0 | keys.keys1.a | keys.keys1.b << 1| keys.keys1.select << 2 | keys.keys1.start << 3 | 0x10);
		}
		else if (!(cpu[0xFF00] & 0x10)){
			return (BYTE) (0xC0 | keys.keys2.right | keys.keys2.left << 1| keys.keys2.up << 2 | keys.keys2.down << 3 | 0x20);
		}
		else if (!(cpu[0xFF00] & 0x30)) {return 0xFF;}
		else return 0xCF;
	}else{
		return cpu[address];
	}
}
void writeMemory(WORD address, BYTE data) {
	// 0x0000 - 0x8000 manipulates the memory controller
	if ((address <= 0x1FFF) & (address >= 0)) {
		if((data & 0x0A) == 0x0A){
			m.ramEnable = 1;
		}else{
			m.ramEnable = 0;
		}
	}else if((address <= 0x3FFF) & (address >= 0x2000)){
		BYTE lower5 = data & 0x1F;
		if(lower5 == 0){
			lower5 = 0x1;
		}
		m.romBank &= 0xE0; // set lower5 to 0
		m.romBank |= lower5; //set lower5
	}else if((address>= 0x4000) & (address <= 0x5FFF)){
		if(m.select == 0){
			BYTE upper2 = data & 0x60;
			m.romBank &= 0x9F;
			m.romBank |= upper2;
		}else{
			m.ramBank = data & 0x3;
		}
	}else if((address >= 0x6000) & (address <= 0x7FFF)){
		m.select = data & 0x01;
	}else if((address >= 0xA000) & (address <= 0xBFFF)){
		if(m.ramEnable){
			ramBanks[address + m.ramBank*0x2000] = data;
		}
	}
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
	else if(address == 0xFF46){
		WORD from = data << 8;
		int i;
		for(i = 0; i < 160; i++){
			cpu[0xFE00 + i] = cpu[from + i];
		}
	}
	// Timers
	else if (address == 0xFF04) {cpu[address] = 0;}
	else if (address == 0xFF07) {
		BYTE curFreq = getFrequency();
		cpu[address] = data;
		BYTE newFreq = getFrequency();
		if (curFreq != newFreq) {
			setFrequency();
		}
	}
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
	
	printf("  cpu : %02X", cpu[0xff44]);
	printf("  READ : %02X", readMemory(0xff44));
}
