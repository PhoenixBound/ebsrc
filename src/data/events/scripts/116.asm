
EVENT_116: ;$C3BF4E
	EVENT_SET_X $1DE8
	EVENT_SET_Y $1DE8
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 3*MILLISECONDS
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TEMPVAR $0005
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PLAY_SOUND SFX::DOOR_CLOSE
	EVENT_PAUSE $16*FRAMES
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 12*MILLISECONDS
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_WRITE_WORD_TEMPVAR $0000
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
@UNKNOWN0: ;$C3BF87
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_003
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(EVENT_115_116_117_118_119_COMMON)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BEA4)
@UNKNOWN1: ;$C3BF98
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_003
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3BED4)
	EVENT_WRITE_WORD_TEMPVAR $0001
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_004
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
