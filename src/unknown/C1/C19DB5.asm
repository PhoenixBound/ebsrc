
UNKNOWN_C19DB5: ;$C19DB5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STA $1E
	JSR a:.LOWORD(UNKNOWN_C1AA18)
	JSL SET_9622_ONE
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN0C
	LDA #$0005
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDA #$0000
	STA $04
	STA $1C
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN0:
	LDA $1E
	OPTIMIZED_MULT $04, 7
	LDX $1C
	STX $04
	CLC
	ADC $04
	TAX
	LDA f:STORE_TABLE,X
	AND #$00FF
	TAY
	STY $1A
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN1:
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	MOVE_INT $06, $16
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	STA $02
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9C9F)+.SIZEOF(item::name)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY $1A
	TYA
	JSR a:.LOWORD(UNKNOWN_C115F4)
	LDX $04
	LDA #$0000
	JSL UNKNOWN_C438A5
	LDA $02
	CLC
	ADC #$001A
	MOVE_INTX $16, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSL UNKNOWN_C4507A
@UNKNOWN2:
	INC $04
	LDA $04
	STA $1C
@UNKNOWN3:
	LDA $04
	CMP #$0007
	BCS @UNKNOWN4
	BEQ @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN4:
	LDX #$0000
	TXA
	JSL UNKNOWN_C438A5
	LDY #$0000
	TYX
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C1180D)
	LOADPTR SET_HPPP_WINDOW_MODE_ITEM, $0E
	JSR a:.LOWORD(UNKNOWN_C11F5A)
	JSR a:.LOWORD(UNKNOWN_C19CDD)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $1A
	JSR a:.LOWORD(UNKNOWN_C19D49)
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	JSL CLEAR_9622
	LDX $1A
	TXA
	PLD
	RTS
