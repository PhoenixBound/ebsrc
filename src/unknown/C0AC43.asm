
UNKNOWN_C0AC43: ;$C0AC43
	LDA #$00C4
	STA $04
	STA a:.LOWORD(UNKNOWN_7E000B)
	LDY #$0000
	LDA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	AND #$0001
	BEQ @UNKNOWN0
	LDY #$0005
@UNKNOWN0:
	STY $00
	LDA .LOWORD(UNKNOWN_30X2_TABLE_37),X
	AND #$000C
	BEQ @UNKNOWN4
	CMP #$0004
	BEQ @UNKNOWN6
	LDA .LOWORD(UNKNOWN_30X2_TABLE_32),X
	CMP #$0040
	BNE @UNKNOWN2
	LDA .LOWORD(UNKNOWN_7E301E),X
	STA $02
	LDA .LOWORD(UNKNOWN_7E305A),X
	BNE @UNKNOWN1
	LDA #.LOWORD(UNKNOWN_7E3096)
	JSR a:.LOWORD(UNKNOWN_C0AD56)
	LDX $88
	STA .LOWORD(UNKNOWN_7E301E),X
	TYA
	STA .LOWORD(UNKNOWN_7E305A),X
@UNKNOWN1:
	DEC .LOWORD(UNKNOWN_7E305A),X
	LDA .LOWORD(SPRITE_SCREEN_X_TABLE),X
	STA $06
	LDY .LOWORD(SPRITE_SCREEN_Y_TABLE),X
	LDA .LOWORD(UNKNOWN_7E3096),X
	CLC
	ADC $00
	LDX $06
	JSR a:.LOWORD(UNKNOWN_C08C58)
	BRA @UNKNOWN4
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E30D2),X
	STA $02
	LDA .LOWORD(UNKNOWN_7E310E),X
	BNE @UNKNOWN3
	LDA #.LOWORD(UNKNOWN_7E314A)
	JSR a:.LOWORD(UNKNOWN_C0AD56)
	LDX $88
	STA .LOWORD(UNKNOWN_7E30D2),X
	TYA
	STA .LOWORD(UNKNOWN_7E310E),X
@UNKNOWN3:
	DEC .LOWORD(UNKNOWN_7E310E),X
	LDA .LOWORD(SPRITE_SCREEN_X_TABLE),X
	STA $06
	LDA .LOWORD(SPRITE_SCREEN_Y_TABLE),X
	CLC
	ADC #$0008
	TAY
	LDA .LOWORD(UNKNOWN_7E314A),X
	CLC
	ADC $00
	ADC $00
	LDX $06
	JSR a:.LOWORD(UNKNOWN_C08C58)
@UNKNOWN4:
	LDX $88
	LDA .LOWORD(UNKNOWN_7E2E7A),X
	BNE @UNKNOWN5
	RTL
@UNKNOWN5:
	BPL @UNKNOWN8
@UNKNOWN6:
	CPX #$002E
	BCC @UNKNOWN10
	LDA .LOWORD(UNKNOWN_7E2F6A),X
	STA $02
	LDA .LOWORD(UNKNOWN_7E2FA6),X
	BNE @UNKNOWN7
	LDA #.LOWORD(UNKNOWN_7E2FE2)
	JSR a:.LOWORD(UNKNOWN_C0AD56)
	LDX $88
	STA .LOWORD(UNKNOWN_7E2F6A),X
	TYA
	STA .LOWORD(UNKNOWN_7E2FA6),X
@UNKNOWN7:
	DEC .LOWORD(UNKNOWN_7E2FA6),X
	LDA .LOWORD(SPRITE_SCREEN_X_TABLE),X
	STA $06
	LDY .LOWORD(SPRITE_SCREEN_Y_TABLE),X
	LDA .LOWORD(UNKNOWN_7E2FE2),X
	BEQ @UNKNOWN8
	CLC
	ADC $00
	LDX $06
	JSR a:.LOWORD(UNKNOWN_C08C58)
	LDX $88
@UNKNOWN8:
	LDA .LOWORD(UNKNOWN_7E2E7A),X
	AND #$4000
	BEQ @UNKNOWN10
	CPX #$002E
	BCC @UNKNOWN10
	LDA .LOWORD(UNKNOWN_7E2EB6),X
	STA $02
	LDA .LOWORD(UNKNOWN_7E2EF2),X
	BNE @UNKNOWN9
	LDA #.LOWORD(UNKNOWN_7E2F2E)
	JSR a:.LOWORD(UNKNOWN_C0AD56)
	LDX $88
	STA .LOWORD(UNKNOWN_7E2EB6),X
	TYA
	STA .LOWORD(UNKNOWN_7E2EF2),X
@UNKNOWN9:
	DEC .LOWORD(UNKNOWN_7E2EF2),X
	LDA .LOWORD(SPRITE_SCREEN_X_TABLE),X
	STA $06
	LDY .LOWORD(SPRITE_SCREEN_Y_TABLE),X
	LDA .LOWORD(UNKNOWN_7E2F2E),X
	CLC
	ADC $00
	LDX $06
	JSR a:.LOWORD(UNKNOWN_C08C58)
@UNKNOWN10:
	RTL
