
UNKNOWN_C203C3: ;$C203C3
	.DEFINE TILEARRPTR $16
	.DEFINE NAMEOFFSET $24
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFD8
	TCD
	PLA
	STA $26
	LDY #$986F
	LDA ($26),Y
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA NAMEOFFSET
	CLC
	ADC #$000E
	STA $02
	LDX #$0001
	LDA $02
	JSL UNKNOWN_C223D9
	TAY
	STY $22
	LDX #$0001
	LDA $02
	JSL UNKNOWN_C223D9
	STA $04
	LDY $22
	TYA
	AND #$FFF0
	CLC
	ADC $04
	STA $20
	LDY #$004F
	LDA (NAMEOFFSET),Y
	STA $04
	STA $1E
	LDA $04
	CMP #$0C00
	BNE @UNKNOWN0
	LDA #$0C00
	STA $02
	STA $1C
	STA $22
	LDA #$0800
	STA $1A
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	JSL UNKNOWN_C22474
	LDY #$0400
	JSL MULT16
	STA $02
	STA $1C
	LDA #$1000
	STA $22
	STZ $1A
@UNKNOWN1:
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	CMP $26
	BNE @UNKNOWN2
	LDA #$0012
	STA $18
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA #$0013
	STA $18
@UNKNOWN3:
	LDA $26
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	PHA
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	PHA
	ASL
	PLA
	ROR
	STA $02
	LDA #$0010
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	ASL
	STA $02
	LDA $18
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #$7DFE
	TAX
	LDA $1E
	STA $04
	CLC
	ADC #$2004
	STA a:.LOWORD(RAM),X
	INX
	INX
	LDY #$0005
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $04
	CLC
	ADC #$2005
	STA a:.LOWORD(RAM),X
	INX
	INX
	DEY
@UNKNOWN5:
	BNE @UNKNOWN4
	LDA $04
	CLC
	ADC #$6004
	STA a:.LOWORD(RAM),X
	TXA
	INC
	INC
	CLC
	ADC #$0032
	TAX
	LDA $04
	CLC
	ADC #$2006
	STA a:.LOWORD(RAM),X
	TXA
	INC
	INC
	STA TILEARRPTR
	LDY #$986F
	LDA ($26),Y
	AND #$00FF
	DEC
	ASL
	ASL
	CLC
	ADC #$22A0
	TAY
	STY $14
	LDA NAMEOFFSET
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL STRLEN
	STA $04
	ASL
	ADC $04
	ASL
	CLC
	ADC #$0009
	LSR
	LSR
	LSR
	STA $12
	LDX #$0000
	BRA @UNKNOWN9
@UNKNOWN6:
	LDA $12
	BEQ @UNKNOWN7
	LDA $1C
	STA $02
	LDY $14
	TYA
	CLC
	ADC $02
	STA (TILEARRPTR)
	INC TILEARRPTR
	INC TILEARRPTR
	INY
	STY $14
	LDA $12
	DEC
	STA $12
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA $1C
	STA $02
	CLC
	ADC #$2007
	STA (TILEARRPTR)
	INC TILEARRPTR
	INC TILEARRPTR
@UNKNOWN8:
	INX
@UNKNOWN9:
	CPX #$0004
	BNE @UNKNOWN6
	LDA $1C
	STA $02
	CLC
	ADC $20
	CLC
	ADC #$2000
	STA (TILEARRPTR)
	LDX TILEARRPTR
	INX
	INX
	LDA $1E
	STA $04
	CLC
	ADC #$6006
	STA a:.LOWORD(RAM),X
	TXA
	INC
	INC
	CLC
	ADC #$0032
	TAX
	LDA $04
	CLC
	ADC #$2006
	STA a:.LOWORD(RAM),X
	TXA
	INC
	INC
	STA TILEARRPTR
	LDY #$986F
	LDA ($26),Y
	AND #$00FF
	DEC
	ASL
	ASL
	CLC
	ADC #$22B0
	TAY
	STY $14
	LDA NAMEOFFSET
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL STRLEN
	STA $04
	ASL
	ADC $04
	ASL
	CLC
	ADC #$0009
	LSR
	LSR
	LSR
	STA $12
	LDX #$0000
	BRA @UNKNOWN13
@UNKNOWN10:
	LDA $12
	BEQ @UNKNOWN11
	LDY $14
	TYA
	CLC
	ADC $02
	STA (TILEARRPTR)
	INC TILEARRPTR
	INC TILEARRPTR
	INY
	STY $14
	LDA $12
	DEC
	STA $12
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA $02
	CLC
	ADC #$2017
	STA (TILEARRPTR)
	INC TILEARRPTR
	INC TILEARRPTR
@UNKNOWN12:
	INX
@UNKNOWN13:
	CPX #$0004
	BNE @UNKNOWN10
	LDA $02
	CLC
	ADC $20
	CLC
	ADC #$2010
	STA (TILEARRPTR)
	LDX TILEARRPTR
	INX
	INX
	LDA $1E
	STA $04
	CLC
	ADC #$6006
	STA a:.LOWORD(RAM),X
	TXA
	INC
	INC
	CLC
	ADC #$0032
	STA $02
	LDY #$0043
	LDA (NAMEOFFSET),Y
	TAY
	STY $14
	LDY #$0045
	LDA (NAMEOFFSET),Y
	TAX
	LDA $26
	LDY $14
	JSR a:.LOWORD(UNKNOWN_C20F08)
	LOADPTR UNKNOWN_C3E3F8, $06
	LDA $26
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	ASL
	CLC
	ADC #$8969
	TAY
	LDX #$0002
	STX $12
	BRA @UNKNOWN19
@UNKNOWN14:
	LDA $1E
	STA $04
	CLC
	ADC #$2006
	LDX $02
	STA a:.LOWORD(RAM),X
	INC $02
	INC $02
	LDA #$0002
	STA $20
	BRA @UNKNOWN16
@UNKNOWN15:
	LDA [$06]
	AND #$00FF
	CLC
	ADC $22
	CLC
	ADC #$2000
	LDX $02
	STA a:.LOWORD(RAM),X
	INC $06
	INC $02
	INC $02
	LDA $20
	DEC
	STA $20
@UNKNOWN16:
	BNE @UNKNOWN15
	LDA #$0003
	STA $20
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA a:.LOWORD(RAM),Y
	CLC
	ADC $1A
	LDX $02
	STA a:.LOWORD(RAM),X
	INY
	INY
	INC $02
	INC $02
	LDA $20
	DEC
	STA $20
@UNKNOWN18:
	BNE @UNKNOWN17
	LDA $04
	CLC
	ADC #$6006
	LDX $02
	STA a:.LOWORD(RAM),X
	LDA $02
	INC
	INC
	CLC
	ADC #$0032
	STA $02
	LDX $12
	DEX
	STX $12
@UNKNOWN19:
	BNE @UNKNOWN14
	LDY #$0049
	LDA (NAMEOFFSET),Y
	STA $0E
	LDY #$004B
	LDA (NAMEOFFSET),Y
	TAY
	LDA NAMEOFFSET
	CLC
	ADC #$000E
	TAX
	LDA $26
	JSR a:.LOWORD(UNKNOWN_C20F26)
	LDA $26
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	ASL
	CLC
	ADC #$8975
	TAY
	LDX #$0002
	STX $12
	BRA @UNKNOWN25
@UNKNOWN20:
	LDA $1E
	STA $04
	CLC
	ADC #$2006
	LDX $02
	STA a:.LOWORD(RAM),X
	INC $02
	INC $02
	LDA #$0002
	STA $20
	BRA @UNKNOWN22
@UNKNOWN21:
	LDA [$06]
	AND #$00FF
	CLC
	ADC $22
	CLC
	ADC #$2000
	LDX $02
	STA a:.LOWORD(RAM),X
	INC $06
	INC $02
	INC $02
	LDA $20
	DEC
	STA $20
@UNKNOWN22:
	BNE @UNKNOWN21
	LDA #$0003
	STA $20
	BRA @UNKNOWN24
@UNKNOWN23:
	LDA a:.LOWORD(RAM),Y
	CLC
	ADC $1A
	LDX $02
	STA a:.LOWORD(RAM),X
	INY
	INY
	INC $02
	INC $02
	LDA $20
	DEC
	STA $20
@UNKNOWN24:
	BNE @UNKNOWN23
	LDA $04
	CLC
	ADC #$6006
	LDX $02
	STA a:.LOWORD(RAM),X
	LDA $02
	INC
	INC
	CLC
	ADC #$0032
	STA $02
	LDX $12
	DEX
	STX $12
@UNKNOWN25:
	BNE @UNKNOWN20
	LDA $1E
	STA $04
	CLC
	ADC #$A004
	LDX $02
	STA a:.LOWORD(RAM),X
	LDX $02
	INX
	INX
	LDY #$0005
	BRA @UNKNOWN27
@UNKNOWN26:
	LDA $04
	CLC
	ADC #$A005
	STA a:.LOWORD(RAM),X
	INX
	INX
	DEY
@UNKNOWN27:
	BNE @UNKNOWN26
	LDA $04
	CLC
	ADC #$E004
	STA a:.LOWORD(RAM),X
	PLD
	RTS