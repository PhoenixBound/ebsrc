
UNKNOWN_C0A023: ;$C0A023
	LDX $88
	LDA .LOWORD(SPRITE_ABS_X_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_X_POS)
	STA .LOWORD(SPRITE_SCREEN_X_TABLE),X
	LDA .LOWORD(SPRITE_ABS_Y_TABLE),X
	SEC
	SBC a:.LOWORD(BG1_Y_POS)
	STA .LOWORD(SPRITE_SCREEN_Y_TABLE),X
	RTS