
CALC_PSI_DMG_MODIFIERS: ;$C2B608
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	AND #$00FF
	BEQ @UNKNOWN0
	CMP #$0001
	BEQ @UNKNOWN1
	CMP #$0002
	BEQ @UNKNOWN2
	CMP #$0003
	BEQ @UNKNOWN3
	BRA @UNKNOWN4
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	BRA @UNKNOWN4
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00B3
	BRA @UNKNOWN4
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0066
	BRA @UNKNOWN4
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000D
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	RTL
