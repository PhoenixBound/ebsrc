
OPEN_TEXT_SPEED_MENU: ;$C1F3C2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFE6
	TCD
	LDA #$0018
	JSR a:.LOWORD(CREATE_WINDOW)
	JSL SET_9622_ONE
	LOADPTR FILE_SELECT_TEXT_SELECT_TEXT_SPEED, $0E
	LDA #$0019
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LOADPTR FILE_SELECT_TEXT_TEXTSPEED_STRINGS, $06
	LDA $06
	STA $16
	LDA $08
	STA $18
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDX #$0001
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA #TEXT_SPEED_STRING_LENGTH
	LDX $16
	STX $06
	LDX $18
	STX $08
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDX #$0002
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA #TEXT_SPEED_STRING_LENGTH*2
	LDX $16
	STX $06
	LDX $18
	STX $08
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDX #$0003
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C114B1)
	LDA .LOWORD(GAME_STATE)+game_state::text_speed
	AND #$00FF
	BEQ @UNKNOWN0
	AND #$00FF
	TAX
	DEX
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #$0001
@UNKNOWN1:
	TXA
	JSR a:.LOWORD(UNKNOWN_C11887)
	PLD
	RTL