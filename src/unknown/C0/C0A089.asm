
UNKNOWN_C0A089: ;$C0A089
	LDX $88
	LDA .LOWORD(ENTITY_ABS_X_TABLE),X
	CLC
	ADC a:.LOWORD(BG3_X_POS)
	STA .LOWORD(ENTITY_ABS_X_TABLE),X
	LDA .LOWORD(ENTITY_ABS_Y_TABLE),X
	CLC
	ADC a:.LOWORD(BG3_Y_POS)
	STA .LOWORD(ENTITY_ABS_Y_TABLE),X
	RTL
