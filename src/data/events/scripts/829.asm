
EVENT_829: ;$C36338
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C35FB6)
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $75*FRAMES
	EVENT_SET_VELOCITIES_ZERO
@UNKNOWN1: ;$C3634A
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_UNKNOWN_C4ECE7
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)