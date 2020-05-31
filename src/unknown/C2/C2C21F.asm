
;A = battle group
UNKNOWN_C2C21F: ;$C2C21F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STX $14
	STA $12
	STZ $10
	LDA .LOWORD(BATTLE_MODE_FLAG)
	BEQ @UNKNOWN0
	LDA $12
	CMP #BATTLE_GROUPS::GIYGAS_PHASE_FINAL
	BNE @UNKNOWN1
@UNKNOWN0:
	LDA #$0001
	STA $10
@UNKNOWN1:
	LDA $10
	BNE @UNKNOWN4
	LDY #$001E
	LDX #$0001
	LDA #$0006
	JSL UNKNOWN_C2E8C4
	BRA @UNKNOWN3
@UNKNOWN2:
	JSL UNKNOWN_C12DD5
@UNKNOWN3:
	JSL UNKNOWN_C2E9C8
	CMP #$0000
	BNE @UNKNOWN2
@UNKNOWN4:
	LDA $12
	STA .LOWORD(CURRENT_BATTLE_GROUP)
	LOADPTR BTL_ENTRY_BG_TABLE, $06
	LDA .LOWORD(CURRENT_BATTLE_GROUP)
	ASL
	ASL
	STA $0E
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA $04
	LDA $0E
	INC
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA .LOWORD(CURRENT_BATTLE_GROUP)
	ASL
	ASL
	ASL
	CLC
	ADC #battle_entry_ptr_entry::letterbox_style
	TAX
	LDA f:BTL_ENTRY_PTR_TABLE,X
	AND #$00FF
	TAX
	STX $0E
	JSL UNKNOWN_C08726
	JSL LOAD_ENEMY_BATTLE_SPRITES
	JSL LOAD_WINDOW_GFX
	LDA #$0001
	JSL UNKNOWN_C44963
	LDX $0E
	TXY
	LDX $02
	LDA $04
	JSL LOAD_BATTLE_BG
	JSL UNKNOWN_C2EEE7
	LDA #$0018
	JSL UNKNOWN_C0856B
	JSL UNKNOWN_C2F8F9
	LDA #$0001
	STA .LOWORD(BATTLE_MODE_FLAG)
	LDA $14
	BEQ @UNKNOWN5
	LDA $14
	JSL CHANGE_MUSIC
@UNKNOWN5:
	JSL UNKNOWN_C08744
	LDA $10
	BEQ @UNKNOWN6
	LDX #$0004
	LDA #$0001
	JSL UNKNOWN_C0886C
	JSR a:.LOWORD(UNKNOWN_C269DE)
	BRA @RETURN
@UNKNOWN6:
	LDX #$0001
	LDA #$000F
	JSL UNKNOWN_C0886C
	LDA $12
	CMP #BATTLE_GROUPS::GIYGAS_PHASE_FINAL
	BEQ @RETURN
	LDY #$0005
	LDX #$0000
	LDA #$0006
	JSL UNKNOWN_C2E8C4
	BRA @UNKNOWN8
@UNKNOWN7:
	JSL UNKNOWN_C12DD5
@UNKNOWN8:
	JSL UNKNOWN_C2E9C8
	CMP #$0000
	BNE @UNKNOWN7
@RETURN:
	PLD
	RTS