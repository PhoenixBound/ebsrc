
CHECK_SRAM_INTEGRITY: ;$EF0B9E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA #$0493
	STA .LOWORD(UNKNOWN_7E9F77)
	LOADPTR $307FFE, $06
	LDA [$06]
	CMP #$0493
	BEQ @GOOD_SRAM
	LOADPTR $306000, $0E
	LDX #$2000
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
@GOOD_SRAM:
	JSR a:.LOWORD(CHECK_ALL_BLOCKS_SIGNATURE)
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9F79)
	LDX #$0000
	STX $12
	BRA @LOOP_ENTRY
@LOOP_BEGINNING:
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSR a:.LOWORD(CHECK_SAVE_CORRUPTION)
	LDX $12
	INX
	STX $12
@LOOP_ENTRY:
	CPX #$0003
	BCC @LOOP_BEGINNING
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E9F77)
	STA [$06]
	PLD
	RTL