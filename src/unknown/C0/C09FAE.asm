
UNKNOWN_C09FAE: ;$C09FAE
	LDA [$80],Y
	INY
	INY
	STY $94
	XBA
	TAX
	XBA
	JMP f:UNKNOWN_C0886C
UNKNOWN_C09FAE_MOVEMENT_ENTRY: ;$C09FBB
	LDA [$80],Y
	INY
	INY
	STY $94
	XBA
	TAX
	XBA
	JMP f:UNKNOWN_C0887A
UNKNOWN_C09FAE_ENTRY2: ;$C09FC8
	LDX $88
UNKNOWN_C09FAE_ENTRY3:
	LDA .LOWORD(SPRITE_ABS_X_FRACTION_TABLE),X
	CLC
	ADC .LOWORD(SPRITE_DELTA_X_FRACTION_TABLE),X
	STA .LOWORD(SPRITE_ABS_X_FRACTION_TABLE),X
	LDA .LOWORD(SPRITE_ABS_X_TABLE),X
	ADC .LOWORD(SPRITE_DELTA_X_TABLE),X
	STA .LOWORD(SPRITE_ABS_X_TABLE),X
	LDA .LOWORD(SPRITE_ABS_Y_FRACTION_TABLE),X
	CLC
	ADC .LOWORD(SPRITE_DELTA_Y_FRACTION_TABLE),X
	STA .LOWORD(SPRITE_ABS_Y_FRACTION_TABLE),X
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	ADC .LOWORD(SPRITE_DELTA_Y_TABLE),X
	STA .LOWORD(SPRITE_ABS_Y_TABLE),X
UNKNOWN_C09FAE_ENTRY4:
	RTS
