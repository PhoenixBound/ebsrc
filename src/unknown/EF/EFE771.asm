
SAVE_REPLAY_SAVE_SLOT: ;$EFE771
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEA
	TCD
	JSL TEST_SRAM_SIZE
	CMP #$0000
	BNE @SUFFICIENT_SRAM
	JMP @INSUFFICIENT_SRAM
@SUFFICIENT_SRAM:
	LOADPTR $316000, $06
	LOADPTR UNKNOWN_7E0000, $0A
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #.LOWORD(GAME_STATE)
	STA $06
	STZ $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #.SIZEOF(game_state)
	JSL MEMCPY24
	LOADPTR $3161D9, $06
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #.LOWORD(CHAR_STRUCT)
	STA $06
	STZ $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #.SIZEOF(char_struct) * (TOTAL_PARTY_COUNT)
	JSL MEMCPY24
	LOADPTR $316413, $06
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #.LOWORD(UNKNOWN_7E9C08)
	STA $06
	STZ $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #$0080
	JSL MEMCPY24
	LOADPTR $316493, $06
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA #.LOWORD(TIMER)
	STA $06
	STZ $08
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #$0004
	JSL MEMCPY24
	LOADPTR $326000, $0E
	JSL UNKNOWN_C083C1
@INSUFFICIENT_SRAM:
	PLD
	RTL