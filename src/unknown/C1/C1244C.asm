
UNKNOWN_C1244C: ;$C1244C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFD6
	TCD
	PLA
	STY $28
	STX $26
	STA $24
	JSR a:.LOWORD(GET_ACTIVE_WINDOW_ADDRESS)
	STA $22
	CLC
	ADC #$001B
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $0A
	LDA a:.LOWORD(RAM)+2,Y
	STA $0C
	LDA $0A
	STA $1E
	LDA $0C
	STA $20
	LDA $26
	CMP #$0001
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN0:
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN1
	LDX #$0033
	BRA @UNKNOWN2
@UNKNOWN1:
	CLC
	ADC #WINDOW::UNKNOWN28
	TAX
	DEX
@UNKNOWN2:
	STX $04
	LDA $04
	STA $1C
	CREATE_WINDOW_NEAR $04
	STZ $1A
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN3:
	LDA $1A
	CLC
	ADC #$986F
	STA $02
	LDX $02
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	JSL UNKNOWN_C222D3
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0006
	LDA #$9C9F
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CA2)+2
	REP #PROC_FLAGS::ACCUM8
	LDA #$9C9F
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
	LDA $1A
	ASL
	ASL
	CLC
	ADC $24
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDY #$0000
	LDA $1A
	STA $04
	ASL
	ADC $04
	ASL
	TAX
	STX $18
	LDX $02
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDX $18
	JSR a:.LOWORD(UNKNOWN_C1153B)
	INC $1A
@UNKNOWN4:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CLC
	SBC $1A
	BVS @UNKNOWN5
	BMI @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN5:
	BPL @UNKNOWN6
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN6:
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	LDA $28
	JSR a:.LOWORD(SELECTION_MENU)
	TAX
	STX $16
	LDA $1C
	STA $04
	JSL CLOSE_WINDOW
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	JMP a:.LOWORD(@UNKNOWN42)
@UNKNOWN7:
	LDX #$0000
	BRA @UNKNOWN9
@UNKNOWN8:
	TXA
	ASL
	ASL
	STA $1C
	CLC
	ADC $24
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $1C
	CLC
	ADC #.LOWORD(UNKNOWN_7E9631)
	TAY
	LDA $06
	STA a:.LOWORD(RAM),Y
	LDA $08
	STA a:.LOWORD(RAM)+2,Y
	INX
@UNKNOWN9:
	CPX #$0004
	BNE @UNKNOWN8
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	CMP #$FFFF
	BNE @UNKNOWN10
	LDX #$0000
	BRA @UNKNOWN11
@UNKNOWN10:
	LDX .LOWORD(PSI_WINDOW_CHARACTER)
@UNKNOWN11:
	STX $04
	LDA .LOWORD(GAME_STATE)+122,X
	AND #$00FF
	DEC
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E9631)
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN12
	LDA $06
	CMP $0A
@UNKNOWN12:
	BEQ @UNKNOWN13
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
@UNKNOWN13:
	STZ .LOWORD(UNKNOWN_7E5E7C)
	LDA #$000A
	STA $02
	STA $1C
@UNKNOWN14:
	LDA $26
	BNE @UNKNOWN15
	LDA $04
	JSL UNKNOWN_C43573
@UNKNOWN15:
	JSL CLEAR_9622
	JSL UNKNOWN_C12DD5
	LDA $04
	STA $24
	LDA .LOWORD(UNKNOWN_7E5E7A)
	CMP #$FFFF
	BEQ @UNKNOWN16
	LDA .LOWORD(UNKNOWN_7E5E7A)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	CMP #$FFFF
	BEQ @UNKNOWN16
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA $1A
@UNKNOWN16:
	LDA .LOWORD(UNKNOWN_7E5E7A)
	CMP #$FFFF
	BEQ @UNKNOWN17
	LDA .LOWORD(UNKNOWN_7E5E7A)
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	CMP #$FFFF
	BEQ @UNKNOWN17
	LOADPTR UNKNOWN_C3E3F8+68, $06
	LDA .LOWORD(UNKNOWN_7E5E7C)
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	LDY #$0002
	LDA [$06],Y
	TAY
	LDA [$06]
	STA $06
	STY $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDY #$0008
	LDA ($1A),Y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA $02
	LDY #$0006
	LDA ($1A),Y
	LDY #$000A
	CLC
	ADC ($1A),Y
	DEC
	DEC
	DEC
	CLC
	ADC $02
	CLC
	ADC #$7C00
	TAY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616
	.A16
@UNKNOWN17:
	LDA #$0000
	STA $16
	JMP a:.LOWORD(@UNKNOWN29)
@UNKNOWN18:
	JSL UNKNOWN_C12E42
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::LEFT
	BEQ @UNKNOWN21
	LDX $24
	DEX
	STX $16
	LDA $26
	BEQ @UNKNOWN19
	LDY #$0002
	BRA @UNKNOWN20
@UNKNOWN19:
	LDY #$001B
@UNKNOWN20:
	LDA #$0002
	STA .LOWORD(UNKNOWN_7E5E7C)
	JMP a:.LOWORD(@UNKNOWN33)
@UNKNOWN21:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::RIGHT
	BEQ @UNKNOWN24
	LDX $24
	INX
	STX $16
	LDA $26
	BEQ @UNKNOWN22
	LDY #$0002
	BRA @UNKNOWN23
@UNKNOWN22:
	LDY #$001B
@UNKNOWN23:
	LDA #$0003
	STA .LOWORD(UNKNOWN_7E5E7C)
	BRA @UNKNOWN33
@UNKNOWN24:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN25
	LDX $04
	LDA .LOWORD(GAME_STATE)+122,X
	AND #$00FF
	TAX
	STX $16
	LDA #$0001
	JSL PLAY_SOUND
	JMP a:.LOWORD(@UNKNOWN42)
@UNKNOWN25:
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN28
	LDA $28
	CMP #$0001
	BNE @UNKNOWN28
	LDX #$0000
	STX $16
	LDA $26
	BEQ @UNKNOWN26
	LDY #$0002
	BRA @UNKNOWN27
@UNKNOWN26:
	LDY #$001B
@UNKNOWN27:
	TYA
	JSL PLAY_SOUND
	JSL UNKNOWN_C3E6F8
	JMP a:.LOWORD(@UNKNOWN42)
@UNKNOWN28:
	LDA $16
	INC
	STA $16
@UNKNOWN29:
	LDX $1C
	STX $02
	CMP $02
	BCS @UNKNOWN30
	BEQ @UNKNOWN30
	JMP a:.LOWORD(@UNKNOWN18)
@UNKNOWN30:
	LDA .LOWORD(UNKNOWN_7E5E7C)
	BNE @UNKNOWN31
	LDX #$0001
	BRA @UNKNOWN32
@UNKNOWN31:
	LDX #$0000
@UNKNOWN32:
	STX .LOWORD(UNKNOWN_7E5E7C)
	LDA #$000A
	STA $02
	STA $1C
	JMP a:.LOWORD(@UNKNOWN16)
@UNKNOWN33:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $24
	STX $02
	CLC
	SBC $02
	BVS @UNKNOWN34
	BPL @UNKNOWN36
	BRA @UNKNOWN35
@UNKNOWN34:
	BMI @UNKNOWN36
@UNKNOWN35:
	LDX #$0000
	STX $16
	BRA @UNKNOWN39
@UNKNOWN36:
	STX $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN37
	BPL @UNKNOWN39
	BRA @UNKNOWN38
@UNKNOWN37:
	BMI @UNKNOWN39
@UNKNOWN38:
	LDA $24
	TAX
	DEX
	STX $16
@UNKNOWN39:
	TXA
	CMP $04
	BEQ @UNKNOWN41
	TYA
	JSL PLAY_SOUND
	LDX $16
	STX $04
	LDA .LOWORD(GAME_STATE)+122,X
	AND #$00FF
	DEC
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E9631)
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA #$0000
	STA $0A
	LDA #$0000
	STA $0C
	LDA $08
	CMP $0C
	BNE @UNKNOWN40
	LDA $06
	CMP $0A
@UNKNOWN40:
	BEQ @UNKNOWN41
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
@UNKNOWN41:
	LDA #$0004
	STA $02
	STA $1C
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN42:
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5E7C)
	LDA $1E
	STA $0A
	LDA $20
	STA $0C
	LDA $22
	CLC
	ADC #$001B
	TAY
	LDA $0A
	STA a:.LOWORD(RAM),Y
	LDA $0C
	STA a:.LOWORD(RAM)+2,Y
	LDX $16
	TXA
	PLD
	RTS
