
FILE_SELECT_INIT: ;$C0B525
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C0927C
	JSL OAM_CLEAR
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	JSL UNKNOWN_C01A86
	LDX #$0000
	LDA #$8000
	JSL ALLOC_SPRITE_MEM
	JSL UNKNOWN_C01A69
	JSL UNKNOWN_C00013
	JSL UNKNOWN_C432B1
	JSL UNKNOWN_C005E7
	LOADPTR SPRITE_GROUP_PALETTES, $0E
	LDX #$0100
	LDA #$0300
	JSL MEMCPY16
	JSL UNKNOWN_C200D9
	LOADPTR UNKNOWN_7F0000, $06
	LDA #$0000
	STA [$06]
	COPY_TO_VRAM1P $06, $7C00, $800, $03
	.A16
	LOADPTR TEXT_WINDOW_GFX, $0E
	MOVE_INT $06, $12
	JSL DECOMP
	.A16
	LOADPTR UNKNOWN_7F2000, $0E
	LOADPTR UNKNOWN_7F1000, $12
	LDA #$2A00
	JSL MEMCPY24
	LDA #$0001
	JSL UNKNOWN_C44963
	LOADPTR TEXT_WINDOW_FLAVOUR_PALETTES, $0E
	LDX #$0040
	LDA #$0200
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E002F)+1
	LDX #$0000
	REP #PROC_FLAGS::ACCUM8
	LDA #BATTLEBG_LAYER::FILE_SELECT
	JSL LOAD_BACKGROUND_ANIMATION
	LDA #$0017
	STA .LOWORD(UNKNOWN_7E0A4C)
	LDA #$0018
	STA .LOWORD(UNKNOWN_7E0A4E)
	LDY #$0000
	TYX
	LDA #$0313
	JSL UNKNOWN_C092F5_ENTRY2
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0016
	STA a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL OAM_CLEAR
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	LDX #$0001
	TXA
	JSL UNKNOWN_C0886C
	JSL UNKNOWN_C1FF6B
	LDY #$0000
	LDX #$0001
	TXA
	JSL UNKNOWN_C08814
	LDA #$0017
	JSL UNKNOWN_C09C35
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::sound_setting
	AND #$00FF
	DEC
	JSL UNKNOWN_C4FD18
	PLD
	RTS
