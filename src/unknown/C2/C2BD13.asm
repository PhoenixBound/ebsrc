
UNKNOWN_C2BD13: ;$C2BD13
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$0000
	STA $02
	LDX #.LOWORD(BATTLERS_TABLE) + .SIZEOF(battler) * 8
	STX $10
	LDY #$0008
	STY $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN1
	LDA a:battler::sprite,X
	JSR a:.LOWORD(GET_BATTLE_SPRITE_WIDTH)
	STA $04
	LDA $02
	CLC
	ADC $04
	STA $02
@UNKNOWN1:
	LDX $10
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	STX $10
	LDY $0E
	INY
	STY $0E
@UNKNOWN2:
	CPY #$0020
	BCC @UNKNOWN0
	LDA $02
	PLD
	RTS
