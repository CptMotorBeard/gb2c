// Defining the types based off of GB types and data sizes
typedef unsigned char BYTE;
typedef unsigned short WORD;

// Registers can work either as a single 8 bit register or a pair to make a 16 bit register.
typedef union {
	struct {
		BYTE lo;
		BYTE hi;
	};
	WORD pair;
} Register;

// Then we have the flags, these are the bits that the F register uses
#define flag_Z 7
#define flag_N 6
#define flag_H 5
#define flag_C 4

// This is the size of a regular GB rom
#define romSize 0x7FFF

// All of the shared variables and functions
// variables
extern BYTE cpu[0x10000];

extern WORD PC;

extern Register registerAF;
extern Register registerBC;
extern Register registerDE;
extern Register registerHL;
extern Register SP;

extern BYTE screen[160][144][3];

// functions

void initialize();
void writeMemory(WORD address, BYTE data);
