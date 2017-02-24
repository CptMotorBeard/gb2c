#include "hardware.h"
#include "opcodes.h"
#include <stdio.h>

// Helper functions for opcodes
// 8-bit loads
void LD(Register* r, BYTE immediate, int type) {
	// Use 1 for lo and 2 for hi
	switch (type) {
		case 1:
			r->lo = immediate;
			break;
		case 2:			
			r->hi = immediate;
			break;
	}
}

// 16-bit loads
void LD_16(Register* r, WORD immediate) {
	r->pair = immediate;
}

// Flag operations
void setFlag(BYTE flag) {
	registerAF.lo |= flag;
}

void clearFlag(BYTE flag) {
	registerAF.lo &= ~flag;
}

void flipFlag(BYTE flag) {
	registerAF.lo ^= flag;
}

int flagSet(BYTE flag) {
	if (registerAF.lo & flag){return 1;}
	else{return 0;}
}

// 8 bit ALU
BYTE INC(BYTE r) {
	clearFlag(flag_N);
	if ((r & 0xF) == 0xF) {setFlag(flag_H);}
	else {clearFlag(flag_H);}
	r++;
	if (r == 0) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	return r;
}

BYTE DEC(BYTE r) {
	setFlag(flag_N);
	if (r & 0xF) {clearFlag(flag_H);}
	else {setFlag(flag_H);}
	r--;
	if (r == 0) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	return r;
}

void ADD(BYTE r) {
	clearFlag(flag_N);
	int result = registerAF.hi + r;
	if (result & 0xFF00) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	if (((registerAF.hi & 0xF) + (r & 0xF)) >> 0xF){setFlag(flag_H);}
	else {clearFlag(flag_H);}
	registerAF.hi = (BYTE)(result & 0xFF);
	if (registerAF.hi == 0){setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
}

void ADC(BYTE r) {
	ADD(r + (BYTE)flagSet(flag_C));
}

void SUB(BYTE r) {
	setFlag(flag_N);
	if (r > registerAF.hi) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	if ((r & 0xF) > (registerAF.hi & 0xF)) {setFlag(flag_H);}
	else {clearFlag(flag_H);}
	registerAF.hi -= r;
	if (registerAF.hi == 0){setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
}

void SBC(BYTE r) {
	SUB(r + (BYTE)flagSet(flag_C));
}

void AND(BYTE r) {
	registerAF.hi = (registerAF.hi & r);
	if (registerAF.hi == 0) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	clearFlag(flag_N);
	setFlag(flag_H);
	clearFlag(flag_C);
}

void XOR(BYTE r) {
	registerAF.hi = (registerAF.hi ^ r);
	if (registerAF.hi == 0) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	clearFlag(flag_C);
}

void OR(BYTE r) {
	registerAF.hi = (registerAF.hi | r);
	if (registerAF.hi == 0) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	clearFlag(flag_C);
}

void CP(BYTE r) {
	if (registerAF.hi == r) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	setFlag(flag_N);
	if (registerAF.hi < r) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	if ((registerAF.hi & 0xF) < (r & 0xF)) {setFlag(flag_H);}
	else {clearFlag(flag_H);}
}

// 16 bit ALU
void ADD_16(WORD r) {
	clearFlag(flag_N);
	unsigned long result = registerHL.pair + r;
	if (result & 0xFFFF0000) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	if (((registerHL.pair & 0xF) + (r & 0xF)) >> 0xF){setFlag(flag_H);}
	else {clearFlag(flag_H);}
	registerHL.pair = (WORD)(result & 0xFFFF);
}

// Functions for all of the opcodes
void NOP() {}
void LD_BC(WORD operand) {LD_16(&registerBC, operand);}
void LD_BC_A() {writeMemory(registerBC.pair, registerAF.hi);}
void INC_BC() {registerBC.pair++;}
void INC_B() {registerBC.hi = INC(registerBC.hi);}
void DEC_B() {registerBC.hi = DEC(registerBC.hi);}
void LD_B(BYTE operand) {LD(&registerBC, operand, 2);}
void RLCA() {
	BYTE carry = (registerAF.hi & 80) >> 7;
	if (carry) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	registerAF.hi <<= 1;
	registerAF.hi += carry;
	
	if (registerAF.hi) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
}
void LD_04X_SP(WORD operand) {LD_16(&SP, operand);}
void ADD_HL_BC() {ADD_16(registerBC.pair);}
void LD_A_BC() {LD(&registerAF, cpu[registerBC.pair], 2);}
void DEC_BC() {registerBC.pair--;}
void INC_C() {registerBC.lo = INC(registerBC.lo);}
void DEC_C() {registerBC.lo = DEC(registerBC.lo);}
void LD_C(BYTE operand) {LD(&registerBC, operand, 1);}
void RRCA() {
	BYTE carry = registerAF.hi & 0x1;
	registerAF.hi >>= 1;
	if (carry) {registerAF.hi |= 0x80; setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	if (registerAF.hi) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
}
void STOP(BYTE operand) {}
void LD_DE(WORD operand) {LD_16(&registerDE, operand);}
void LD_DE_A() {writeMemory(registerDE.pair, registerAF.hi);}
void INC_DE() {registerDE.pair++;}
void INC_D() {registerDE.hi = INC(registerDE.hi);}
void DEC_D() {registerDE.hi = DEC(registerDE.hi);}
void LD_D(BYTE operand) {LD(&registerDE, operand, 2);}
void RLA() {
	BYTE carry = flagSet(flag_C);
	
	if ((registerAF.hi & 80) >> 7) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	registerAF.hi <<= 1;
	registerAF.hi += carry;
	
	if (registerAF.hi) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
}
void JR(BYTE operand) {JP(PC.pair + (SIGNED_BYTE)operand);}
void ADD_HL_DE() {ADD_16(registerDE.pair);}
void LD_A_DE() {LD(&registerAF, cpu[registerDE.pair], 2);}
void DEC_DE() {registerDE.pair--;}
void INC_E() {registerDE.lo = INC(registerDE.lo);}
void DEC_E() {registerDE.lo = DEC(registerDE.lo);}
void LD_E(BYTE operand) {LD(&registerDE, operand, 1);}
void RRA() {
	registerAF.hi >>= 1;

	if (flagSet(flag_C)) {registerAF.hi |= 0x80;}
	if (registerAF.hi & 0x1) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	if (registerAF.hi) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
}
void JR_NZ(BYTE operand) {if (!flagSet(flag_Z)){JR(operand);}}
void LD_HL_WORD(WORD operand) {LD_16(&registerHL, operand);}
void LDI_HL_A() {LD_HL_A(); INC_HL();}
void INC_HL() {registerHL.pair++;}
void INC_H() {registerHL.hi = INC(registerHL.hi);}
void DEC_H() {registerHL.hi = DEC(registerHL.hi);}
void LD_H(BYTE operand) {LD(&registerHL, operand, 2);}
void DAA() {
	////// DECIMAL ADJUST
}
void JR_Z(BYTE operand) {if (flagSet(flag_Z)){JR(operand);}}
void ADD_HL_HL() {ADD_16(registerHL.pair);}
void LDI_A_HL() {LD_A_HL(); INC_HL();}
void DEC_HL() {registerHL.pair--;}
void INC_L() {registerHL.lo = INC(registerHL.lo);}
void DEC_L() {registerHL.lo = DEC(registerHL.lo);}
void LD_L(BYTE operand) {LD(&registerHL, operand, 1);}
void CPL() {
	setFlag(flag_N);
	setFlag(flag_H);
	registerAF.hi = ~registerAF.hi;
}
void JR_NC(BYTE operand) {if (!flagSet(flag_C)){JR(operand);}}
void LD_SP(WORD operand) {LD_16(&SP, operand);}
void LDD_HL_A() {LD_HL_A(); DEC_HL();}
void INC_SP() {SP.pair++;}
void LD_HL_BYTE(BYTE operand) {writeMemory(registerHL.pair, operand);}
void SCF() {
	clearFlag(flag_N);
	clearFlag(flag_H);
	setFlag(flag_C);
}
void JR_C(BYTE operand) {if (flagSet(flag_C)){JR(operand);}}
void ADD_HL_SP() {ADD_16(SP.pair);}
void LDD_A_HL() {LD_A_HL(); DEC_HL();}
void DEC_SP() {SP.pair--;}
void INC_A() {registerAF.hi = INC(registerAF.hi);}
void DEC_A() {registerAF.hi = DEC(registerAF.hi);}
void LD_A_BYTE(BYTE operand) {LD(&registerAF, operand, 2);}
void CCF() {
	clearFlag(flag_N);
	clearFlag(flag_H);
	flipFlag(flag_C);
}
void LD_B_B() {LD(&registerBC, registerBC.hi, 2);}
void LD_B_C() {LD(&registerBC, registerBC.lo, 2);}
void LD_B_D() {LD(&registerBC, registerDE.hi, 2);}
void LD_B_E() {LD(&registerBC, registerDE.lo, 2);}
void LD_B_H() {LD(&registerBC, registerHL.hi, 2);}
void LD_B_L() {LD(&registerBC, registerHL.lo, 2);}
void LD_B_HL() {LD(&registerBC, cpu[registerHL.pair], 2);}
void LD_B_A() {LD(&registerBC, registerAF.hi, 2);}
void LD_C_B() {LD(&registerBC, registerBC.hi, 1);}
void LD_C_C() {LD(&registerBC, registerBC.lo, 1);}
void LD_C_D() {LD(&registerBC, registerDE.hi, 1);}
void LD_C_E() {LD(&registerBC, registerDE.lo, 1);}
void LD_C_H() {LD(&registerBC, registerHL.hi, 1);}
void LD_C_L() {LD(&registerBC, registerHL.lo, 1);}
void LD_C_HL() {LD(&registerBC, cpu[registerHL.pair], 1);}
void LD_C_A() {LD(&registerBC, registerAF.hi, 1);}
void LD_D_B() {LD(&registerDE, registerBC.hi, 2);}
void LD_D_C() {LD(&registerDE, registerBC.lo, 2);}
void LD_D_D() {LD(&registerDE, registerDE.hi, 2);}
void LD_D_E() {LD(&registerDE, registerDE.lo, 2);}
void LD_D_H() {LD(&registerDE, registerHL.hi, 2);}
void LD_D_L() {LD(&registerDE, registerHL.lo, 2);}
void LD_D_HL() {LD(&registerDE, cpu[registerHL.pair], 2);}
void LD_D_A() {LD(&registerDE, registerAF.hi, 2);}
void LD_E_B() {LD(&registerDE, registerBC.hi, 1);}
void LD_E_C() {LD(&registerDE, registerBC.lo, 1);}
void LD_E_D() {LD(&registerDE, registerDE.hi, 1);}
void LD_E_E() {LD(&registerDE, registerDE.lo, 1);}
void LD_E_H() {LD(&registerDE, registerHL.hi, 1);}
void LD_E_L() {LD(&registerDE, registerHL.lo, 1);}
void LD_E_HL() {LD(&registerDE, cpu[registerHL.pair], 1);}
void LD_E_A() {LD(&registerDE, registerAF.hi, 1);}
void LD_H_B() {LD(&registerHL, registerBC.hi, 2);}
void LD_H_C() {LD(&registerHL, registerBC.lo, 2);}
void LD_H_D() {LD(&registerHL, registerDE.hi, 2);}
void LD_H_E() {LD(&registerHL, registerDE.lo, 2);}
void LD_H_H() {LD(&registerHL, registerHL.hi, 2);}
void LD_H_L() {LD(&registerHL, registerHL.lo, 2);}
void LD_H_HL() {LD(&registerHL, cpu[registerHL.pair], 2);}
void LD_H_A() {LD(&registerHL, registerAF.hi, 2);}
void LD_L_B() {LD(&registerHL, registerBC.hi, 1);}
void LD_L_C() {LD(&registerHL, registerBC.lo, 1);}
void LD_L_D() {LD(&registerHL, registerDE.hi, 1);}
void LD_L_E() {LD(&registerHL, registerDE.lo, 1);}
void LD_L_H() {LD(&registerHL, registerHL.hi, 1);}
void LD_L_L() {LD(&registerHL, registerHL.lo, 1);}
void LD_L_HL() {LD(&registerHL, cpu[registerHL.pair], 1);}
void LD_L_A() {LD(&registerHL, registerAF.hi, 1);}
void LD_HL_B() {writeMemory(registerHL.pair, registerBC.hi);}
void LD_HL_C() {writeMemory(registerHL.pair, registerBC.lo);}
void LD_HL_D() {writeMemory(registerHL.pair, registerDE.hi);}
void LD_HL_E() {writeMemory(registerHL.pair, registerDE.lo);}
void LD_HL_H() {writeMemory(registerHL.pair, registerHL.hi);}
void LD_HL_L() {writeMemory(registerHL.pair, registerHL.lo);}
void HALT() {}
void LD_HL_A() {writeMemory(registerHL.pair, registerAF.hi);}
void LD_A_B() {LD(&registerAF, registerBC.hi, 2);}
void LD_A_C() {LD(&registerAF, registerBC.lo, 2);}
void LD_A_D() {LD(&registerAF, registerDE.hi, 2);}
void LD_A_E() {LD(&registerAF, registerDE.lo, 2);}
void LD_A_H() {LD(&registerAF, registerHL.hi, 2);}
void LD_A_L() {LD(&registerAF, registerHL.lo, 2);}
void LD_A_HL() {LD(&registerAF, cpu[registerHL.pair], 2);}
void LD_A_A() {LD(&registerAF, registerAF.hi, 2);}
void ADD_A_B() {ADD(registerBC.hi);}
void ADD_A_C() {ADD(registerBC.lo);}
void ADD_A_D() {ADD(registerDE.hi);}
void ADD_A_E() {ADD(registerDE.lo);}
void ADD_A_H() {ADD(registerHL.hi);}
void ADD_A_L() {ADD(registerHL.lo);}
void ADD_A_HL() {ADD(cpu[registerHL.pair]);}
void ADD_A() {ADD(registerAF.hi);}
void ADC_B() {ADC(registerBC.hi);}
void ADC_C() {ADC(registerBC.lo);}
void ADC_D() {ADC(registerDE.hi);}
void ADC_E() {ADC(registerDE.lo);}
void ADC_H() {ADC(registerHL.hi);}
void ADC_L() {ADC(registerHL.lo);}
void ADC_HL() {ADC(cpu[registerHL.pair]);}
void ADC_A() {ADC(registerAF.hi);}
void SUB_B() {SUB(registerBC.hi);}
void SUB_C() {SUB(registerBC.lo);}
void SUB_D() {SUB(registerDE.hi);}
void SUB_E() {SUB(registerDE.lo);}
void SUB_H() {SUB(registerHL.hi);}
void SUB_L() {SUB(registerHL.lo);}
void SUB_HL() {SUB(cpu[registerHL.pair]);}
void SUB_A() {SUB(registerAF.hi);}
void SBC_B() {SBC(registerBC.hi);}
void SBC_C() {SBC(registerBC.lo);}
void SBC_D() {SBC(registerDE.hi);}
void SBC_E() {SBC(registerDE.lo);}
void SBC_H() {SBC(registerHL.hi);}
void SBC_L() {SBC(registerHL.lo);}
void SBC_HL() {SBC(cpu[registerHL.pair]);}
void SBC_A() {SBC(registerAF.hi);}
void AND_B() {AND(registerBC.hi);}
void AND_C() {AND(registerBC.lo);}
void AND_D() {AND(registerDE.hi);}
void AND_E() {AND(registerDE.lo);}
void AND_H() {AND(registerHL.hi);}
void AND_L() {AND(registerHL.lo);}
void AND_HL() {AND(cpu[registerHL.pair]);}
void AND_A() {AND(registerAF.hi);}
void XOR_B() {XOR(registerBC.hi);}
void XOR_C() {XOR(registerBC.lo);}
void XOR_D() {XOR(registerDE.hi);}
void XOR_E() {XOR(registerDE.lo);}
void XOR_H() {XOR(registerHL.hi);}
void XOR_L() {XOR(registerHL.lo);}
void XOR_HL() {XOR(cpu[registerHL.pair]);}
void XOR_A() {XOR(registerAF.hi);}
void OR_B() {OR(registerBC.hi);}
void OR_C() {OR(registerBC.lo);}
void OR_D() {OR(registerDE.hi);}
void OR_E() {OR(registerDE.lo);}
void OR_H() {OR(registerHL.hi);}
void OR_L() {OR(registerHL.lo);}
void OR_HL() {OR(cpu[registerHL.pair]);}
void OR_A() {OR(registerAF.hi);}
void CP_B() {CP(registerBC.hi);}
void CP_C() {CP(registerBC.lo);}
void CP_D() {CP(registerDE.hi);}
void CP_E() {CP(registerDE.lo);}
void CP_H() {CP(registerHL.hi);}
void CP_L() {CP(registerHL.lo);}
void CP_HL() {CP(cpu[registerHL.pair]);}
void CP_A() {CP(registerAF.hi);}
void RET_NZ() {if (!flagSet(flag_Z)){RET();}}
void POP_BC() {
	LD(&registerBC, cpu[SP.pair], 2);SP.pair++;
	LD(&registerBC, cpu[SP.pair], 1);SP.pair++;
}
void JP_NZ(WORD operand) {if (!flagSet(flag_Z)){JP(operand);}}
void JP(WORD operand) {PC.pair = operand-1;}
void CALL_NZ(WORD operand) {if (!flagSet(flag_Z)){CALL(operand);}}
void PUSH_BC() {
	SP.pair--;
	writeMemory(SP.pair, registerBC.lo);
	SP.pair--;
	writeMemory(SP.pair, registerBC.hi);
}
void ADD_A_BYTE(BYTE operand) {ADD(operand);}
void RST_00() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0000);
}
void RET_Z() {if (flagSet(flag_Z)){RET();}}
void RET() {
	WORD loc = cpu[SP.pair];
	SP.pair++;SP.pair++;
	JP(loc+1);
}
void JP_Z(WORD operand) {if (flagSet(flag_Z)){JP(operand);}}

// CB helpers
// Rotates
BYTE RLC(BYTE r) {
	BYTE carry = (r & 80) >> 7;
	if (carry) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	r <<= 1;
	r += carry;
	
	if (r) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	
	return r;
}
BYTE RRC (BYTE r){
	BYTE carry = r & 0x1;
	r >>= 1;
	if (carry) {r |= 0x80; setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	if (r) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	
	return r;
}
BYTE RL(BYTE r){
	BYTE carry = flagSet(flag_C);
	
	if ((r & 80) >> 7) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	r <<= 1;
	r += carry;
	
	if (r) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	
	return r;
}
BYTE RR(BYTE r){
	r >>= 1;

	if (flagSet(flag_C)) {r |= 0x80;}
	if (r & 0x1) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	if (r) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	
	return r;
}
// Shifts
BYTE SLA(BYTE r) {
	if ((r & 80) >> 7) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	
	r <<= 1;
	
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	if (r == 0) {setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	
	return r;
}
BYTE SRA(BYTE r) {
	if (r & 0x1) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	BYTE o7 = r & 0x80;
	r >>= 1;
	r |= o7;
	
	if (r) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	
	return r;
}
BYTE SRL(BYTE r) {
	if (r & 0x1) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	clearFlag(flag_N);
	clearFlag(flag_H);
	
	r >>= 1;
	
	if (r) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	
	return r;
}
// Misc
BYTE SWAP(BYTE r) {
	clearFlag(flag_N);
	clearFlag(flag_H);
	clearFlag(flag_C);
	
	r = ((r & 0xF) << 4) | ((r & 0xF0) >> 4);
		
	if (r == 0){setFlag(flag_Z);}
	else {clearFlag(flag_Z);}
	
	return r;
}
// BIT operations
void BIT(BYTE bit, BYTE r) {
	if (r & bit) {clearFlag(flag_Z);}
	else {setFlag(flag_Z);}
	clearFlag(flag_N);
	setFlag(flag_H);
}
BYTE SET(BYTE bit, BYTE r) {
	r |= bit;
	return r;
}
BYTE RES(BYTE bit, BYTE r){
	r &= ~bit;
	return r;
}


void CB(BYTE operand) {
	switch (operand){
		case 0x0:
		// RLC B
			registerBC.hi = RLC(registerBC.hi);
			break;
		case 0x1:
		// RLC C
			registerBC.lo = RLC(registerBC.lo);
			break;
		case 0x2:
		// RLC D
			registerDE.hi = RLC(registerDE.hi);
			break;
		case 0x3:
		// RLC E
			registerDE.lo = RLC(registerDE.lo);
			break;
		case 0x4:
		// RLC H
			registerHL.hi = RLC(registerHL.hi);
			break;
		case 0x5:
		// RLC L
			registerHL.lo = RLC(registerHL.lo);
			break;
		case 0x6:
		// RLC (HL)
			writeMemory(registerHL.pair, RLC(cpu[registerHL.pair]));
			break;
		case 0x7:
		// RLC A
			registerAF.hi = RLC(registerAF.hi);
			break;
		case 0x8:
		// RRC B
			registerBC.hi = RRC(registerBC.hi);
			break;
		case 0x9:
		// RRC C
			registerBC.lo = RRC(registerBC.lo);
			break;
		case 0xa:
		// RRC D
			registerDE.hi = RRC(registerDE.hi);
			break;
		case 0xb:
		// RRC E
			registerDE.lo = RRC(registerDE.lo);
			break;
		case 0xc:
		// RRC H
			registerHL.hi = RRC(registerHL.hi);
			break;
		case 0xd:
		// RRC L
			registerHL.lo = RRC(registerHL.lo);
			break;
		case 0xe:
		// RRC (HL)
			writeMemory(registerHL.pair, RRC(cpu[registerHL.pair]));
			break;
		case 0xf:
		// RRC A
			registerAF.hi = RRC(registerAF.hi);
			break;
		case 0x10:
		// RL B
			registerBC.hi = RL(registerBC.hi);
			break;
		case 0x11:
		// RL C
			registerBC.lo = RL(registerBC.lo);
			break;
		case 0x12:
		// RL D
			registerDE.hi = RL(registerDE.hi);
			break;
		case 0x13:
		// RL E
			registerDE.lo = RL(registerDE.lo);
			break;
		case 0x14:
		// RL H
			registerHL.hi = RL(registerHL.hi);
			break;
		case 0x15:
		// RL L
			registerHL.lo = RL(registerHL.lo);
			break;
		case 0x16:
		// RL (HL)
			writeMemory(registerHL.pair, RL(cpu[registerHL.pair]));
			break;
		case 0x17:
		// RL A
			registerAF.hi = RL(registerAF.hi);
			break;
		case 0x18:
		// RR B
			registerBC.hi = RR(registerBC.hi);
			break;
		case 0x19:
		// RR C
			registerBC.lo = RR(registerBC.lo);
			break;
		case 0x1a:
		// RR D
			registerDE.hi = RR(registerDE.hi);
			break;
		case 0x1b:
		// RR E
			registerDE.lo = RR(registerDE.lo);
			break;
		case 0x1c:
		// RR H
			registerHL.hi = RR(registerHL.hi);
			break;
		case 0x1d:
		// RR L
			registerHL.lo = RR(registerHL.lo);
			break;
		case 0x1e:
		// RR (HL)
			writeMemory(registerHL.pair, RL(cpu[registerHL.pair]));
			break;
		case 0x1f:
		// RR A
			registerAF.hi = RR(registerAF.hi);
			break;
		case 0x20:
		// SLA B
			registerBC.hi = SLA(registerBC.hi);
			break;
		case 0x21:
		// SLA C
			registerBC.lo = SLA(registerBC.lo);
			break;
		case 0x22:
		// SLA D
			registerDE.hi = SLA(registerDE.hi);
			break;
		case 0x23:
		// SLA E
			registerDE.lo = SLA(registerDE.lo);
			break;
		case 0x24:
		// SLA H
			registerHL.hi = SLA(registerHL.hi);
			break;
		case 0x25:
		// SLA L
			registerHL.lo = SLA(registerHL.lo);
			break;
		case 0x26:
		// SLA (HL)
			writeMemory(registerHL.pair, SLA(cpu[registerHL.pair]));
			break;
		case 0x27:
		// SLA A
			registerAF.hi = SLA(registerAF.hi);
			break;
		case 0x28:
		// SRA B
			registerBC.hi = SRA(registerBC.hi);
			break;
		case 0x29:
		// SRA C
			registerBC.lo = SRA(registerBC.lo);
			break;
		case 0x2a:
		// SRA D
			registerDE.hi = SRA(registerDE.hi);
			break;
		case 0x2b:
		// SRA E
			registerDE.lo = SRA(registerDE.lo);
			break;
		case 0x2c:
		// SRA H
			registerHL.hi = SRA(registerHL.hi);
			break;
		case 0x2d:
		// SRA L
			registerHL.lo = SRA(registerHL.lo);
			break;
		case 0x2e:
		// SRA (HL)
			writeMemory(registerHL.pair, SRA(cpu[registerHL.pair]));
			break;
		case 0x2f:
		// SRA A
			registerAF.hi = SRA(registerAF.hi);
			break;
		case 0x30:
		// SWAP B
			registerBC.hi = SWAP(registerBC.hi);
			break;
		case 0x31:
		// SWAP C
			registerBC.lo = SWAP(registerBC.lo);
			break;
		case 0x32:
		// SWAP D
			registerDE.hi = SWAP(registerDE.hi);
			break;
		case 0x33:
		// SWAP E
			registerDE.lo = SWAP(registerDE.lo);
			break;
		case 0x34:
		// SWAP H
			registerHL.hi = SWAP(registerHL.hi);
			break;
		case 0x35:
		// SWAP L
			registerHL.lo = SWAP(registerHL.lo);
			break;
		case 0x36:
		// SWAP (HL)
			writeMemory(registerHL.pair, SWAP(cpu[registerHL.pair]));
			break;
		case 0x37:
		// SWAP A
			registerAF.hi = SWAP(registerAF.hi);
			break;
		case 0x38:
		// SRL B
			registerBC.hi = SRL(registerBC.hi);
			break;
		case 0x39:
		// SRL C
			registerBC.lo = SRL(registerBC.lo);
			break;
		case 0x3a:
		// SRL D
			registerDE.hi = SRL(registerDE.hi);
			break;
		case 0x3b:
		// SRL E
			registerDE.lo = SRL(registerDE.lo);
			break;
		case 0x3c:
		// SRL H
			registerHL.hi = SRL(registerHL.hi);
			break;
		case 0x3d:
		// SRL L
			registerHL.lo = SRL(registerHL.lo);
			break;
		case 0x3e:
		// SRL (HL)
			writeMemory(registerHL.pair, SRL(cpu[registerHL.pair]));
			break;
		case 0x3f:
		// SRL A
			registerAF.hi = SRL(registerAF.hi);
			break;
		case 0x40:
		// BIT 0 B
			BIT(1<<0, registerBC.hi);
			break;
		case 0x41:
		// BIT 0 C
			BIT(1<<0, registerBC.lo);
			break;
		case 0x42:
		// BIT 0 D
			BIT(1<<0, registerDE.hi);
			break;
		case 0x43:
		// BIT 0 E
			BIT(1<<0, registerDE.lo);
			break;
		case 0x44:
		// BIT 0 H
			BIT(1<<0, registerHL.hi);
			break;
		case 0x45:
		// BIT 0 L
			BIT(1<<0, registerHL.lo);
			break;
		case 0x46:
		// BIT 0 (HL)
			BIT(1<<0, cpu[registerHL.pair]);
			break;
		case 0x47:
		// BIT 0 A
			BIT(1<<0, registerAF.hi);
			break;
		case 0x48:
		// BIT 1 B
			BIT(1<<1, registerBC.hi);
			break;
		case 0x49:
		// BIT 1 C
			BIT(1<<1, registerBC.lo);
			break;
		case 0x4a:
		// BIT 1 D
			BIT(1<<1, registerDE.hi);
			break;
		case 0x4b:
		// BIT 1 E
			BIT(1<<1, registerDE.lo);
			break;
		case 0x4c:
		// BIT 1 H
			BIT(1<<1, registerHL.hi);
			break;
		case 0x4d:
		// BIT 1 L
			BIT(1<<1, registerHL.lo);
			break;
		case 0x4e:
		// BIT 1 (HL)
			BIT(1<<1, cpu[registerHL.pair]);
			break;
		case 0x4f:
		// BIT 1 A
			BIT(1<<1, registerAF.hi);
			break;
		case 0x50:
		// BIT 2 B
			BIT(1<<2, registerBC.hi);
			break;
		case 0x51:
		// BIT 2 C
			BIT(1<<2, registerBC.lo);
			break;
		case 0x52:
		// BIT 2 D
			BIT(1<<2, registerDE.hi);
			break;
		case 0x53:
		// BIT 2 E
			BIT(1<<2, registerDE.lo);
			break;
		case 0x54:
		// BIT 2 H
			BIT(1<<2, registerHL.hi);
			break;
		case 0x55:
		// BIT 2 L
			BIT(1<<2, registerHL.lo);
			break;
		case 0x56:
		// BIT 2 (HL)
			BIT(1<<2, cpu[registerHL.pair]);
			break;
		case 0x57:
		// BIT 2 A
			BIT(1<<2, registerAF.hi);
			break;
		case 0x58:
		// BIT 3 B
			BIT(1<<3, registerBC.hi);
			break;
		case 0x59:
		// BIT 3 C
			BIT(1<<3, registerBC.lo);
			break;
		case 0x5a:
		// BIT 3 D
			BIT(1<<3, registerDE.hi);
			break;
		case 0x5b:
		// BIT 3 E
			BIT(1<<3, registerDE.lo);
			break;
		case 0x5c:
		// BIT 3 H
			BIT(1<<3, registerHL.hi);
			break;
		case 0x5d:
		// BIT 3 L
			BIT(1<<3, registerHL.lo);
			break;
		case 0x5e:
		// BIT 3 (HL)
			BIT(1<<3, cpu[registerHL.pair]);
			break;
		case 0x5f:
		// BIT 3 A
			BIT(1<<3, registerAF.hi);
			break;
		case 0x60:
		// BIT 4 B
			BIT(1<<4, registerBC.hi);
			break;
		case 0x61:
		// BIT 4 C
			BIT(1<<4, registerBC.lo);
			break;
		case 0x62:
		// BIT 4 D
			BIT(1<<4, registerDE.hi);
			break;
		case 0x63:
		// BIT 4 E
			BIT(1<<4, registerDE.lo);
			break;
		case 0x64:
		// BIT 4 H
			BIT(1<<4, registerHL.hi);
			break;
		case 0x65:
		// BIT 4 L
			BIT(1<<4, registerHL.lo);
			break;
		case 0x66:
		// BIT 4 (HL)
			BIT(1<<4, cpu[registerHL.pair]);
			break;
		case 0x67:
		// BIT 4 A
			BIT(1<<4, registerAF.hi);
			break;
		case 0x68:
		// BIT 5 B
			BIT(1<<5, registerBC.hi);
			break;
		case 0x69:
		// BIT 5 C
			BIT(1<<5, registerBC.lo);
			break;
		case 0x6a:
		// BIT 5 D
			BIT(1<<5, registerDE.hi);
			break;
		case 0x6b:
		// BIT 5 E
			BIT(1<<5, registerDE.lo);
			break;
		case 0x6c:
		// BIT 5 H
			BIT(1<<5, registerHL.hi);
			break;
		case 0x6d:
		// BIT 5 L
			BIT(1<<5, registerHL.lo);
			break;
		case 0x6e:
		// BIT 5 (HL)
			BIT(1<<5, cpu[registerHL.pair]);
			break;
		case 0x6f:
		// BIT 5 A
			BIT(1<<5, registerAF.hi);
			break;
		case 0x70:
		// BIT 6 B
			BIT(1<<6, registerBC.hi);
			break;
		case 0x71:
		// BIT 6 C
			BIT(1<<6, registerBC.lo);
			break;
		case 0x72:
		// BIT 6 D
			BIT(1<<6, registerDE.hi);
			break;
		case 0x73:
		// BIT 6 E
			BIT(1<<6, registerDE.lo);
			break;
		case 0x74:
		// BIT 6 H
			BIT(1<<6, registerHL.hi);
			break;
		case 0x75:
		// BIT 6 L
			BIT(1<<6, registerHL.lo);
			break;
		case 0x76:
		// BIT 6 (HL)
			BIT(1<<6, cpu[registerHL.pair]);
			break;
		case 0x77:
		// BIT 6 A
			BIT(1<<6, registerAF.hi);
			break;
		case 0x78:
		// BIT 7 B
			BIT(1<<7, registerBC.hi);
			break;
		case 0x79:
		// BIT 7 C
			BIT(1<<7, registerBC.lo);
			break;
		case 0x7a:
		// BIT 7 D
			BIT(1<<7, registerDE.hi);
			break;
		case 0x7b:
		// BIT 7 E
			BIT(1<<7, registerDE.lo);
			break;
		case 0x7c:
		// BIT 7 H
			BIT(1<<7, registerHL.hi);
			break;
		case 0x7d:
		// BIT 7 L
			BIT(1<<7, registerHL.lo);
			break;
		case 0x7e:
		// BIT 7 (HL)
			BIT(1<<7, cpu[registerHL.pair]);
			break;
		case 0x7f:
		// BIT 7 A
			BIT(1<<7, registerAF.hi);
			break;
		case 0x80:
		// RES 0 B
			registerBC.hi = RES(1<<0, registerBC.hi);
			break;
		case 0x81:
		// RES 0 C
			registerBC.lo = RES(1<<0, registerBC.lo);
			break;
		case 0x82:
		// RES 0 D
			registerDE.hi = RES(1<<0, registerDE.hi);
			break;
		case 0x83:
		// RES 0 E
			registerDE.lo = RES(1<<0, registerDE.lo);
			break;
		case 0x84:
		// RES 0 H
			registerHL.hi = RES(1<<0, registerHL.hi);
			break;
		case 0x85:
		// RES 0 L
			registerHL.lo = RES(1<<0, registerHL.lo);
			break;
		case 0x86:
		// RES 0 (HL)
			writeMemory(registerHL.pair, RES(1<<0, cpu[registerHL.pair]));
			break;
		case 0x87:
		// RES 0 A
			registerAF.hi = RES(1<<0, registerAF.hi);
			break;
		case 0x88:
		// RES 1 B
			registerBC.hi = RES(1<<1, registerBC.hi);
			break;
		case 0x89:
		// RES 1 C
			registerBC.lo = RES(1<<1, registerBC.lo);
			break;
		case 0x8a:
		// RES 1 D
			registerDE.hi = RES(1<<1, registerDE.hi);
			break;
		case 0x8b:
		// RES 1 E
			registerDE.lo = RES(1<<1, registerDE.lo);
			break;
		case 0x8c:
		// RES 1 H
			registerHL.hi = RES(1<<1, registerHL.hi);
			break;
		case 0x8d:
		// RES 1 L
			registerHL.lo = RES(1<<1, registerHL.lo);
			break;
		case 0x8e:
		// RES 1 (HL)
			writeMemory(registerHL.pair, RES(1<<1, cpu[registerHL.pair]));
			break;
		case 0x8f:
		// RES 1 A
			registerAF.hi = RES(1<<1, registerAF.hi);
			break;
		case 0x90:
		// RES 2 B
			registerBC.hi = RES(1<<2, registerBC.hi);
			break;
		case 0x91:
		// RES 2 C
			registerBC.lo = RES(1<<2, registerBC.lo);
			break;
		case 0x92:
		// RES 2 D
			registerDE.hi = RES(1<<2, registerDE.hi);
			break;
		case 0x93:
		// RES 2 E
			registerDE.lo = RES(1<<2, registerDE.lo);
			break;
		case 0x94:
		// RES 2 H
			registerHL.hi = RES(1<<2, registerHL.hi);
			break;
		case 0x95:
		// RES 2 L
			registerHL.lo = RES(1<<2, registerHL.lo);
			break;
		case 0x96:
		// RES 2 (HL)
			writeMemory(registerHL.pair, RES(1<<2, cpu[registerHL.pair]));
			break;
		case 0x97:
		// RES 2 A
			registerAF.hi = RES(1<<2, registerAF.hi);
			break;
		case 0x98:
		// RES 3 B
			registerBC.hi = RES(1<<3, registerBC.hi);
			break;
		case 0x99:
		// RES 3 C
			registerBC.lo = RES(1<<3, registerBC.lo);
			break;
		case 0x9a:
		// RES 3 D
			registerDE.hi = RES(1<<3, registerDE.hi);
			break;
		case 0x9b:
		// RES 3 E
			registerDE.lo = RES(1<<3, registerDE.lo);
			break;
		case 0x9c:
		// RES 3 H
			registerHL.hi = RES(1<<3, registerHL.hi);
			break;
		case 0x9d:
		// RES 3 L
			registerHL.lo = RES(1<<3, registerHL.lo);
			break;
		case 0x9e:
		// RES 3 (HL)
			writeMemory(registerHL.pair, RES(1<<3, cpu[registerHL.pair]));
			break;
		case 0x9f:
		// RES 3 A
			registerAF.hi = RES(1<<3, registerAF.hi);
			break;
		case 0xa0:
		// RES 4 B
			registerBC.hi = RES(1<<4, registerBC.hi);
			break;
		case 0xa1:
		// RES 4 C
			registerBC.lo = RES(1<<4, registerBC.lo);
			break;
		case 0xa2:
		// RES 4 D
			registerDE.hi = RES(1<<4, registerDE.hi);
			break;
		case 0xa3:
		// RES 4 E
			registerDE.lo = RES(1<<4, registerDE.lo);
			break;
		case 0xa4:
		// RES 4 H
			registerHL.hi = RES(1<<4, registerHL.hi);
			break;
		case 0xa5:
		// RES 4 L
			registerHL.lo = RES(1<<4, registerHL.lo);
			break;
		case 0xa6:
		// RES 4 (HL)
			writeMemory(registerHL.pair, RES(1<<4, cpu[registerHL.pair]));
			break;
		case 0xa7:
		// RES 4 A
			registerAF.hi = RES(1<<4, registerAF.hi);
			break;
		case 0xa8:
		// RES 5 B
			registerBC.hi = RES(1<<5, registerBC.hi);
			break;
		case 0xa9:
		// RES 5 C
			registerBC.lo = RES(1<<5, registerBC.lo);
			break;
		case 0xaa:
		// RES 5 D
			registerDE.hi = RES(1<<5, registerDE.hi);
			break;
		case 0xab:
		// RES 5 E
			registerDE.lo = RES(1<<5, registerDE.lo);
			break;
		case 0xac:
		// RES 5 H
			registerHL.hi = RES(1<<5, registerHL.hi);
			break;
		case 0xad:
		// RES 5 L
			registerHL.lo = RES(1<<5, registerHL.lo);
			break;
		case 0xae:
		// RES 5 (HL)
			writeMemory(registerHL.pair, RES(1<<5, cpu[registerHL.pair]));
			break;
		case 0xaf:
		// RES 5 A
			registerAF.hi = RES(1<<5, registerAF.hi);
			break;
		case 0xb0:
		// RES 6 B
			registerBC.hi = RES(1<<6, registerBC.hi);
			break;
		case 0xb1:
		// RES 6 C
			registerBC.lo = RES(1<<6, registerBC.lo);
			break;
		case 0xb2:
		// RES 6 D
			registerDE.hi = RES(1<<6, registerDE.hi);
			break;
		case 0xb3:
		// RES 6 E
			registerDE.lo = RES(1<<6, registerDE.lo);
			break;
		case 0xb4:
		// RES 6 H
			registerHL.hi = RES(1<<6, registerHL.hi);
			break;
		case 0xb5:
		// RES 6 L
			registerHL.lo = RES(1<<6, registerHL.lo);
			break;
		case 0xb6:
		// RES 6 (HL)
			writeMemory(registerHL.pair, RES(1<<6, cpu[registerHL.pair]));
			break;
		case 0xb7:
		// RES 6 A
			registerAF.hi = RES(1<<6, registerAF.hi);
			break;
		case 0xb8:
		// RES 7 B
			registerBC.hi = RES(1<<7, registerBC.hi);
			break;
		case 0xb9:
		// RES 7 C
			registerBC.lo = RES(1<<7, registerBC.lo);
			break;
		case 0xba:
		// RES 7 D
			registerDE.hi = RES(1<<7, registerDE.hi);
			break;
		case 0xbb:
		// RES 7 E
			registerDE.lo = RES(1<<7, registerDE.lo);
			break;
		case 0xbc:
		// RES 7 H
			registerHL.hi = RES(1<<7, registerHL.hi);
			break;
		case 0xbd:
		// RES 7 L
			registerHL.lo = RES(1<<7, registerHL.lo);
			break;
		case 0xbe:
		// RES 7 (HL)
			writeMemory(registerHL.pair, RES(1<<7, cpu[registerHL.pair]));
			break;
		case 0xbf:
		// RES 7 A
			registerAF.hi = RES(1<<7, registerAF.hi);
			break;
		case 0xc0:
		// SET 0 B
			registerBC.hi = SET(1<<0, registerBC.hi);
			break;
		case 0xc1:
		// SET 0 C
			registerBC.lo = SET(1<<0, registerBC.lo);
			break;
		case 0xc2:
		// SET 0 D
			registerDE.hi = SET(1<<0, registerDE.hi);
			break;
		case 0xc3:
		// SET 0 E
			registerDE.lo = SET(1<<0, registerDE.lo);
			break;
		case 0xc4:
		// SET 0 H
			registerHL.hi = SET(1<<0, registerHL.hi);
			break;
		case 0xc5:
		// SET 0 L
			registerHL.lo = SET(1<<0, registerHL.lo);
			break;
		case 0xc6:
		// SET 0 (HL)
			writeMemory(registerHL.pair, SET(1<<0, cpu[registerHL.pair]));
			break;
		case 0xc7:
		// SET 0 A
			registerAF.hi = SET(1<<0, registerAF.hi);
			break;
		case 0xc8:
		// SET 1 B
			registerBC.hi = SET(1<<1, registerBC.hi);
			break;
		case 0xc9:
		// SET 1 C
			registerBC.lo = SET(1<<1, registerBC.lo);
			break;
		case 0xca:
		// SET 1 D
			registerDE.hi = SET(1<<1, registerDE.hi);
			break;
		case 0xcb:
		// SET 1 E
			registerDE.lo = SET(1<<1, registerDE.lo);
			break;
		case 0xcc:
		// SET 1 H
			registerHL.hi = SET(1<<1, registerHL.hi);
			break;
		case 0xcd:
		// SET 1 L
			registerHL.lo = SET(1<<1, registerHL.lo);
			break;
		case 0xce:
		// SET 1 (HL)
			writeMemory(registerHL.pair, SET(1<<1, cpu[registerHL.pair]));
			break;
		case 0xcf:
		// SET 1 A
			registerAF.hi = SET(1<<1, registerAF.hi);
			break;
		case 0xd0:
		// SET 2 B
			registerBC.hi = SET(1<<2, registerBC.hi);
			break;
		case 0xd1:
		// SET 2 C
			registerBC.lo = SET(1<<2, registerBC.lo);
			break;
		case 0xd2:
		// SET 2 D
			registerDE.hi = SET(1<<2, registerDE.hi);
			break;
		case 0xd3:
		// SET 2 E
			registerDE.lo = SET(1<<2, registerDE.lo);
			break;
		case 0xd4:
		// SET 2 H
			registerHL.hi = SET(1<<2, registerHL.hi);
			break;
		case 0xd5:
		// SET 2 L
			registerHL.lo = SET(1<<2, registerHL.lo);
			break;
		case 0xd6:
		// SET 2 (HL
			writeMemory(registerHL.pair, SET(1<<2, cpu[registerHL.pair]));
			break;
		case 0xd7:
		// SET 2 A
			registerAF.hi = SET(1<<2, registerAF.hi);
			break;
		case 0xd8:
		// SET 3 B
			registerBC.hi = SET(1<<3, registerBC.hi);
			break;
		case 0xd9:
		// SET 3 C
			registerBC.lo = SET(1<<3, registerBC.lo);
			break;
		case 0xda:
		// SET 3 D
			registerDE.hi = SET(1<<3, registerDE.hi);
			break;
		case 0xdb:
		// SET 3 E
			registerDE.lo = SET(1<<3, registerDE.lo);
			break;
		case 0xdc:
		// SET 3 H
			registerHL.hi = SET(1<<3, registerHL.hi);
			break;
		case 0xdd:
		// SET 3 L
			registerHL.lo = SET(1<<3, registerHL.lo);
			break;
		case 0xde:
		// SET 3 (HL)
			writeMemory(registerHL.pair, SET(1<<3, cpu[registerHL.pair]));
			break;
		case 0xdf:
		// SET 3 A
			registerAF.hi = SET(1<<3, registerAF.hi);
			break;
		case 0xe0:
		// SET 4 B
			registerBC.hi = SET(1<<4, registerBC.hi);
			break;
		case 0xe1:
		// SET 4 C
			registerBC.lo = SET(1<<4, registerBC.lo);
			break;
		case 0xe2:
		// SET 4 D
			registerDE.hi = SET(1<<4, registerDE.hi);
			break;
		case 0xe3:
		// SET 4 E
			registerDE.lo = SET(1<<4, registerDE.lo);
			break;
		case 0xe4:
		// SET 4 H
			registerHL.hi = SET(1<<4, registerHL.hi);
			break;
		case 0xe5:
		// SET 4 L
			registerHL.lo = SET(1<<4, registerHL.lo);
			break;
		case 0xe6:
		// SET 4 (HL)
			writeMemory(registerHL.pair, SET(1<<4, cpu[registerHL.pair]));
			break;
		case 0xe7:
		// SET 4 A
			registerAF.hi = SET(1<<4, registerAF.hi);
			break;
		case 0xe8:
		// SET 5 B
			registerBC.hi = SET(1<<5, registerBC.hi);
			break;
		case 0xe9:
		// SET 5 C
			registerBC.lo = SET(1<<5, registerBC.lo);
			break;
		case 0xea:
		// SET 5 D
			registerDE.hi = SET(1<<5, registerDE.hi);
			break;
		case 0xeb:
		// SET 5 E
			registerDE.lo = SET(1<<5, registerDE.lo);
			break;
		case 0xec:
		// SET 5 H
			registerHL.hi = SET(1<<5, registerHL.hi);
			break;
		case 0xed:
		// SET 5 L
			registerHL.lo = SET(1<<5, registerHL.lo);
			break;
		case 0xee:
		// SET 5 (HL)
			writeMemory(registerHL.pair, SET(1<<5, cpu[registerHL.pair]));
			break;
		case 0xef:
		// SET 5 A
			registerAF.hi = SET(1<<5, registerAF.hi);
			break;
		case 0xf0:
		// SET 6 B
			registerBC.hi = SET(1<<6, registerBC.hi);
			break;
		case 0xf1:
		// SET 6 C
			registerBC.lo = SET(1<<6, registerBC.lo);
			break;
		case 0xf2:
		// SET 6 D
			registerDE.hi = SET(1<<6, registerDE.hi);
			break;
		case 0xf3:
		// SET 6 E
			registerDE.lo = SET(1<<6, registerDE.lo);
			break;
		case 0xf4:
		// SET 6 H
			registerHL.hi = SET(1<<6, registerHL.hi);
			break;
		case 0xf5:
		// SET 6 L
			registerHL.lo = SET(1<<6, registerHL.lo);
			break;
		case 0xf6:
		// SET 6 (HL)
			writeMemory(registerHL.pair, SET(1<<6, cpu[registerHL.pair]));
			break;
		case 0xf7:
		// SET 6 A
			registerAF.hi = SET(1<<6, registerAF.hi);
			break;
		case 0xf8:
		// SET 7 B
			registerBC.hi = SET(1<<7, registerBC.hi);
			break;
		case 0xf9:
		// SET 7 C
			registerBC.lo = SET(1<<7, registerBC.lo);
			break;
		case 0xfa:
		// SET 7 D
			registerDE.hi = SET(1<<7, registerDE.hi);
			break;
		case 0xfb:
		// SET 7 E
			registerDE.lo = SET(1<<7, registerDE.lo);
			break;
		case 0xfc:
		// SET 7 H
			registerHL.hi = SET(1<<7, registerHL.hi);
			break;
		case 0xfd:
		// SET 7 L
			registerHL.lo = SET(1<<7, registerHL.lo);
			break;
		case 0xfe:
		// SET 7 (HL)
			writeMemory(registerHL.pair, SET(1<<7, cpu[registerHL.pair]));
			break;
		case 0xff:
		// SET 7 A
			registerAF.hi = SET(1<<7, registerAF.hi);
			break;
	}
}
void CALL_Z(WORD operand) {if (flagSet(flag_Z)){CALL(operand);}}
void CALL(WORD operand) {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(operand);
}
void RST_08() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0008);
}
void RET_NC() {if (!flagSet(flag_C)){RET();}}
void POP_DE() {
	LD(&registerDE, cpu[SP.pair], 2);SP.pair++;
	LD(&registerDE, cpu[SP.pair], 1);SP.pair++;
}
void JP_NC(WORD operand) {if (!flagSet(flag_C)){JP(operand);}}
void CALL_NC(WORD operand) {if (!flagSet(flag_C)){CALL(operand);}}
void PUSH_DE() {
	SP.pair--;
	writeMemory(SP.pair, registerDE.lo);
	SP.pair--;
	writeMemory(SP.pair, registerDE.hi);
}
void RST_10() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0010);
}
void RET_C() {if (flagSet(flag_C)){RET();}}
void RETI() {
	WORD operand;	
	operand = (cpu[SP.pair]); SP.pair++;
	operand = operand | (cpu[SP.pair]<<8); SP.pair++;
	JP(operand+1);
	EI();
}
void JP_C(WORD operand) {if (flagSet(flag_C)){JP(operand);}}
void CALL_C(WORD operand) {if (flagSet(flag_C)){CALL(operand);}}
void RST_18() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0018);
}
void LD_FF02X_A(BYTE operand) {writeMemory(0xFF00 + operand, registerAF.hi);}
void POP_HL() {
	LD(&registerHL, cpu[SP.pair], 2);SP.pair++;
	LD(&registerHL, cpu[SP.pair], 1);SP.pair++;
}
void LD_FFC_A() {writeMemory(0xFF00 + registerBC.lo, registerAF.hi);}
void PUSH_HL() {
	SP.pair--;
	writeMemory(SP.pair, registerHL.lo);
	SP.pair--;
	writeMemory(SP.pair, registerHL.hi);
}
void RST_20() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0020);
}
void ADD_SP(BYTE operand) {
	clearFlag(flag_N);
	clearFlag(flag_Z);
	int result = SP.pair + operand;
	if (result & 0xFFFF0000) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	if (((SP.pair & 0xF) + (operand & 0xF)) >> 0xF){setFlag(flag_H);}
	else {clearFlag(flag_H);}
	SP.pair = (WORD)(result & 0xFFFF);
}
void JP_HL() {JP(registerHL.pair);}
void LD_04X_A(WORD operand) {writeMemory(operand, registerAF.hi);}
void RST_28() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0028);
}
void LD_A_FF02X(BYTE operand) {LD(&registerAF, cpu[0xFF00 + operand], 2);}
void POP_AF() {
	LD(&registerAF, cpu[SP.pair], 2);SP.pair++;
	LD(&registerAF, cpu[SP.pair], 1);SP.pair++;
}
void LD_A_FFC() {LD(&registerAF, cpu[0xFF00 + registerBC.lo], 2);}
void DI() {}
void PUSH_AF() {
	SP.pair--;
	writeMemory(SP.pair, registerAF.lo);
	SP.pair--;
	writeMemory(SP.pair, registerAF.hi);
}

void RST_30() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0030);
}
void LD_HL_SP02X(BYTE operand) {
	clearFlag(flag_Z);
	clearFlag(flag_N);
	int result = SP.pair + operand;
	if (result & 0xFFFF0000) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	if (((SP.pair & 0xF) + (operand & 0xF)) >> 0xF){setFlag(flag_H);}
	else {clearFlag(flag_H);}
	LD_16(&registerHL, (WORD)(result & 0xFFFF));
}
void LD_SP_HL() {LD_16(&SP, registerHL.pair);}
void LD_A_WORD(WORD operand) {LD(&registerAF, cpu[operand], 2);}
void EI() {}
void RST_38() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0038);
}
void INC_HL_P() {writeMemory(registerHL.pair, INC(cpu[registerHL.pair]));}
void DEC_HL_P() {writeMemory(registerHL.pair, INC(cpu[registerHL.pair]));}