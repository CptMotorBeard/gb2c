#include <stdio.h>
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
	
	memset(&ramBanks,0,0x8000);
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
BYTE readMemory(WORD address){
	if(address >= 0x4000 && address <= 0x7FFF){
		return cartridge[address - 0x4000 + m.romBank*0x4000];
	}
	else if(address >= 0xA000 && address <= 0xBFFF){
		return ramBanks[address - 0xA000 + m.ramBank*0x2000];
	}else{
		return cpu[address];
	}
}
void writeMemory(WORD address, BYTE data) {
	// 0x0000 - 0x8000 is read only
	if (address < 0x8000) {
		if(address <= 0x1FFF){
			BYTE isA = (data & 0xF);
			if(isA == 0xA){
				m.ramEnable = 1;
			}else if(isA == 0x0){
				m.ramEnable = 0;
			}
		}
		else if(address <= 0x3FFF){
			BYTE lower5 = data & 0x1F;
			m.romBank &= 0xE0; // set lower 5 to 0
			m.romBank |= lower5; //
			if(lower5 == 0){
				m.romBank++;
			}
		}
		else if(address <= 0x5FFF){
			BYTE lower2 = data & 3;
			if(m.select == 1){
				m.ramBank = lower2;
			}else if(m.select == 0){
				m.romBank |= lower2 << 5;
			}
		}else if(address <= 0x7FFF){
			m.select = data & 1;
		}
	} // don't write anything
	else if(address >= 0xA000 && address <= 0xBFFF){
		if(m.ramEnable){
			ramBanks[address - 0xA000 + m.ramBank*0x2000] = data;
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
}
