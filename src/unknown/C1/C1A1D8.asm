
UNKNOWN_C1A1D8: ;$C1A1D8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE6
	TCD
	PLA
	TAX
	DEC
	STA $02
	STA $18
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2D
	JSL CALL_C12DD5_WITH_ZERO_9622
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0000
	TXA
	JSL UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT+501, $0E
	LDA #$0008
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_offense,X
	AND #$00FF
	TAY
	STY $16
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDX #$0000
	STX $14
	LDA $02
	CMP #$0003
	BNE @UNKNOWN0
	LDX #$0001
	STX $14
@UNKNOWN0:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $12
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	DEC
	STA $02
	LDA $12
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $14
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $16
	TYA
	CLC
	ADC $04
	TAY
	STY $16
@UNKNOWN1:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	LDX #$0000
	LDA #$0037
	JSL UNKNOWN_C43D75
	LDY $16
	STY $04
	LDA #$0000
	CLC
	SBC $04
	BVC @UNKNOWN2
	BPL @UNKNOWN4
	BRA @UNKNOWN3
@UNKNOWN2:
	BMI @UNKNOWN4
@UNKNOWN3:
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN4:
	TYA
	CLC
	SBC #$00FF
	BVC @UNKNOWN5
	BPL @UNKNOWN7
	BRA @UNKNOWN6
@UNKNOWN5:
	BMI @UNKNOWN7
@UNKNOWN6:
	LDX #$00FF
	BRA @UNKNOWN8
@UNKNOWN7:
	TYA
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN8:
	TXA
@UNKNOWN9:
	STA $06
	STZ $08
	BPL @UNKNOWN10
	DEC $08
@UNKNOWN10:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(PRINT_NUMBER)
	STZ .LOWORD(UNKNOWN_7E5E71)
	LDX #$0001
	LDA #$0000
	JSL UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT+509, $0E
	LDA #$0008
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDA $18
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	TAY
	STY $16
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	BEQ @UNKNOWN12
	LDX #$0000
	STX $14
	LDA $02
	CMP #$0003
	BNE @UNKNOWN11
	LDX #$0001
	STX $14
@UNKNOWN11:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $12
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	DEC
	STA $02
	LDA $12
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $14
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $16
	TYA
	CLC
	ADC $04
	TAY
	STY $16
@UNKNOWN12:
	LDA $18
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	BEQ @UNKNOWN14
	LDX #$0000
	STX $14
	LDA $02
	CMP #$0003
	BNE @UNKNOWN13
	LDX #$0001
	STX $14
@UNKNOWN13:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $12
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	DEC
	STA $02
	LDA $12
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $14
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $16
	TYA
	CLC
	ADC $04
	TAY
	STY $16
@UNKNOWN14:
	LDA $18
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	BEQ @UNKNOWN16
	LDX #$0000
	STX $14
	LDA $02
	CMP #$0003
	BNE @UNKNOWN15
	LDX #$0001
	STX $14
@UNKNOWN15:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $12
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	DEC
	STA $02
	LDA $12
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $14
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDY $16
	TYA
	CLC
	ADC $04
	TAY
	STY $16
@UNKNOWN16:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	TAX
	LDA #$0037
	JSL UNKNOWN_C43D75
	LDY $16
	STY $04
	LDA #$0000
	CLC
	SBC $04
	BVC @UNKNOWN17
	BPL @UNKNOWN19
	BRA @UNKNOWN18
@UNKNOWN17:
	BMI @UNKNOWN19
@UNKNOWN18:
	LDA #$0000
	BRA @UNKNOWN24
@UNKNOWN19:
	TYA
	CLC
	SBC #$00FF
	BVC @UNKNOWN20
	BPL @UNKNOWN22
	BRA @UNKNOWN21
@UNKNOWN20:
	BMI @UNKNOWN22
@UNKNOWN21:
	LDX #$00FF
	BRA @UNKNOWN23
@UNKNOWN22:
	TYA
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN23:
	TXA
@UNKNOWN24:
	STA $06
	STZ $08
	BPL @UNKNOWN25
	DEC $08
@UNKNOWN25:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(PRINT_NUMBER)
	STZ .LOWORD(UNKNOWN_7E5E71)
	LDA .LOWORD(UNKNOWN_7E9CD4)
	BNE @UNKNOWN26
	JMP a:.LOWORD(@UNKNOWN53)
@UNKNOWN26:
	LDX #$0000
	LDA #$004C
	JSL UNKNOWN_C43D75
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$014E
	JSL UNKNOWN_C43F77
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA $18
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_offense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E9CD0)
	AND #$00FF
	BEQ @UNKNOWN28
	LDX #$0000
	STX $16
	LDA $02
	CMP #$0003
	BNE @UNKNOWN27
	LDX #$0001
	STX $16
@UNKNOWN27:
	LDA .LOWORD(UNKNOWN_7E9CD0)
	AND #$00FF
	DEC
	PHA
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $16
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDA $14
	CLC
	ADC $04
	STA $14
@UNKNOWN28:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	LDA $14
	STA $04
	LDA #$0000
	CLC
	SBC $04
	BVC @UNKNOWN29
	BPL @UNKNOWN31
	BRA @UNKNOWN30
@UNKNOWN29:
	BMI @UNKNOWN31
@UNKNOWN30:
	LDA #$0000
	BRA @UNKNOWN36
@UNKNOWN31:
	LDA $14
	CLC
	SBC #$00FF
	BVC @UNKNOWN32
	BPL @UNKNOWN34
	BRA @UNKNOWN33
@UNKNOWN32:
	BMI @UNKNOWN34
@UNKNOWN33:
	LDX #$00FF
	BRA @UNKNOWN35
@UNKNOWN34:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN35:
	TXA
@UNKNOWN36:
	STA $06
	STZ $08
	BPL @UNKNOWN37
	DEC $08
@UNKNOWN37:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(PRINT_NUMBER)
	STZ .LOWORD(UNKNOWN_7E5E71)
	LDX #$0001
	LDA #$004C
	JSL UNKNOWN_C43D75
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$014E
	JSL UNKNOWN_C43F77
	LDA $18
	STA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	STA $16
	LDA .LOWORD(UNKNOWN_7E9CD1)
	AND #$00FF
	BEQ @UNKNOWN39
	LDX #$0000
	STX $14
	LDA $02
	CMP #$0003
	BNE @UNKNOWN38
	LDX #$0001
	STX $14
@UNKNOWN38:
	LDA .LOWORD(UNKNOWN_7E9CD1)
	AND #$00FF
	DEC
	PHA
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $14
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDA $16
	CLC
	ADC $04
	STA $16
@UNKNOWN39:
	LDA .LOWORD(UNKNOWN_7E9CD2)
	AND #$00FF
	BEQ @UNKNOWN41
	LDX #$0000
	STX $14
	LDA $18
	STA $02
	CMP #$0003
	BNE @UNKNOWN40
	LDX #$0001
	STX $14
@UNKNOWN40:
	LDA .LOWORD(UNKNOWN_7E9CD2)
	AND #$00FF
	DEC
	PHA
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	LDX $14
	STX $02
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $04
	LDA $16
	CLC
	ADC $04
	STA $16
@UNKNOWN41:
	LDA .LOWORD(UNKNOWN_7E9CD3)
	AND #$00FF
	BEQ @UNKNOWN43
	LDX #$0000
	LDA $18
	STA $02
	CMP #$0003
	BNE @UNKNOWN42
	LDX #$0001
@UNKNOWN42:
	STX $04
	LDA .LOWORD(UNKNOWN_7E9CD3)
	AND #$00FF
	DEC
	PHA
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $16
	CLC
	ADC $02
	STA $16
@UNKNOWN43:
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	LDA $16
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN44
	BPL @UNKNOWN46
	BRA @UNKNOWN45
@UNKNOWN44:
	BMI @UNKNOWN46
@UNKNOWN45:
	LDA #$0000
	BRA @UNKNOWN51
@UNKNOWN46:
	LDA $16
	CLC
	SBC #$00FF
	BVC @UNKNOWN47
	BPL @UNKNOWN49
	BRA @UNKNOWN48
@UNKNOWN47:
	BMI @UNKNOWN49
@UNKNOWN48:
	LDX #$00FF
	BRA @UNKNOWN50
@UNKNOWN49:
	LDA $16
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN50:
	TXA
@UNKNOWN51:
	STA $06
	STZ $08
	BPL @UNKNOWN52
	DEC $08
@UNKNOWN52:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(PRINT_NUMBER)
	STZ .LOWORD(UNKNOWN_7E5E71)
@UNKNOWN53:
	JSL CLEAR_9622
	PLD
	RTL
