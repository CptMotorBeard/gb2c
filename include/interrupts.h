#define INTERRUPTS_VBLANK	(1 << 0)
#define INTERRUPTS_LCDSTAT	(1 << 1)
#define INTERRUPTS_TIMER	(1 << 2)
#define INTERRUPTS_SERIAL	(1 << 3)
#define INTERRUPTS_JOYPAD	(1 << 4)

typedef struct {
	unsigned char master;
	unsigned char enable;
	unsigned char flags;
	unsigned char timer;
} interruptStruct;

interruptStruct interrupt;

void interruptStep();

void vblank();
void lcdStat();
void timer();
void serial();
void joypad();