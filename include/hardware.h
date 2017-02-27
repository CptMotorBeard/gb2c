// Defining the types based off of GB types and data sizes
typedef unsigned char BYTE;
typedef signed char SIGNED_BYTE;
typedef unsigned short WORD;

// clock
int clock;

// Registers can work either as a single 8 bit register or a pair to make a 16 bit register.
typedef union {
	struct {
		BYTE lo;
		BYTE hi;
	};
	WORD pair;
} Register;

// Then we have the flags, these are the bits that the F register uses
#define flag_Z (1 << 7)
#define flag_N (1 << 6)
#define flag_H (1 << 5)
#define flag_C (1 << 4)

// This is the size of a regular GB rom
#define romSize 0x7FFF

// We have our register pairs defined below.
Register registerAF;
Register registerBC;
Register registerDE;
Register registerHL;

// program counter is 16 bits, or a word. Using a register because high and low bits are used
Register PC;

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

// functions

void initialize(void);
void writeMemory(WORD address, BYTE data);
void printRegisters(void);