
EVENT_686: ;$C381E0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAB8)
	EVENT_PLAY_SOUND SFX::CURSOR3
	EVENT_UNKNOWN_C0A673
	EVENT_WRITE_TEMPVAR_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4
UNKNOWN_C381EF: ;$C381EF
	EVENT_ADD_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4, $0002
	EVENT_AND_9AF9 EVENT_9AF9_TABLE::UNKNOWN_4, $0007
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_4
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_PAUSE $06*FRAMES
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C381EF)
