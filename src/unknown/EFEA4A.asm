
UNKNOWN_EFEA4A: ;$EFEA4A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF2
	TCD
	JSL TEST_SRAM_SIZE
	CMP #$0000
	BEQ @GOOD_SRAM_SIZE
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB567)
	JSL UNKNOWN_EFE8C7
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA $04
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $02
	LDX #$0001
	TXA
	JSL UNKNOWN_C0887A
	LDX $02
	LDA $04
	JSL UNKNOWN_C013F6
	LDY #$0000
	LDX $02
	LDA $04
	JSL UNKNOWN_C03FA9
	JSL UNKNOWN_C09451
	LDX #$0000
	LDA .LOWORD(UNKNOWN_7EB573)
	JSL SCREEN_TRANSITION
	JSL UNKNOWN_C0943C
@GOOD_SRAM_SIZE:
	PLD
	RTL
