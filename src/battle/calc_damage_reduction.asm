
CALC_RESIST_DAMAGE: ;$C28125
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	TXY
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
	STA $02
@UNKNOWN2:
	CPY #$00FF
	BCS @UNKNOWN3
	LDX $02
	TYA
	SEP #PROC_FLAGS::ACCUM8
	JSR a:.LOWORD(TRUNCATE_16_TO_8)
	STA $02
@UNKNOWN3:
	.A16
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+12,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN4
	JMP a:.LOWORD(@UNKNOWN20)
@UNKNOWN4:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+29,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN20)
@UNKNOWN5:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+36,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN6
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM)+4,X
	JSR a:.LOWORD(GET_BATTLE_ACTION_TYPE)
	CMP #$0001
	BNE @UNKNOWN6
	SEP #PROC_FLAGS::INDEX8
	LDY #$0001
	LDA $02
	JSL ASR16
	STA $02
@UNKNOWN6:
	REP #PROC_FLAGS::INDEX8
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM)+4,X
	JSR a:.LOWORD(GET_BATTLE_ACTION_TYPE)
	CMP #$0001
	BNE @UNKNOWN9
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+35,X
	AND #$00FF
	CMP #$0003
	BEQ @UNKNOWN8
	CMP #$0004
	BNE @UNKNOWN9
@UNKNOWN8:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0001
	LDA $02
	JSL ASR16
	STA $02
@UNKNOWN9:
	LDA $02
	BNE @UNKNOWN10
	LDA #$0001
	STA $02
@UNKNOWN10:
	REP #PROC_FLAGS::INDEX8
	LDX $02
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(CALC_DAMAGE)
	CMP #$0000
	BEQ @UNKNOWN11
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+17,X
	BNE @UNKNOWN11
	LDA .LOWORD(CURRENT_TARGET)
	JSL KO_TARGET
@UNKNOWN11:
	LDA $02
	BNE @UNKNOWN12
	LDA #$0001
	STA $02
@UNKNOWN12:
	LDA .LOWORD(UNKNOWN_7EAA94)
	BEQ @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN13:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+35,X
	AND #$00FF
	CMP #$0003
	BEQ @UNKNOWN14
	CMP #$0004
	BEQ @UNKNOWN17
	BRA @UNKNOWN18
@UNKNOWN14:
	LDA .LOWORD(UNKNOWN_7EAA90)
	BNE @UNKNOWN17
	SEP #PROC_FLAGS::INDEX8
	LDY #$0001
	LDA $02
	JSL ASR16
	STA $02
	CMP #$0000
	BNE @UNKNOWN15
	LDA #$0001
	STA $02
@UNKNOWN15:
	.A16
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF70B1
	JSR a:.LOWORD(SWAP_ATTACKER_WITH_TARGET)
	LDX $02
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(CALC_DAMAGE)
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+17,X
	BNE @UNKNOWN16
	LDA .LOWORD(CURRENT_TARGET)
	JSL KO_TARGET
@UNKNOWN16:
	JSR a:.LOWORD(SWAP_ATTACKER_WITH_TARGET)
@UNKNOWN17:
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #$0025
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	DEC
	STA a:.LOWORD(RAM),X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN18
	LDX .LOWORD(CURRENT_TARGET)
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(RAM)+35,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF7099
@UNKNOWN18:
	.I16
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+14,X
	AND #$00FF
	BNE @UNKNOWN19
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+15,X
	AND #$00FF
	BNE @UNKNOWN19
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+16,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,X
	BEQ @UNKNOWN20
@UNKNOWN19:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(RAM)+31,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN20
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	JSR a:.LOWORD(SUCCESS_255)
	.A16
	CMP #$0000
	BEQ @UNKNOWN20
	LDX .LOWORD(CURRENT_TARGET)
	STZ a:.LOWORD(RAM)+4,X
	LDX .LOWORD(CURRENT_TARGET)
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(RAM)+31,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR TEXT_BLOCK_EF6F54
@UNKNOWN20:
	LDA $02
	PLD
	RTS
