
UNKNOWN_C0449B: ;$C0449B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFDA
	TCD
	STZ .LOWORD(GAME_STATE)+144
	LDA .LOWORD(MUSHROOMIZED_WALKING_FLAG)
	BEQ @UNKNOWN0
	JSR a:.LOWORD(UNKNOWN_C02C89)
@UNKNOWN0:
	LDX #.LOWORD(GAME_STATE) + game_state::walking_style
	STX $24
	LDA a:.LOWORD(RAM),X
	JSL UNKNOWN_C0404F
	STA $02
	LDA .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN2
	LDX .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	DEX
	STX .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	BEQ @UNKNOWN1
	LDY .LOWORD(GAME_STATE)+game_state::current_party_members
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL NPC_COLLISION_CHECK
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN1:
	LDA #$FFFF
	STA .LOWORD(BATTLE_DEBUG)
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN2:
	LDA $02
	CMP #$FFFF
	BNE @UNKNOWN3
	LDY .LOWORD(GAME_STATE)+game_state::current_party_members
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL NPC_COLLISION_CHECK
	JMP a:.LOWORD(@UNKNOWN28)
@UNKNOWN3:
	LDX $24
	LDA a:.LOWORD(RAM),X
	CMP #$000D
	BNE @UNKNOWN12
	LDA .LOWORD(UNKNOWN_7E5DC4)
	CMP #$0100
	BEQ @UNKNOWN4
	LDA .LOWORD(UNKNOWN_7E5DC4)
	CMP #$0200
	BNE @UNKNOWN7
@UNKNOWN4:
	LDA $02
	CMP #$0003
	BEQ @UNKNOWN5
	BCS @UNKNOWN6
@UNKNOWN5:
	LDA #$0001
	STA $02
	BRA @UNKNOWN10
@UNKNOWN6:
	LDA #$0005
	STA $02
	BRA @UNKNOWN10
@UNKNOWN7:
	LDA $02
	DEC
	AND #$0007
	CMP #$0003
	BEQ @UNKNOWN8
	BCS @UNKNOWN9
@UNKNOWN8:
	LDA #$0003
	STA $02
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #$0007
	STA $02
@UNKNOWN10:
	LDA $02
	CMP #$0004
	BCS @UNKNOWN11
	LDA #$0002
	STA .LOWORD(GAME_STATE)+game_state::leader_direction
	BRA @UNKNOWN13
@UNKNOWN11:
	LDA #$0006
	STA .LOWORD(GAME_STATE)+game_state::leader_direction
	BRA @UNKNOWN13
@UNKNOWN12:
	LDA .LOWORD(MISC_DEBUG_FLAGS)
	AND #$0001
	BNE @UNKNOWN13
	LDA $02
	STA .LOWORD(GAME_STATE)+game_state::leader_direction
@UNKNOWN13:
	INC .LOWORD(UNKNOWN_7E2890)
	LDX #.LOWORD(GAME_STATE) + 144
	LDA a:.LOWORD(RAM),X
	INC
	STA a:.LOWORD(RAM),X
	LDA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	STA $22
	LDA #.LOWORD(GAME_STATE) + 128
	STA $20
	LDY $20
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $1C
	LDA $08
	STA $1E
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA #.LOWORD(GAME_STATE) + 132
	STA $1A
	LDY $1A
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $16
	LDA $08
	STA $18
	LDA $1C
	STA $06
	LDA $1E
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX $22
	LDA $02
	JSR a:.LOWORD(ADJUST_POSITION)
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA $16
	STA $06
	LDA $18
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX $22
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C03017)
	LDA $06
	STA $16
	LDA $08
	STA $18
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5DA8)
	LDA .LOWORD(MISC_DEBUG_FLAGS)
	AND #$0002
	BNE @UNKNOWN14
	LDA $02
	STA $0E
	LDY .LOWORD(GAME_STATE)+game_state::current_party_members
	LDX $18
	LDA $14
	JSL UNKNOWN_C05B7B
	STA $04
	LDA $02
	CMP .LOWORD(UNKNOWN_7E5DA6)
	BEQ @UNKNOWN16
	LDY $20
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX $22
	LDA .LOWORD(UNKNOWN_7E5DA6)
	JSR a:.LOWORD(ADJUST_POSITION)
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDY $1A
	LDA a:.LOWORD(RAM),Y
	STA $06
	LDA a:.LOWORD(RAM)+2,Y
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX $22
	LDA .LOWORD(UNKNOWN_7E5DA6)
	JSR a:.LOWORD(UNKNOWN_C03017)
	LDA $06
	STA $16
	LDA $08
	STA $18
	BRA @UNKNOWN16
@UNKNOWN14:
	LDA a:.LOWORD(UNKNOWN_7E0081)
	BNE @UNKNOWN15
	LDY .LOWORD(GAME_STATE)+game_state::current_party_members
	LDX $18
	LDA $14
	JSR a:.LOWORD(UNKNOWN_C05FD1)
	AND #$003F
	STA $04
	BRA @UNKNOWN16
@UNKNOWN15:
	LDA #$0000
	STA $04
@UNKNOWN16:
	LDA $04
	STA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	LDA #$0001
	STA $02
	LDY .LOWORD(GAME_STATE)+game_state::current_party_members
	LDX $18
	LDA $14
	JSL NPC_COLLISION_CHECK
	LDA .LOWORD(UNKNOWN_30X2_TABLE_24)+46
	CMP #$FFFF
	BEQ @UNKNOWN17
	LDA #$0000
	STA $02
@UNKNOWN17:
	LDA $04
	AND #$00C0
	BEQ @UNKNOWN18
	LDA #$0000
	STA $02
@UNKNOWN18:
	LDA .LOWORD(UNKNOWN_7E5DA8)
	CMP #$FFFF
	BEQ @UNKNOWN19
	LDX .LOWORD(UNKNOWN_7E5DAA)
	LDA .LOWORD(UNKNOWN_7E5DA8)
	JSL UNKNOWN_C07526
	STA $02
	BRA @UNKNOWN21
@UNKNOWN19:
	LDX .LOWORD(GAME_STATE)+game_state::walking_style
	CPX #WALKING_STYLE::LADDER
	BEQ @UNKNOWN20
	CPX #WALKING_STYLE::ROPE
	BNE @UNKNOWN21
@UNKNOWN20:
	STZ .LOWORD(GAME_STATE)+game_state::walking_style
@UNKNOWN21:
	LDA $02
	BEQ @UNKNOWN22
	LDA $12
	STA $06
	LDA $14
	STA $08
	LDA $06
	STA .LOWORD(GAME_STATE)+128
	LDA $08
	STA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	LDA $16
	STA $06
	LDA $18
	STA $08
	LDA $06
	STA .LOWORD(GAME_STATE)+132
	LDA $08
	STA .LOWORD(GAME_STATE)+game_state::leader_y_coord
	BRA @UNKNOWN23
@UNKNOWN22:
	STZ .LOWORD(GAME_STATE)+144
@UNKNOWN23:
	LDA a:.LOWORD(UNKNOWN_7E0002)
	AND #$00FF
	AND #$0001
	BNE @UNKNOWN24
	LDA $5E3C
	BEQ @UNKNOWN24
	LDA #$0000
	JSL UNKNOWN_C073C0
@UNKNOWN24:
	LDA a:.LOWORD(UNKNOWN_7E0002)
	AND #$00FF
	AND #$0001
	BEQ @UNKNOWN25
	LDA $5E4A
	BEQ @UNKNOWN25
	LDA #$0001
	JSL UNKNOWN_C073C0
@UNKNOWN25:
	LDX .LOWORD(GAME_STATE)+game_state::walking_style
	CPX #WALKING_STYLE::LADDER
	BEQ @UNKNOWN26
	CPX #WALKING_STYLE::ROPE
	BNE @UNKNOWN27
@UNKNOWN26:
	LDA .LOWORD(UNKNOWN_7E5DA8)
	ASL
	ASL
	ASL
	CLC
	ADC #$0008
	STA .LOWORD(GAME_STATE)+game_state::leader_x_coord
@UNKNOWN27:
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN28
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::X_BUTTON
	BEQ @UNKNOWN28
	LDX #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	LDA a:.LOWORD(RAM),X
	AND #$FFF8
	STA a:.LOWORD(RAM),X
	LDX #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	LDA a:.LOWORD(RAM),X
	AND #$FFF8
	STA a:.LOWORD(RAM),X
@UNKNOWN28:
	PLD
	RTS
