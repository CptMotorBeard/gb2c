// #include <hardware.h> commented out for now
typedef unsigned char BYTE;
typedef unsigned short WORD;
// Functions for all of the opcodes

void NOP() {}
void LD_BC(WORD operand) {}
void LD_BC_A() {}
void INC_BC() {}
void INC_B() {}
void DEC_B() {}
void LD_B(BYTE operand) {}
void RLCA() {}
void LD_04X_SP(WORD operand) {}
void ADD_HL_BC() {}
void LD_A_BC() {}
void DEC_BC() {}
void INC_C() {}
void DEC_C() {}
void LD_C(BYTE operand) {}
void RRCA() {}
void STOP(BYTE operand) {}
void LD_DE(WORD operand) {}
void LD_DE_A() {}
void INC_DE() {}
void INC_D() {}
void DEC_D() {}
void LD_D(BYTE operand) {}
void RLA() {}
void JR(BYTE operand) {}
void ADD_HL_DE() {}
void LD_A_DE() {}
void DEC_DE() {}
void INC_E() {}
void DEC_E() {}
void LD_E(BYTE operand) {}
void RRA() {}
void JR_NZ(BYTE operand) {}
void LD_HL_WORD(WORD operand) {}
void LDI_HL_A() {}
void INC_HL() {}
void INC_H() {}
void DEC_H() {}
void LD_H(BYTE operand) {}
void DAA() {}
void JR_Z(BYTE operand) {}
void ADD_HL_HL() {}
void LDI_A_HL() {}
void DEC_HL() {}
void INC_L() {}
void DEC_L() {}
void LD_L(BYTE operand) {}
void CPL() {}
void JR_NC(BYTE operand) {}
void LD_SP(WORD operand) {}
void LDD_HL_A() {}
void INC_SP() {}
void LD_HL_BYTE(BYTE operand) {}
void SCF() {}
void JR_C(BYTE operand) {}
void ADD_HL_SP() {}
void LDD_A_HL() {}
void DEC_SP() {}
void INC_A() {}
void DEC_A() {}
void LD_A_BYTE(BYTE operand) {}
void CCF() {}
void LD_B_B() {}
void LD_B_C() {}
void LD_B_D() {}
void LD_B_E() {}
void LD_B_H() {}
void LD_B_L() {}
void LD_B_HL() {}
void LD_B_A() {}
void LD_C_B() {}
void LD_C_C() {}
void LD_C_D() {}
void LD_C_E() {}
void LD_C_H() {}
void LD_C_L() {}
void LD_C_HL() {}
void LD_C_A() {}
void LD_D_B() {}
void LD_D_C() {}
void LD_D_D() {}
void LD_D_E() {}
void LD_D_H() {}
void LD_D_L() {}
void LD_D_HL() {}
void LD_D_A() {}
void LD_E_B() {}
void LD_E_C() {}
void LD_E_D() {}
void LD_E_E() {}
void LD_E_H() {}
void LD_E_L() {}
void LD_E_HL() {}
void LD_E_A() {}
void LD_H_B() {}
void LD_H_C() {}
void LD_H_D() {}
void LD_H_E() {}
void LD_H_H() {}
void LD_H_L() {}
void LD_H_HL() {}
void LD_H_A() {}
void LD_L_B() {}
void LD_L_C() {}
void LD_L_D() {}
void LD_L_E() {}
void LD_L_H() {}
void LD_L_L() {}
void LD_L_HL() {}
void LD_L_A() {}
void LD_HL_B() {}
void LD_HL_C() {}
void LD_HL_D() {}
void LD_HL_E() {}
void LD_HL_H() {}
void LD_HL_L() {}
void HALT() {}
void LD_HL_A() {}
void LD_A_B() {}
void LD_A_C() {}
void LD_A_D() {}
void LD_A_E() {}
void LD_A_H() {}
void LD_A_L() {}
void LD_A_HL() {}
void LD_A_A() {}
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
void POP_BC() {}
void JP_NZ(WORD operand) {}
void JP(WORD operand) {}
void CALL_NZ(WORD operand) {}
void PUSH_BC() {}
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
void POP_DE() {}
void JP_NC(WORD operand) {}
void CALL_NC(WORD operand) {}
void PUSH_DE() {}
void SUB(BYTE operand) {}
void RST_10() {}
void RET_C() {}
void RETI() {}
void JP_C(WORD operand) {}
void CALL_C(WORD operand) {}
void SBC(BYTE operand) {}
void RST_18() {}
void LD_FF02X_A(BYTE operand) {}
void POP_HL() {}
void LD_FFC_A() {}
void PUSH_HL() {}
void AND(BYTE operand) {}
void RST_20() {}
void ADD_SP(BYTE operand) {}
void JP_HL() {}
void LD_04X_A(WORD operand) {}
void XOR(BYTE operand) {}
void RST_28() {}
void LD_A_FF02X(BYTE operand) {}
void POP_AF() {}
void LD_A_FFC() {}
void DI() {}
void PUSH_AF() {}
void OR(BYTE operand) {}
void RST_30() {}
void LD_HL_SP02X(BYTE operand) {}
void LD_SP_HL() {}
void LD_A_WORD(WORD operand) {}
void EI() {}
void CP(BYTE operand) {}
void RST_38() {}
