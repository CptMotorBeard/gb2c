#include "hardware.h"
#include "opcodes.h"

// Helper functions for opcodes
// 8-bit loads
void LD(Register r, BYTE immediate, int type) {
	// Use 0 for lo and 1 for hi
	switch (type) {
		case 0:
			r.lo = immediate;
		case 1:
			r.hi = immediate;
	}
}

// 16-bit loads
void LD_16(Register r, WORD immediate) {
	r.pair = immediate;
}

// Flag operations
void setFlag(BYTE flag) {
	registerAF.lo |= flag;
}

void clearFlag(BYTE flag) {
	registerAF.lo &= ~flag;
}

// Functions for all of the opcodes
void NOP() {}
void LD_BC(WORD operand) {LD_16(registerBC, operand);}
void LD_BC_A() {writeMemory(registerBC.pair, registerAF.hi);}
void INC_BC() {}
void INC_B() {}
void DEC_B() {}
void LD_B(BYTE operand) {LD(registerBC, operand, 1);}
void RLCA() {}
void LD_04X_SP(WORD operand) {LD_16(SP, operand);}
void ADD_HL_BC() {}
void LD_A_BC() {LD(registerAF, cpu[registerBC.pair], 1);}
void DEC_BC() {}
void INC_C() {}
void DEC_C() {}
void LD_C(BYTE operand) {LD(registerBC, operand, 0);}
void RRCA() {}
void STOP(BYTE operand) {}
void LD_DE(WORD operand) {LD_16(registerDE, operand);}
void LD_DE_A() {writeMemory(registerDE.pair, registerAF.hi);}
void INC_DE() {}
void INC_D() {}
void DEC_D() {}
void LD_D(BYTE operand) {LD(registerDE, operand, 1);}
void RLA() {}
void JR(BYTE operand) {}
void ADD_HL_DE() {}
void LD_A_DE() {LD(registerAF, cpu[registerDE.pair], 1);}
void DEC_DE() {}
void INC_E() {}
void DEC_E() {}
void LD_E(BYTE operand) {LD(registerDE, operand, 0);}
void RRA() {}
void JR_NZ(BYTE operand) {}
void LD_HL_WORD(WORD operand) {LD_16(registerHL, operand);}
void LDI_HL_A() {LD_HL_A; INC_HL;}
void INC_HL() {}
void INC_H() {}
void DEC_H() {}
void LD_H(BYTE operand) {LD(registerHL, operand, 1);}
void DAA() {}
void JR_Z(BYTE operand) {}
void ADD_HL_HL() {}
void LDI_A_HL() {LD_A_HL; INC_HL;}
void DEC_HL() {}
void INC_L() {}
void DEC_L() {}
void LD_L(BYTE operand) {LD(registerHL, operand, 0);}
void CPL() {}
void JR_NC(BYTE operand) {}
void LD_SP(WORD operand) {LD_16(SP, operand);}
void LDD_HL_A() {LD_HL_A; DEC_HL;}
void INC_SP() {}
void LD_HL_BYTE(BYTE operand) {}
void SCF() {}
void JR_C(BYTE operand) {}
void ADD_HL_SP() {}
void LDD_A_HL() {LD_A_HL; DEC_HL;}
void DEC_SP() {}
void INC_A() {}
void DEC_A() {}
void LD_A_BYTE(BYTE operand) {LD(registerAF, operand, 1);}
void CCF() {}
void LD_B_B() {LD(registerBC, registerBC.hi, 1);}
void LD_B_C() {LD(registerBC, registerBC.lo, 1);}
void LD_B_D() {LD(registerBC, registerDE.hi, 1);}
void LD_B_E() {LD(registerBC, registerDE.lo, 1);}
void LD_B_H() {LD(registerBC, registerHL.hi, 1);}
void LD_B_L() {LD(registerBC, registerHL.lo, 1);}
void LD_B_HL() {LD(registerBC, cpu[registerHL.pair], 1);}
void LD_B_A() {LD(registerBC, registerAF.hi, 1);}
void LD_C_B() {LD(registerBC, registerBC.hi, 0);}
void LD_C_C() {LD(registerBC, registerBC.lo, 0);}
void LD_C_D() {LD(registerBC, registerDE.hi, 0);}
void LD_C_E() {LD(registerBC, registerDE.lo, 0);}
void LD_C_H() {LD(registerBC, registerHL.hi, 0);}
void LD_C_L() {LD(registerBC, registerHL.lo, 0);}
void LD_C_HL() {LD(registerBC, cpu[registerHL.pair], 0);}
void LD_C_A() {LD(registerBC, registerAF.hi, 0);}
void LD_D_B() {LD(registerDE, registerBC.hi, 1);}
void LD_D_C() {LD(registerDE, registerBC.lo, 1);}
void LD_D_D() {LD(registerDE, registerDE.hi, 1);}
void LD_D_E() {LD(registerDE, registerDE.lo, 1);}
void LD_D_H() {LD(registerDE, registerHL.hi, 1);}
void LD_D_L() {LD(registerDE, registerHL.lo, 1);}
void LD_D_HL() {LD(registerDE, cpu[registerHL.pair], 1);}
void LD_D_A() {LD(registerDE, registerAF.hi, 1);}
void LD_E_B() {LD(registerDE, registerBC.hi, 0);}
void LD_E_C() {LD(registerDE, registerBC.lo, 0);}
void LD_E_D() {LD(registerDE, registerDE.hi, 0);}
void LD_E_E() {LD(registerDE, registerDE.lo, 0);}
void LD_E_H() {LD(registerDE, registerHL.hi, 0);}
void LD_E_L() {LD(registerDE, registerHL.lo, 0);}
void LD_E_HL() {LD(registerDE, cpu[registerHL.pair], 0);}
void LD_E_A() {LD(registerDE, registerAF.hi, 0);}
void LD_H_B() {LD(registerHL, registerBC.hi, 1);}
void LD_H_C() {LD(registerHL, registerBC.lo, 1);}
void LD_H_D() {LD(registerHL, registerDE.hi, 1);}
void LD_H_E() {LD(registerHL, registerDE.lo, 1);}
void LD_H_H() {LD(registerHL, registerHL.hi, 1);}
void LD_H_L() {LD(registerHL, registerHL.lo, 1);}
void LD_H_HL() {LD(registerHL, cpu[registerHL.pair], 1);}
void LD_H_A() {LD(registerHL, registerAF.hi, 1);}
void LD_L_B() {LD(registerHL, registerBC.hi, 0);}
void LD_L_C() {LD(registerHL, registerBC.lo, 0);}
void LD_L_D() {LD(registerHL, registerDE.hi, 0);}
void LD_L_E() {LD(registerHL, registerDE.lo, 0);}
void LD_L_H() {LD(registerHL, registerHL.hi, 0);}
void LD_L_L() {LD(registerHL, registerHL.lo, 0);}
void LD_L_HL() {LD(registerHL, cpu[registerHL.pair], 0);}
void LD_L_A() {LD(registerHL, registerAF.hi, 0);}
void LD_HL_B() {writeMemory(registerHL.pair, registerBC.hi);}
void LD_HL_C() {writeMemory(registerHL.pair, registerBC.lo);}
void LD_HL_D() {writeMemory(registerHL.pair, registerDE.hi);}
void LD_HL_E() {writeMemory(registerHL.pair, registerDE.lo);}
void LD_HL_H() {writeMemory(registerHL.pair, registerHL.hi);}
void LD_HL_L() {writeMemory(registerHL.pair, registerHL.lo);}
void HALT() {}
void LD_HL_A() {writeMemory(registerHL.pair, registerAF.hi);}
void LD_A_B() {LD(registerAF, registerBC.hi, 1);}
void LD_A_C() {LD(registerAF, registerBC.lo, 1);}
void LD_A_D() {LD(registerAF, registerDE.hi, 1);}
void LD_A_E() {LD(registerAF, registerDE.lo, 1);}
void LD_A_H() {LD(registerAF, registerHL.hi, 1);}
void LD_A_L() {LD(registerAF, registerHL.lo, 1);}
void LD_A_HL() {LD(registerAF, cpu[registerHL.pair], 1);}
void LD_A_A() {LD(registerAF, registerAF.hi, 1);}
void ADD_A_B() {}
void ADD_A_C() {}
void ADD_A_D() {}
void ADD_A_E() {}
void ADD_A_H() {}
void ADD_A_L() {}
void ADD_A_HL() {}
void ADD_A() {}
void ADC_B() {}
void ADC_C() {}
void ADC_D() {}
void ADC_E() {}
void ADC_H() {}
void ADC_L() {}
void ADC_HL() {}
void ADC_A() {}
void SUB_B() {}
void SUB_C() {}
void SUB_D() {}
void SUB_E() {}
void SUB_H() {}
void SUB_L() {}
void SUB_HL() {}
void SUB_A() {}
void SBC_B() {}
void SBC_C() {}
void SBC_D() {}
void SBC_E() {}
void SBC_H() {}
void SBC_L() {}
void SBC_HL() {}
void SBC_A() {}
void AND_B() {}
void AND_C() {}
void AND_D() {}
void AND_E() {}
void AND_H() {}
void AND_L() {}
void AND_HL() {}
void AND_A() {}
void XOR_B() {}
void XOR_C() {}
void XOR_D() {}
void XOR_E() {}
void XOR_H() {}
void XOR_L() {}
void XOR_HL() {}
void XOR_A() {}
void OR_B() {}
void OR_C() {}
void OR_D() {}
void OR_E() {}
void OR_H() {}
void OR_L() {}
void OR_HL() {}
void OR_A() {}
void CP_B() {}
void CP_C() {}
void CP_D() {}
void CP_E() {}
void CP_H() {}
void CP_L() {}
void CP_HL() {}
void CP_A() {}
void RET_NZ() {}
void POP_BC() {
	LD_16(registerBC, cpu[SP.pair]);
	SP.pair++;SP.pair++;
}
void JP_NZ(WORD operand) {}
void JP(WORD operand) {PC = operand;}
void CALL_NZ(WORD operand) {}
void PUSH_BC() {
	SP.pair--;
	writeMemory(SP.pair, registerBC.lo);
	SP.pair--;
	writeMemory(SP.pair, registerBC.hi);
}
void ADD_A_BYTE(BYTE operand) {}
void RST_00() {}
void RET_Z() {}
void RET() {}
void JP_Z(WORD operand) {}
void CB(BYTE operand) {}
void CALL_Z(WORD operand) {}
void CALL(WORD operand) {}
void ADC(BYTE operand) {}
void RST_08() {}
void RET_NC() {}
void POP_DE() {
	LD_16(registerDE, cpu[SP.pair]);
	SP.pair++;SP.pair++;
}
void JP_NC(WORD operand) {}
void CALL_NC(WORD operand) {}
void PUSH_DE() {
	SP.pair--;
	writeMemory(SP.pair, registerDE.lo);
	SP.pair--;
	writeMemory(SP.pair, registerDE.hi);
}
void SUB(BYTE operand) {}
void RST_10() {}
void RET_C() {}
void RETI() {}
void JP_C(WORD operand) {}
void CALL_C(WORD operand) {}
void SBC(BYTE operand) {}
void RST_18() {}
void LD_FF02X_A(BYTE operand) {writeMemory(0xFF00 + operand, registerAF.hi);}
void POP_HL() {
	LD_16(registerHL, cpu[SP.pair]);
	SP.pair++;SP.pair++;
}
void LD_FFC_A() {writeMemory(0xFF00 + registerBC.lo, registerAF.hi);}
void PUSH_HL() {
	SP.pair--;
	writeMemory(SP.pair, registerHL.lo);
	SP.pair--;
	writeMemory(SP.pair, registerHL.hi);
}
void AND(BYTE operand) {}
void RST_20() {}
void ADD_SP(BYTE operand) {}
void JP_HL() {}
void LD_04X_A(WORD operand) {writeMemory(operand, registerAF.hi);}
void XOR(BYTE operand) {}
void RST_28() {}
void LD_A_FF02X(BYTE operand) {LD(registerAF, cpu[0xFF00 + operand], 1);}
void POP_AF() {
	LD_16(registerAF, cpu[SP.pair]);
	SP.pair++;SP.pair++;
}
void LD_A_FFC() {LD(registerAF, cpu[0xFF00 + registerBC.lo], 1);}
void DI() {}
void PUSH_AF() {
	SP.pair--;
	writeMemory(SP.pair, registerAF.lo);
	SP.pair--;
	writeMemory(SP.pair, registerAF.hi);
}
void OR(BYTE operand) {}
void RST_30() {}
void LD_HL_SP02X(BYTE operand) {
	clearFlag(flag_Z);
	clearFlag(flag_N);
	int result = SP.pair + operand;
	if (result & 0xFFFF0000) {setFlag(flag_C);}
	else {clearFlag(flag_C);}
	if (((SP.pair & 0xF) + (operand & 0xF)) > 0xF){setFlag(flag_H);}
	else {clearFlag(flag_H);}
	LD_16(registerHL, (WORD)(result & 0xFFFF));
}
void LD_SP_HL() {LD_16(SP, registerHL.pair);}
void LD_A_WORD(WORD operand) {LD(registerAF, cpu[operand], 1);}
void EI() {}
void CP(BYTE operand) {}
void RST_38() {}