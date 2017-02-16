// initialize the opcodes

void NOP(void);
void LD_BC(WORD operand);
void LD_BC_A(void);
void INC_BC(void);
void INC_B(void);
void DEC_B(void);
void LD_B(BYTE operand);
void RLCA(void);
void LD_04X_SP(WORD operand);
void ADD_HL_BC(void);
void LD_A_BC(void);
void DEC_BC(void);
void INC_C(void);
void DEC_C(void);
void LD_C(BYTE operand);
void RRCA(void);
void STOP(BYTE operand);
void LD_DE(WORD operand);
void LD_DE_A(void);
void INC_DE(void);
void INC_D(void);
void DEC_D(void);
void LD_D(BYTE operand);
void RLA(void);
void JR(BYTE operand);
void ADD_HL_DE(void);
void LD_A_DE(void);
void DEC_DE(void);
void INC_E(void);
void DEC_E(void);
void LD_E(BYTE operand);
void RRA(void);
void JR_NZ(BYTE operand);
void LD_HL_WORD(WORD operand);
void LDI_HL_A(void);
void INC_HL(void);
void INC_H(void);
void DEC_H(void);
void LD_H(BYTE operand);
void DAA(void);
void JR_Z(BYTE operand);
void ADD_HL_HL(void);
void LDI_A_HL(void);
void DEC_HL(void);
void INC_L(void);
void DEC_L(void);
void LD_L(BYTE operand);
void CPL(void);
void JR_NC(BYTE operand);
void LD_SP(WORD operand);
void LDD_HL_A(void);
void INC_SP(void);
void LD_HL_BYTE(BYTE operand);
void SCF(void);
void JR_C(BYTE operand);
void ADD_HL_SP(void);
void LDD_A_HL(void);
void DEC_SP(void);
void INC_A(void);
void DEC_A(void);
void LD_A_BYTE(BYTE operand);
void CCF(void);
void LD_B_B(void);
void LD_B_C(void);
void LD_B_D(void);
void LD_B_E(void);
void LD_B_H(void);
void LD_B_L(void);
void LD_B_HL(void);
void LD_B_A(void);
void LD_C_B(void);
void LD_C_C(void);
void LD_C_D(void);
void LD_C_E(void);
void LD_C_H(void);
void LD_C_L(void);
void LD_C_HL(void);
void LD_C_A(void);
void LD_D_B(void);
void LD_D_C(void);
void LD_D_D(void);
void LD_D_E(void);
void LD_D_H(void);
void LD_D_L(void);
void LD_D_HL(void);
void LD_D_A(void);
void LD_E_B(void);
void LD_E_C(void);
void LD_E_D(void);
void LD_E_E(void);
void LD_E_H(void);
void LD_E_L(void);
void LD_E_HL(void);
void LD_E_A(void);
void LD_H_B(void);
void LD_H_C(void);
void LD_H_D(void);
void LD_H_E(void);
void LD_H_H(void);
void LD_H_L(void);
void LD_H_HL(void);
void LD_H_A(void);
void LD_L_B(void);
void LD_L_C(void);
void LD_L_D(void);
void LD_L_E(void);
void LD_L_H(void);
void LD_L_L(void);
void LD_L_HL(void);
void LD_L_A(void);
void LD_HL_B(void);
void LD_HL_C(void);
void LD_HL_D(void);
void LD_HL_E(void);
void LD_HL_H(void);
void LD_HL_L(void);
void HALT(void);
void LD_HL_A(void);
void LD_A_B(void);
void LD_A_C(void);
void LD_A_D(void);
void LD_A_E(void);
void LD_A_H(void);
void LD_A_L(void);
void LD_A_HL(void);
void LD_A_A(void);
void ADD_A_B(void);
void ADD_A_C(void);
void ADD_A_D(void);
void ADD_A_E(void);
void ADD_A_H(void);
void ADD_A_L(void);
void ADD_A_HL(void);
void ADD_A(void);
void ADC_B(void);
void ADC_C(void);
void ADC_D(void);
void ADC_E(void);
void ADC_H(void);
void ADC_L(void);
void ADC_HL(void);
void ADC_A(void);
void SUB_B(void);
void SUB_C(void);
void SUB_D(void);
void SUB_E(void);
void SUB_H(void);
void SUB_L(void);
void SUB_HL(void);
void SUB_A(void);
void SBC_B(void);
void SBC_C(void);
void SBC_D(void);
void SBC_E(void);
void SBC_H(void);
void SBC_L(void);
void SBC_HL(void);
void SBC_A(void);
void AND_B(void);
void AND_C(void);
void AND_D(void);
void AND_E(void);
void AND_H(void);
void AND_L(void);
void AND_HL(void);
void AND_A(void);
void XOR_B(void);
void XOR_C(void);
void XOR_D(void);
void XOR_E(void);
void XOR_H(void);
void XOR_L(void);
void XOR_HL(void);
void XOR_A(void);
void OR_B(void);
void OR_C(void);
void OR_D(void);
void OR_E(void);
void OR_H(void);
void OR_L(void);
void OR_HL(void);
void OR_A(void);
void CP_B(void);
void CP_C(void);
void CP_D(void);
void CP_E(void);
void CP_H(void);
void CP_L(void);
void CP_HL(void);
void CP_A(void);
void RET_NZ(void);
void POP_BC(void);
void JP_NZ(WORD operand);
void JP(WORD operand);
void CALL_NZ(WORD operand);
void PUSH_BC(void);
void ADD_A_BYTE(BYTE operand);
void RST_00(void);
void RET_Z(void);
void RET(void);
void JP_Z(WORD operand);
void CB(BYTE operand);
void CALL_Z(WORD operand);
void CALL(WORD operand);
void ADC(BYTE operand);
void RST_08(void);
void RET_NC(void);
void POP_DE(void);
void JP_NC(WORD operand);
void CALL_NC(WORD operand);
void PUSH_DE(void);
void SUB(BYTE operand);
void RST_10(void);
void RET_C(void);
void RETI(void);
void JP_C(WORD operand);
void CALL_C(WORD operand);
void SBC(BYTE operand);
void RST_18(void);
void LD_FF02X_A(BYTE operand);
void POP_HL(void);
void LD_FFC_A(void);
void PUSH_HL(void);
void AND(BYTE operand);
void RST_20(void);
void ADD_SP(BYTE operand);
void JP_HL(void);
void LD_04X_A(WORD operand);
void XOR(BYTE operand);
void RST_28(void);
void LD_A_FF02X(BYTE operand);
void POP_AF(void);
void LD_A_FFC(void);
void DI(void);
void PUSH_AF(void);
void OR(BYTE operand);
void RST_30(void);
void LD_HL_SP02X(BYTE operand);
void LD_SP_HL(void);
void LD_A_WORD(WORD operand);
void EI(void);
void CP(BYTE operand);
void RST_38(void);
void INC_HL_P(void);
void DEC_HL_P(void);