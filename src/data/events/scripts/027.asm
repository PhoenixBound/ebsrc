
EVENT_27: ;$C3A7F8
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_6, $01C0
	EVENT_UNKNOWN_C0A651 $00
	EVENT_UNKNOWN_C0CCCC
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
EVENT_27_ENTRY_2: ;$C3A815
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_LOOP $08
		EVENT_UNKNOWN_C0CD50
		EVENT_UNKNOWN_C46B0A
		EVENT_UNKNOWN_C0A65F
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(EVENT_27_ENTRY_2)
@UNKNOWN1: ;$C3A830
	EVENT_UNKNOWN_C0CD50
	EVENT_UNKNOWN_C47044
	EVENT_WRITE_TEMPVAR_9AF9 EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN3)
@UNKNOWN2: ;$C3A83D
	EVENT_UNKNOWN_C0C48F
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN3)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_UNKNOWN_C0CCCC
	EVENT_SHORTJUMP .LOWORD(EVENT_27_ENTRY_2)
@UNKNOWN3: ;$C3A851
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
	EVENT_UNKNOWN_C0CEBE
	EVENT_WRITE_TEMPVAR_9AF9 EVENT_9AF9_TABLE::UNKNOWN_7
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C46B0A
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A6AD $0008
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN2)