
GET_TOWN_MAP_ID: ;$C4D274
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 14
	XBA
	AND #$00FF
	OPTIMIZED_MULT $04, 3
	STA $02
	LDY #$0080
	TXA
	JSL DIVISION16S_DIVISOR_POSITIVE
	OPTIMIZED_MULT $04, 96
	CLC
	ADC $02
	TAX
	LDA f:MAP_DATA_PER_SECTOR_TOWN_MAP_DATA,X
	AND #$00FF
	PLD
	RTS
