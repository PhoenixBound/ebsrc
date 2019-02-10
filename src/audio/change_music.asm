
CHANGE_MUSIC: ;$C4FBBD
	.DEFINE CURPACKPTRLO $06
	.DEFINE CURPACKPTRHI $08
	.DEFINE CURPACK $0E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	TAX
	STX $12
	CPX .LOWORD(CURRENT_MUSIC_TRACK)
	BNE @BEGIN_MUSIC_CHANGE
	JMP a:.LOWORD(@RETURN)
@BEGIN_MUSIC_CHANGE:
	LDA .LOWORD(UNKNOWN_7EB4B6)
	BNE @UNKNOWN1
	JSL PLAY_SOUND_UNKNOWN0
@UNKNOWN1:
	LDX $12
	CPX #$00A0
	BCC @UNKNOWN2
	CPX #$00A7
	BCC @UNKNOWN3
	BEQ @UNKNOWN3
@UNKNOWN2:
	LDA #$0001
	JSL UNKNOWN_C0AC0C
	JSL STOP_MUSIC
@UNKNOWN3:
	LDX $12
	STX .LOWORD(CURRENT_MUSIC_TRACK)
	TXY
	DEY
	STY $10
	TYA
	STA $04
	ASL
	ADC $04
	TAX
	LDA f:MUSIC_DATASET_TABLE,X
	AND #$00FF
	STA CURPACK
	CMP .LOWORD(CURRENT_PRIMARY_SAMPLE_PACK)
	BEQ @SKIP_DATA_LOAD_1
	CMP #$00FF
	BEQ @SKIP_DATA_LOAD_1
	STA .LOWORD(CURRENT_PRIMARY_SAMPLE_PACK)
	LDA #$F947
	STA CURPACKPTRLO
	LDA #$00C4
	STA CURPACKPTRHI
	LDA CURPACK
	STA $04
	ASL
	ADC $04
	STA $02
	LDX CURPACKPTRLO
	STX $0A
	LDX CURPACKPTRHI
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C4FB42)
	TAX
	LDA $02
	INC
	CLC
	ADC CURPACKPTRLO
	STA CURPACKPTRLO
	LDA [CURPACKPTRLO]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
@SKIP_DATA_LOAD_1:
	LDY $10
	TYA
	STA $04
	ASL
	ADC $04
	TAX
	INX
	LDA f:MUSIC_DATASET_TABLE,X
	AND #$00FF
	STA CURPACK
	CMP .LOWORD(CURRENT_SECONDARY_SAMPLE_PACK)
	BEQ @SKIP_DATA_LOAD_2
	CMP #$00FF
	BEQ @SKIP_DATA_LOAD_2
	CMP .LOWORD(UNKNOWN_7EB543)
	BEQ @SKIP_DATA_LOAD_2
	STA .LOWORD(CURRENT_SECONDARY_SAMPLE_PACK)
	LDA #$F947
	STA CURPACKPTRLO
	LDA #$00C4
	STA CURPACKPTRHI
	LDA CURPACK
	STA $04
	ASL
	ADC $04
	STA $02
	LDX CURPACKPTRLO
	STX $0A
	LDX CURPACKPTRHI
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C4FB42)
	TAX
	LDA $02
	INC
	CLC
	ADC CURPACKPTRLO
	STA CURPACKPTRLO
	LDA [CURPACKPTRLO]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
@SKIP_DATA_LOAD_2:
	LDY $10
	TYA
	STA $04
	ASL
	ADC $04
	TAX
	INX
	INX
	LDA f:MUSIC_DATASET_TABLE,X
	AND #$00FF
	STA CURPACK
	CMP .LOWORD(CURRENT_SEQUENCE_PACK)
	BEQ @SKIP_DATA_LOAD_3
	CMP #$00FF
	BEQ @SKIP_DATA_LOAD_3
	STA .LOWORD(CURRENT_SEQUENCE_PACK)
	LDA #$F947
	STA CURPACKPTRLO
	LDA #$00C4
	STA CURPACKPTRHI
	LDA CURPACK
	STA $04
	ASL
	ADC $04
	STA $02
	LDX CURPACKPTRLO
	STX $0A
	LDX CURPACKPTRHI
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	JSR a:.LOWORD(UNKNOWN_C4FB42)
	TAX
	LDA $02
	INC
	CLC
	ADC CURPACKPTRLO
	STA CURPACKPTRLO
	LDA [CURPACKPTRLO]
	AND .LOWORD(UNKNOWN_7EB547)
	JSL LOAD_SPC700_DATA
@SKIP_DATA_LOAD_3:
	LDY $10
	TYA
	INC
	JSL UNKNOWN_C0ABBD
@RETURN:
	PLD
	RTL