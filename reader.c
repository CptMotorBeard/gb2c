#include <stdio.h>
#include <stdlib.h>
#include "hardware.h"
#include "gpu.h"
#include "cpu.h"

void read (char* input) {
	FILE *rom = fopen(input, "r");
	if ( rom == 0) {
			printf( "Could not open file\n" );
	} else {
		fread(cpu, 1, romSize, rom);
		fclose(rom);
	}
}

// int main (int argc, char *argv[]) {
	// if (argc != 2) {
		// printf( "Usage: %s filename\n", argv[0] );
		// exit(0);
	// }
	// initialize();
	// read(argv[1]);
	// while (1) {
		// cpuStep();
		// gpuStep();
	// }
	// return 0;
// }