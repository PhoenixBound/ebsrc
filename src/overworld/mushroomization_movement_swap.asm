
MUSHROOMIZATION_MOVEMENT_SWAP: ;$C02C89
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA .LOWORD(MUSHROOMIZATION_TIMER)
	BNE @STILL_HAS_TIME_LEFT
	LDA #TIME_BETWEEN_DIRECTION_SWAPS
	STA .LOWORD(MUSHROOMIZATION_TIMER)
	LDX #.LOWORD(MUSHROOMIZATION_MODIFIER)
	LDA a:.LOWORD(RAM),X
	INC
	STA a:.LOWORD(RAM),X
	AND #$0003
	STA a:.LOWORD(RAM),X
@STILL_HAS_TIME_LEFT:
	DEC .LOWORD(MUSHROOMIZATION_TIMER)
	LDA .LOWORD(MUSHROOMIZATION_MODIFIER)
	STA $0E
	BEQ @RETURN
	LDA a:.LOWORD(UNKNOWN_7E0081)
	BNE @RETURN
	LDA a:.LOWORD(PAD_1_PRESS)
	XBA
	AND #$00FF
	AND #$000F
	TAY
	LDA a:.LOWORD(PAD_1_STATE)
	XBA
	AND #$00FF
	AND #$000F
	TAX
	LOADPTR MUSHROOMIZATION_DIRECTION_REMAP_TABLES, $06
	LDA $0E
	DEC
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $0E
	TYA
	ASL
	STA $04
	LDA $0E
	CLC
	ADC $04
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA $02
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #$F0FF
	ORA $02
	STA a:.LOWORD(PAD_1_PRESS)
	TXA
	ASL
	STA $04
	LDA $0E
	CLC
	ADC $04
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA a:.LOWORD(PAD_1_STATE)
	AND #$F0FF
	ORA $02
	STA a:.LOWORD(PAD_1_STATE)
@RETURN:
	PLD
	RTS