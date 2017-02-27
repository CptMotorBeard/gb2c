#include <stdio.h>
#include "hardware.h"
#include "opcodes.h"
#include "cpu.h"

// There are 256 opcodes for GB
struct opcode opcodes[256] = {
	{ "NOP", 0, NOP },                           // 0x00
	{ "LD BC, 0x%04X", 2, LD_BC },            // 0x01
	{ "LD (BC), A", 0, LD_BC_A },               // 0x02
	{ "INC BC", 0, INC_BC },                     // 0x03
	{ "INC B", 0, INC_B },                       // 0x04
	{ "DEC B", 0, DEC_B },                       // 0x05
	{ "LD B, 0x%02X", 1, LD_B },               // 0x06
	{ "RLCA", 0, RLCA },                         // 0x07
	{ "LD (0x%04X), SP", 2, LD_04X_SP },         // 0x08
	{ "ADD HL, BC", 0, ADD_HL_BC },              // 0x09
	{ "LD A, (BC)", 0, LD_A_BC },               // 0x0a
	{ "DEC BC", 0, DEC_BC },                     // 0x0b
	{ "INC C", 0, INC_C },                       // 0x0c
	{ "DEC C", 0, DEC_C },                       // 0x0d
	{ "LD C, 0x%02X", 1, LD_C },               // 0x0e
	{ "RRCA", 0, RRCA },                         // 0x0f
	{ "STOP", 1, STOP },                         // 0x10
	{ "LD DE, 0x%04X", 2, LD_DE },            // 0x11
	{ "LD (DE), A", 0, LD_DE_A },               // 0x12
	{ "INC DE", 0, INC_DE },                     // 0x13
	{ "INC D", 0, INC_D },                       // 0x14
	{ "DEC D", 0, DEC_D },                       // 0x15
	{ "LD D, 0x%02X", 1, LD_D },               // 0x16
	{ "RLA", 0, RLA },                           // 0x17
	{ "JR 0x%02X", 1, JR },                    // 0x18
	{ "ADD HL, DE", 0, ADD_HL_DE },              // 0x19
	{ "LD A, (DE)", 0, LD_A_DE },               // 0x1a
	{ "DEC DE", 0, DEC_DE },                     // 0x1b
	{ "INC E", 0, INC_E },                       // 0x1c
	{ "DEC E", 0, DEC_E },                       // 0x1d
	{ "LD E, 0x%02X", 1, LD_E },               // 0x1e
	{ "RRA", 0, RRA },                           // 0x1f
	{ "JR NZ, 0x%02X", 1, JR_NZ },             // 0x20
	{ "LD HL, 0x%04X", 2, LD_HL_WORD },            // 0x21
	{ "LDI (HL), A", 0, LDI_HL_A },             // 0x22
	{ "INC HL", 0, INC_HL },                     // 0x23
	{ "INC H", 0, INC_H },                       // 0x24
	{ "DEC H", 0, DEC_H },                       // 0x25
	{ "LD H, 0x%02X", 1, LD_H },               // 0x26
	{ "DAA", 0, DAA },                           // 0x27
	{ "JR Z, 0x%02X", 1, JR_Z },               // 0x28
	{ "ADD HL, HL", 0, ADD_HL_HL },              // 0x29
	{ "LDI A, (HL)", 0, LDI_A_HL },             // 0x2a
	{ "DEC HL", 0, DEC_HL },                     // 0x2b
	{ "INC L", 0, INC_L },                       // 0x2c
	{ "DEC L", 0, DEC_L },                       // 0x2d
	{ "LD L, 0x%02X", 1, LD_L },               // 0x2e
	{ "CPL", 0, CPL },                           // 0x2f
	{ "JR NC, 0x%02X", 1, JR_NC },             // 0x30
	{ "LD SP, 0x%04X", 2, LD_SP },            // 0x31
	{ "LDD (HL), A", 0, LDD_HL_A },             // 0x32
	{ "INC SP", 0, INC_SP },                     // 0x33
	{ "INC (HL)", 0, INC_HL_P },                  // 0x34
	{ "DEC (HL)", 0, DEC_HL_P },                  // 0x35
	{ "LD (HL), 0x%02X", 1, LD_HL_BYTE },          // 0x36
	{ "SCF", 0, SCF },                           // 0x37
	{ "JR C, 0x%02X", 1, JR_C },               // 0x38
	{ "ADD HL, SP", 0, ADD_HL_SP },              // 0x39
	{ "LDD A, (HL)", 0, LDD_A_HL },             // 0x3a
	{ "DEC SP", 0, DEC_SP },                     // 0x3b
	{ "INC A", 0, INC_A },                       // 0x3c
	{ "DEC A", 0, DEC_A },                       // 0x3d
	{ "LD A, 0x%02X", 1, LD_A_BYTE },               // 0x3e
	{ "CCF", 0, CCF },                           // 0x3f
	{ "LD B, B", 0, LD_B_B },                       // 0x40
	{ "LD B, C", 0, LD_B_C },                    // 0x41
	{ "LD B, D", 0, LD_B_D },                    // 0x42
	{ "LD B, E", 0, LD_B_E },                    // 0x43
	{ "LD B, H", 0, LD_B_H },                    // 0x44
	{ "LD B, L", 0, LD_B_L },                    // 0x45
	{ "LD B, (HL)", 0, LD_B_HL },               // 0x46
	{ "LD B, A", 0, LD_B_A },                    // 0x47
	{ "LD C, B", 0, LD_C_B },                    // 0x48
	{ "LD C, C", 0, LD_C_C },                       // 0x49
	{ "LD C, D", 0, LD_C_D },                    // 0x4a
	{ "LD C, E", 0, LD_C_E },                    // 0x4b
	{ "LD C, H", 0, LD_C_H },                    // 0x4c
	{ "LD C, L", 0, LD_C_L },                    // 0x4d
	{ "LD C, (HL)", 0, LD_C_HL },               // 0x4e
	{ "LD C, A", 0, LD_C_A },                    // 0x4f
	{ "LD D, B", 0, LD_D_B },                    // 0x50
	{ "LD D, C", 0, LD_D_C },                    // 0x51
	{ "LD D, D", 0, LD_D_D },                       // 0x52
	{ "LD D, E", 0, LD_D_E },                    // 0x53
	{ "LD D, H", 0, LD_D_H },                    // 0x54
	{ "LD D, L", 0, LD_D_L },                    // 0x55
	{ "LD D, (HL)", 0, LD_D_HL },               // 0x56
	{ "LD D, A", 0, LD_D_A },                    // 0x57
	{ "LD E, B", 0, LD_E_B },                    // 0x58
	{ "LD E, C", 0, LD_E_C },                    // 0x59
	{ "LD E, D", 0, LD_E_D },                    // 0x5a
	{ "LD E, E", 0, LD_E_E },                       // 0x5b
	{ "LD E, H", 0, LD_E_H },                    // 0x5c
	{ "LD E, L", 0, LD_E_L },                    // 0x5d
	{ "LD E, (HL)", 0, LD_E_HL },               // 0x5e
	{ "LD E, A", 0, LD_E_A },                    // 0x5f
	{ "LD H, B", 0, LD_H_B },                    // 0x60
	{ "LD H, C", 0, LD_H_C },                    // 0x61
	{ "LD H, D", 0, LD_H_D },                    // 0x62
	{ "LD H, E", 0, LD_H_E },                    // 0x63
	{ "LD H, H", 0, LD_H_H },                       // 0x64
	{ "LD H, L", 0, LD_H_L },                    // 0x65
	{ "LD H, (HL)", 0, LD_H_HL },               // 0x66
	{ "LD H, A", 0, LD_H_A },                    // 0x67
	{ "LD L, B", 0, LD_L_B },                    // 0x68
	{ "LD L, C", 0, LD_L_C },                    // 0x69
	{ "LD L, D", 0, LD_L_D },                    // 0x6a
	{ "LD L, E", 0, LD_L_E },                    // 0x6b
	{ "LD L, H", 0, LD_L_H },                    // 0x6c
	{ "LD L, L", 0, LD_L_L },                       // 0x6d
	{ "LD L, (HL)", 0, LD_L_HL },               // 0x6e
	{ "LD L, A", 0, LD_L_A },                    // 0x6f
	{ "LD (HL), B", 0, LD_HL_B },               // 0x70
	{ "LD (HL), C", 0, LD_HL_C },               // 0x71
	{ "LD (HL), D", 0, LD_HL_D },               // 0x72
	{ "LD (HL), E", 0, LD_HL_E },               // 0x73
	{ "LD (HL), H", 0, LD_HL_H },               // 0x74
	{ "LD (HL), L", 0, LD_HL_L },               // 0x75
	{ "HALT", 0, HALT },                         // 0x76
	{ "LD (HL), A", 0, LD_HL_A },               // 0x77
	{ "LD A, B", 0, LD_A_B },                    // 0x78
	{ "LD A, C", 0, LD_A_C },                    // 0x79
	{ "LD A, D", 0, LD_A_D },                    // 0x7a
	{ "LD A, E", 0, LD_A_E },                    // 0x7b
	{ "LD A, H", 0, LD_A_H },                    // 0x7c
	{ "LD A, L", 0, LD_A_L },                    // 0x7d
	{ "LD A, (HL)", 0, LD_A_HL },               // 0x7e
	{ "LD A, A", 0, LD_A_A },                       // 0x7f
	{ "ADD A, B", 0, ADD_A_B },                  // 0x80
	{ "ADD A, C", 0, ADD_A_C },                  // 0x81
	{ "ADD A, D", 0, ADD_A_D },                  // 0x82
	{ "ADD A, E", 0, ADD_A_E },                  // 0x83
	{ "ADD A, H", 0, ADD_A_H },                  // 0x84
	{ "ADD A, L", 0, ADD_A_L },                  // 0x85
	{ "ADD A, (HL)", 0, ADD_A_HL },             // 0x86
	{ "ADD A", 0, ADD_A },                     // 0x87
	{ "ADC B", 0, ADC_B },                       // 0x88
	{ "ADC C", 0, ADC_C },                       // 0x89
	{ "ADC D", 0, ADC_D },                       // 0x8a
	{ "ADC E", 0, ADC_E },                       // 0x8b
	{ "ADC H", 0, ADC_H },                       // 0x8c
	{ "ADC L", 0, ADC_L },                       // 0x8d
	{ "ADC (HL)", 0, ADC_HL },                  // 0x8e
	{ "ADC A", 0, ADC_A },                       // 0x8f
	{ "SUB B", 0, SUB_B },                       // 0x90
	{ "SUB C", 0, SUB_C },                       // 0x91
	{ "SUB D", 0, SUB_D },                       // 0x92
	{ "SUB E", 0, SUB_E },                       // 0x93
	{ "SUB H", 0, SUB_H },                       // 0x94
	{ "SUB L", 0, SUB_L },                       // 0x95
	{ "SUB (HL)", 0, SUB_HL },                  // 0x96
	{ "SUB A", 0, SUB_A },                       // 0x97
	{ "SBC B", 0, SBC_B },                       // 0x98
	{ "SBC C", 0, SBC_C },                       // 0x99
	{ "SBC D", 0, SBC_D },                       // 0x9a
	{ "SBC E", 0, SBC_E },                       // 0x9b
	{ "SBC H", 0, SBC_H },                       // 0x9c
	{ "SBC L", 0, SBC_L },                       // 0x9d
	{ "SBC (HL)", 0, SBC_HL },                  // 0x9e
	{ "SBC A", 0, SBC_A },                       // 0x9f
	{ "AND B", 0, AND_B },                       // 0xa0
	{ "AND C", 0, AND_C },                       // 0xa1
	{ "AND D", 0, AND_D },                       // 0xa2
	{ "AND E", 0, AND_E },                       // 0xa3
	{ "AND H", 0, AND_H },                       // 0xa4
	{ "AND L", 0, AND_L },                       // 0xa5
	{ "AND (HL)", 0, AND_HL },                  // 0xa6
	{ "AND A", 0, AND_A },                       // 0xa7
	{ "XOR B", 0, XOR_B },                       // 0xa8
	{ "XOR C", 0, XOR_C },                       // 0xa9
	{ "XOR D", 0, XOR_D },                       // 0xaa
	{ "XOR E", 0, XOR_E },                       // 0xab
	{ "XOR H", 0, XOR_H },                       // 0xac
	{ "XOR L", 0, XOR_L },                       // 0xad
	{ "XOR (HL)", 0, XOR_HL },                  // 0xae
	{ "XOR A", 0, XOR_A },                       // 0xaf
	{ "OR B", 0, OR_B },                         // 0xb0
	{ "OR C", 0, OR_C },                         // 0xb1
	{ "OR D", 0, OR_D },                         // 0xb2
	{ "OR E", 0, OR_E },                         // 0xb3
	{ "OR H", 0, OR_H },                         // 0xb4
	{ "OR L", 0, OR_L },                         // 0xb5
	{ "OR (HL)", 0, OR_HL },                    // 0xb6
	{ "OR A", 0, OR_A },                         // 0xb7
	{ "CP B", 0, CP_B },                         // 0xb8
	{ "CP C", 0, CP_C },                         // 0xb9
	{ "CP D", 0, CP_D },                         // 0xba
	{ "CP E", 0, CP_E },                         // 0xbb
	{ "CP H", 0, CP_H },                         // 0xbc
	{ "CP L", 0, CP_L },                         // 0xbd
	{ "CP (HL)", 0, CP_HL },                    // 0xbe
	{ "CP A", 0, CP_A },                         // 0xbf
	{ "RET NZ", 0, RET_NZ },                     // 0xc0
	{ "POP BC", 0, POP_BC },                     // 0xc1
	{ "JP NZ, 0x%04X", 2, JP_NZ },            // 0xc2
	{ "JP 0x%04X", 2, JP },                   // 0xc3
	{ "CALL NZ, 0x%04X", 2, CALL_NZ },        // 0xc4
	{ "PUSH BC", 0, PUSH_BC },                   // 0xc5
	{ "ADD A, 0x%02X", 1, ADD_A_BYTE },             // 0xc6
	{ "RST 0x00", 0, RST_00 },                    // 0xc7
	{ "RET Z", 0, RET_Z },                       // 0xc8
	{ "RET", 0, RET },                           // 0xc9
	{ "JP Z, 0x%04X", 2, JP_Z },              // 0xca
	{ "CB %02X", 1, CB },                      // 0xcb
	{ "CALL Z, 0x%04X", 2, CALL_Z },          // 0xcc
	{ "CALL 0x%04X", 2, CALL },               // 0xcd
	{ "ADC 0x%02X", 1, ADC },                  // 0xce
	{ "RST 0x08", 0, RST_08 },                   // 0xcf
	{ "RET NC", 0, RET_NC },                     // 0xd0
	{ "POP DE", 0, POP_DE },                     // 0xd1
	{ "JP NC, 0x%04X", 2, JP_NC },            // 0xd2
	{ "UNKNOWN", 0, NOP },                 // 0xd3
	{ "CALL NC, 0x%04X", 2, CALL_NC },        // 0xd4
	{ "PUSH DE", 0, PUSH_DE },                   // 0xd5
	{ "SUB 0x%02X", 1, SUB },                  // 0xd6
	{ "RST 0x10", 0, RST_10 },                   // 0xd7
	{ "RET C", 0, RET_C },                       // 0xd8
	{ "RETI", 0, RETI },          // 0xd9
	{ "JP C, 0x%04X", 2, JP_C },              // 0xda
	{ "UNKNOWN", 0, NOP },                 // 0xdb
	{ "CALL C, 0x%04X", 2, CALL_C },          // 0xdc
	{ "UNKNOWN", 0, NOP },                 // 0xdd
	{ "SBC 0x%02X", 1, SBC },                  // 0xde
	{ "RST 0x18", 0, RST_18 },                   // 0xdf
	{ "LD (0xFF00 + 0x%02X), A", 1, LD_FF02X_A },// 0xe0
	{ "POP HL", 0, POP_HL },                     // 0xe1
	{ "LD (0xFF00 + C), A", 0, LD_FFC_A },      // 0xe2
	{ "UNKNOWN", 0, NOP },                 // 0xe3
	{ "UNKNOWN", 0, NOP },                 // 0xe4
	{ "PUSH HL", 0, PUSH_HL },                   // 0xe5
	{ "AND 0x%02X", 1, AND },                  // 0xe6
	{ "RST 0x20", 0, RST_20 },                   // 0xe7
	{ "ADD SP,0x%02X", 1, ADD_SP },            // 0xe8
	{ "JP HL", 0, JP_HL },                       // 0xe9
	{ "LD (0x%04X), A", 2, LD_04X_A },           // 0xea
	{ "UNKNOWN", 0, NOP },                 // 0xeb
	{ "UNKNOWN", 0, NOP },                 // 0xec
	{ "UNKNOWN", 0, NOP },                 // 0xed
	{ "XOR 0x%02X", 1, XOR },                  // 0xee
	{ "RST 0x28", 0, RST_28 },                   // 0xef
	{ "LD A, (0xFF00 + 0x%02X)", 1, LD_A_FF02X },// 0xf0
	{ "POP AF", 0, POP_AF },                     // 0xf1
	{ "LD A, (0xFF00 + C)", 0, LD_A_FFC },      // 0xf2
	{ "DI", 0, DI },                        // 0xf3
	{ "UNKNOWN", 0 , NOP},                 // 0xf4
	{ "PUSH AF", 0, PUSH_AF },                   // 0xf5
	{ "OR 0x%02X", 1, OR },                    // 0xf6
	{ "RST 0x30", 0, RST_30 },                   // 0xf7
	{ "LD HL, SP+0x%02X", 1, LD_HL_SP02X },       // 0xf8
	{ "LD SP, HL", 0, LD_SP_HL },                // 0xf9
	{ "LD A, (0x%04X)", 2, LD_A_WORD },           // 0xfa
	{ "EI", 0, EI },                             // 0xfb
	{ "UNKNOWN", 0, NOP },                 // 0xfc
	{ "UNKNOWN", 0, NOP },                 // 0xfd
	{ "CP 0x%02X", 1, CP },                    // 0xfe
	{ "RST 0x38", 0, RST_38 },                   // 0xff
};

int instructionTicks[256] = {
	2, 6, 4, 4, 2, 2, 4, 4, 10, 4, 4, 4, 2, 2, 4, 4, // 0x0_
	2, 6, 4, 4, 2, 2, 4, 4,  4, 4, 4, 4, 2, 2, 4, 4, // 0x1_
	0, 6, 4, 4, 2, 2, 4, 2,  0, 4, 4, 4, 2, 2, 4, 2, // 0x2_
	4, 6, 4, 4, 6, 6, 6, 2,  0, 4, 4, 4, 2, 2, 4, 2, // 0x3_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0x4_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0x5_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0x6_
	4, 4, 4, 4, 4, 4, 2, 4,  2, 2, 2, 2, 2, 2, 4, 2, // 0x7_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0x8_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0x9_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0xa_
	2, 2, 2, 2, 2, 2, 4, 2,  2, 2, 2, 2, 2, 2, 4, 2, // 0xb_
	0, 6, 0, 6, 0, 8, 4, 8,  0, 2, 0, 0, 0, 6, 4, 8, // 0xc_
	0, 6, 0, 0, 0, 8, 4, 8,  0, 8, 0, 0, 0, 0, 4, 8, // 0xd_
	6, 6, 4, 0, 0, 8, 4, 8,  8, 2, 8, 0, 0, 0, 4, 8, // 0xe_
	6, 6, 4, 2, 0, 8, 4, 8,  6, 4, 8, 2, 0, 0, 4, 8  // 0xf_
};

int extendedInstructionTicks[256] = {
	8, 8, 8, 8, 8,  8, 16, 8,  8, 8, 8, 8, 8, 8, 16, 8, // 0x0_
	8, 8, 8, 8, 8,  8, 16, 8,  8, 8, 8, 8, 8, 8, 16, 8, // 0x1_
	8, 8, 8, 8, 8,  8, 16, 8,  8, 8, 8, 8, 8, 8, 16, 8, // 0x2_
	8, 8, 8, 8, 8,  8, 16, 8,  8, 8, 8, 8, 8, 8, 16, 8, // 0x3_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0x4_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0x5_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0x6_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0x7_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0x8_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0x9_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0xa_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0xb_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0xc_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0xd_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8, // 0xe_
	8, 8, 8, 8, 8,  8, 12, 8,  8, 8, 8, 8, 8, 8, 12, 8  // 0xf_
};

void cpuStep () {
	int operands;
	int oppc;
	operands=opcodes[cpu[PC.pair]].operands;
	oppc = PC.pair;
	///// DEBUG
	//char *inst = opcodes[cpu[PC.pair]].inst;
	
	if (operands == 1) {				
		PC.pair++;
		///// DEBUG
		//printf(inst, cpu[PC.pair]);
		((void (*)(BYTE))opcodes[cpu[oppc]].function)(cpu[PC.pair]);
	}
	else if (operands == 2) {
		PC.pair++;
		int op;
		op = (cpu[PC.pair]);
		PC.pair++;
		op = op | (cpu[PC.pair]<<8);
		///// DEBUG
		//printf(inst, op);
		
		((void (*)(WORD))opcodes[cpu[oppc]].function)(op);
	} else {
		///// DEBUG
		//printf(inst);
		
		((void (*)(void))opcodes[cpu[oppc]].function)();
	}

	int ticks;
	if (cpu[oppc] == 0xCB) {ticks = extendedInstructionTicks[cpu[PC.pair]];}
	else {ticks = instructionTicks[cpu[oppc]];}
	
	PC.pair++;
	
	///// DEBUG
	//printf("  ");
	
	clock += ticks;
}