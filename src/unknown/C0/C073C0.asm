
UNKNOWN_C073C0: ;$C073C0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $04
	STA $14
	LDA .LOWORD(UNKNOWN_7E5E04)
	EOR .LOWORD(UNKNOWN_7E5E04)
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN0:
	LDA .LOWORD(TELEPORT_DESTINATION)
	BEQ @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN6)
@UNKNOWN1:
	LDA $04
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	ASL
	CLC
	ADC #$5E3C
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $12
	LDX .LOWORD(GAME_STATE)+game_state::leader_x_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $02
	LDA $12
	CMP #$0001
	BNE @UNKNOWN4
	TXA
	CMP a:.LOWORD(RAM)+2,Y
	BCC @UNKNOWN5
	TXA
	CMP a:.LOWORD(RAM)+6,Y
	BEQ @UNKNOWN2
	BCS @UNKNOWN5
@UNKNOWN2:
	LDA $02
	CMP a:.LOWORD(RAM)+4,Y
	BCC @UNKNOWN5
	LDA $02
	CMP a:.LOWORD(RAM)+8,Y
	BEQ @UNKNOWN3
	BCS @UNKNOWN5
@UNKNOWN3:
	BRA @UNKNOWN6
@UNKNOWN4:
	TXA
	CMP a:.LOWORD(RAM)+2,Y
	BCC @UNKNOWN6
	BEQ @UNKNOWN6
	TXA
	CMP a:.LOWORD(RAM)+6,Y
	BCS @UNKNOWN6
	LDA $02
	CMP a:.LOWORD(RAM)+4,Y
	BCC @UNKNOWN6
	BEQ @UNKNOWN6
	LDA $02
	CMP a:.LOWORD(RAM)+8,Y
	BCS @UNKNOWN6
@UNKNOWN5:
	LDA #$0000
	STA a:.LOWORD(RAM),Y
	TYA
	CLC
	ADC #$000A
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	MOVE_INT $06, $0E
	LDA #$0009
	JSL UNKNOWN_C064E3
	LDA $14
	STA $04
	LDX $04
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(GAME_STATE) + game_state::unknownC8,X
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
