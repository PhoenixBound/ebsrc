
UNKNOWN_C3E6F8: ;$C3E6F8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	CMP #$FFFF
	BEQ @UNKNOWN2
	JSL READ_JOYPAD
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	OPTIMIZED_MULT $04, 7
	STA $02
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	OPTIMIZED_MULT $04, 7
	PHA
	ASL
	PLA
	ROR
	STA $04
	LDA #$0010
	SEC
	SBC $04
	CLC
	ADC $02
	ASL
	CLC
	ADC #$827E
	TAY
	LDX #$0007
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0000
	STA a:.LOWORD(RAM),Y
	INY
	INY
	DEX
@UNKNOWN1:
	BNE @UNKNOWN0
	LDA #$FFFF
	STA .LOWORD(PSI_WINDOW_CHARACTER)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL