
BTLACT_DEFENSE_DOWN_A: ;$C29E86
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BNE @UNKNOWN5
	JSR a:.LOWORD(SUCCESS_LUCK80)
	CMP #$0000
	BEQ @UNKNOWN4
	LDX .LOWORD(CURRENT_TARGET)
	LDY a:battler::defense,X
	STY $16
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(HEXADECIMATE_DEFENSE)
	LDX .LOWORD(CURRENT_TARGET)
	LDY $16
	TYA
	SEC
	SBC a:battler::defense,X
	STA $16
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA #$0000
	STA $16
@UNKNOWN2:
	LOADPTR TEXT_BATTLE_DEFENSE_WENT_DOWN, $0E
	LDA $16
	STA $06
	STZ $08
	BPL @UNKNOWN3
	DEC $08
@UNKNOWN3:
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
	BRA @UNKNOWN5
@UNKNOWN4:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_IT_DIDNT_WORK_ON_X
@UNKNOWN5:
	PLD
	RTL
