
UNKNOWN_C04116: ;$C04116
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	STA $16
	ASL
	TAX
	LDA f:UNKNOWN_C3E148,X
	CLC
	ADC .LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA $14
	LDA f:UNKNOWN_C3E158,X
	CLC
	ADC .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $04
	LDA .LOWORD(UNKNOWN_7E5D58)
	STA $12
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5D58)
@UNKNOWN0:
	LDA #$9889
	STA $02
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAY
	LDX $04
	LDA $14
	JSL NPC_COLLISION_CHECK
	STA $10
	CMP #$8000
	BCS @UNKNOWN1
	ASL
	TAX
	LDA .LOWORD(LOADED_TPT_ENTRIES),X
	STA .LOWORD(CURRENT_TPT_ENTRY)
	LDA $10
	STA .LOWORD(UNKNOWN_7E5D64)
	BRA @UNKNOWN7
@UNKNOWN1:
	LDA $16
	STA $0E
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAY
	LDX $04
	LDA $14
	JSL UNKNOWN_C05CD7
	AND #$0082
	CMP #$0082
	BNE @UNKNOWN7
	LDA $16
	ASL
	TAX
	LDA f:UNKNOWN_C3E148,X
	BEQ @UNKNOWN4
	AND #$8000
	BEQ @UNKNOWN2
	LDX #$FFF8
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #$0008
@UNKNOWN3:
	TXA
	CLC
	ADC $14
	STA $14
@UNKNOWN4:
	LDA $16
	ASL
	TAX
	LDA f:UNKNOWN_C3E158,X
	BEQ @UNKNOWN0
	AND #$8000
	BEQ @UNKNOWN5
	LDX #$FFF8
	BRA @UNKNOWN6
@UNKNOWN5:
	LDX #$0008
@UNKNOWN6:
	STX $02
	LDA $04
	CLC
	ADC $02
	STA $04
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN7:
	LDA $12
	STA .LOWORD(UNKNOWN_7E5D58)
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	CMP #$FFFF
	BEQ @UNKNOWN8
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	BNE @UNKNOWN9
@UNKNOWN8:
	LDA $16
	JSL UNKNOWN_C4334A
@UNKNOWN9:
	LDA .LOWORD(CURRENT_TPT_ENTRY)
	PLD
	RTS