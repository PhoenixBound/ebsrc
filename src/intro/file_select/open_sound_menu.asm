
OPEN_SOUND_MENU: ;$C1F568
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFE6
	TCD
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_MUSIC_MODE
	JSL SET_9622_ONE
	LOADPTR FILE_SELECT_TEXT_SELECT_SOUND_SETTING, $0E
	LDA #$001C
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LOADPTR FILE_SELECT_TEXT_SOUND_SETTING_STRINGS, $0A
	MOVE_INT_CONSTANT NULL, $06
	MOVE_INT $06, $16
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDX #$0001
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA #SOUND_SETTING_STRING_LENGTH
	LDX $0A
	STX $06
	LDX $0C
	STX $08
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDX #$0002
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA .LOWORD(GAME_STATE)+game_state::sound_setting
	AND #$00FF
	BEQ @UNKNOWN0
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$0000
@UNKNOWN1:
	TXA
	JSR a:.LOWORD(UNKNOWN_C11887)
	PLD
	RTS
