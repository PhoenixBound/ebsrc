
MOVEMENT_464: ;$C3DD6C
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3DBDB)
	EBMOVE_UNKNOWN_C0A685 $80, $02
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_8, $0003
	EBMOVE_UNKNOWN_C0A679 $01
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $1708
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $24C8
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $18A0
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A679 $00
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $1818
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A679 $03
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $17A0
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A679 $00
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $16C8
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A679 $01
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $1648
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C0A679 $03
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_9, $1568
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY EVENT_0E_TABLES::UNKNOWN_10, $2328
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EBMOVE_UNKNOWN_C03F1E
	EBMOVE_UNKNOWN_08_3B_94_C0
	EBMOVE_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A023)
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_PAUSE 1*FRAME
	EBMOVE_WRITE_WORD_TEMPVAR $0006
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EBMOVE_PAUSE $50*FRAMES
	EBMOVE_UNKNOWN_C46E46
	EBMOVE_SHORTJUMP .LOWORD(MOVEMENT_35)
