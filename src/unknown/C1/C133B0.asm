
UNKNOWN_C133B0: ;$C133B0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 29
	LDA .LOWORD(UNKNOWN_7E5E6C)
	AND #$00FF
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN8)
@UNKNOWN0:
	LDA #$0001
	STA $02
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN1:
	LDA $02
	CMP #$0003
	BNE @UNKNOWN2
	JSR a:.LOWORD(UNKNOWN_C1C373)
	CMP #$0000
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN2:
	LDA $02
	CMP #$0001
	BEQ @UNKNOWN3
	LDA $02
	CMP #$0005
	BEQ @UNKNOWN3
	LDA $02
	CMP #$0002
	BNE @UNKNOWN4
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN4
	LDX #$0001
	LDA .LOWORD(GAME_STATE)+122
	AND #$00FF
	JSL UNKNOWN_C3E977
	CMP #$0000
	BNE @UNKNOWN4
@UNKNOWN3:
	LDY #$0001
	BRA @UNKNOWN5
@UNKNOWN4:
	LDY #$001B
@UNKNOWN5:
	LDA $02
	DEC
	STA $1B
	LOADPTR DEBUG_MENU_ELEMENT_SPACING_DATA, $06
	MOVE_INT $06, $17
	LDA $1B
	ASL
	TAX
	LOADPTR CMD_WINDOW_TEXT, $06
	LDA $1B
	OPTIMIZED_MULT $04, 10
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	MOVE_INT_CONSTANT NULL, $12
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA $16
	REP #PROC_FLAGS::ACCUM8
	TXA
	INC
	MOVE_INTY $17, $06
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAY
	TXA
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	TAX
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C11596)
@UNKNOWN6:
	INC $02
@UNKNOWN7:
	LDA $02
	CMP #$0007
	BCS @UNKNOWN8
	BEQ @UNKNOWN8
	JMP a:.LOWORD(@UNKNOWN1)
@UNKNOWN8:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5E6C)
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	PLD
	RTS