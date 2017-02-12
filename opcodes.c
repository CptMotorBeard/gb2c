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

// Functions for all of the opcodes
void NOP() {}
void LD_BC(WORD operand) {LD_16(&registerBC, operand);}
void LD_BC_A() {writeMemory(registerBC.pair, registerAF.hi);}
void INC_BC() {}
void INC_B() {}
void DEC_B() {}
void LD_B(BYTE operand) {LD(&registerBC, operand, 2);}
void RLCA() {}
void LD_04X_SP(WORD operand) {LD_16(&SP, operand);}
void ADD_HL_BC() {}
void LD_A_BC() {LD(&registerAF, cpu[registerBC.pair], 2);}
void DEC_BC() {}
void INC_C() {}
void DEC_C() {}
void LD_C(BYTE operand) {LD(&registerBC, operand, 1);}
void RRCA() {}
void STOP(BYTE operand) {}
void LD_DE(WORD operand) {LD_16(&registerDE, operand);}
void LD_DE_A() {writeMemory(registerDE.pair, registerAF.hi);}
void INC_DE() {}
void INC_D() {}
void DEC_D() {}
void LD_D(BYTE operand) {LD(&registerDE, operand, 2);}
void RLA() {}
void JR(BYTE operand) {JP(PC.pair + (SIGNED_BYTE)operand);}
void ADD_HL_DE() {}
void LD_A_DE() {LD(&registerAF, cpu[registerDE.pair], 2);}
void DEC_DE() {}
void INC_E() {}
void DEC_E() {}
void LD_E(BYTE operand) {LD(&registerDE, operand, 1);}
void RRA() {}
void JR_NZ(BYTE operand) {if (!flagSet(flag_Z)){JR(operand);}}
void LD_HL_WORD(WORD operand) {LD_16(&registerHL, operand);}
void LDI_HL_A() {LD_HL_A; INC_HL;}
void INC_HL() {}
void INC_H() {}
void DEC_H() {}
void LD_H(BYTE operand) {LD(&registerHL, operand, 2);}
void DAA() {}
void JR_Z(BYTE operand) {if (flagSet(flag_Z)){JR(operand);}}
void ADD_HL_HL() {}
void LDI_A_HL() {LD_A_HL; INC_HL;}
void DEC_HL() {}
void INC_L() {}
void DEC_L() {}
void LD_L(BYTE operand) {LD(&registerHL, operand, 1);}
void CPL() {
	setFlag(flag_N);
	setFlag(flag_H);
	registerAF.hi = ~registerAF.hi;
}
void JR_NC(BYTE operand) {if (!flagSet(flag_C)){JR(operand);}}
void LD_SP(WORD operand) {LD_16(&SP, operand);}
void LDD_HL_A() {LD_HL_A; DEC_HL;}
void INC_SP() {}
void LD_HL_BYTE(BYTE operand) {}
void SCF() {
	clearFlag(flag_N);
	clearFlag(flag_H);
	setFlag(flag_C);
}
void JR_C(BYTE operand) {if (flagSet(flag_C)){JR(operand);}}
void ADD_HL_SP() {}
void LDD_A_HL() {LD_A_HL; DEC_HL;}
void DEC_SP() {}
void INC_A() {}
void DEC_A() {}
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
void RET_NZ() {if (!flagSet(flag_Z)){RET();}}
void POP_BC() {
	LD(&registerBC, cpu[SP.pair], 2);SP.pair++;
	LD(&registerBC, cpu[SP.pair], 1);SP.pair++;
}
void JP_NZ(WORD operand) {if (!flagSet(flag_Z)){JP(operand);}}
void JP(WORD operand) {PC.pair = operand;}
void CALL_NZ(WORD operand) {if (!flagSet(flag_Z)){CALL(operand);}}
void PUSH_BC() {
	SP.pair--;
	writeMemory(SP.pair, registerBC.lo);
	SP.pair--;
	writeMemory(SP.pair, registerBC.hi);
}
void ADD_A_BYTE(BYTE operand) {}
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
	JP(loc);
}
void JP_Z(WORD operand) {if (flagSet(flag_Z)){JP(operand);}}
void CB(BYTE operand) {}
void CALL_Z(WORD operand) {if (flagSet(flag_Z)){CALL(operand);}}
void CALL(WORD operand) {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(operand);
}
void ADC(BYTE operand) {}
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
void SUB(BYTE operand) {}
void RST_10() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0010);
}
void RET_C() {if (flagSet(flag_C)){RET();}}
void RETI() {}
void JP_C(WORD operand) {if (flagSet(flag_C)){JP(operand);}}
void CALL_C(WORD operand) {if (flagSet(flag_C)){CALL(operand);}}
void SBC(BYTE operand) {}
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
void AND(BYTE operand) {}
void RST_20() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0020);
}
void ADD_SP(BYTE operand) {}
void JP_HL() {JP(registerHL.pair);}
void LD_04X_A(WORD operand) {writeMemory(operand, registerAF.hi);}
void XOR(BYTE operand) {}
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
void OR(BYTE operand) {}
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
void CP(BYTE operand) {}
void RST_38() {
	SP.pair--;
	writeMemory(SP.pair, PC.lo);
	SP.pair--;
	writeMemory(SP.pair, PC.hi);
	JP(0x0038);
}