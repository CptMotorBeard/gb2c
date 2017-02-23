#ifndef HARDWARE_H_INCLUDED
#define HARDWARE_H_INCLUDED
#include "hardware.h"
#endif // HARDWARE_H_INCLUDED

#ifndef OPCODES_H_INCLUDED
#define OPCODES_H_INCLUDED
#include "opcodes.h"
#endif // OPCODES_H_INCLUDED

#ifndef DISPLAY_H_INCLUDED
#define DISPLAY_H_INCLUDED
#include "display.h"
#endif // DISPLAY_H_INCLUDED

#include <GL/gl.h>

void gpuStep();
void cleanLine();
void processLine();
void updateLine();
