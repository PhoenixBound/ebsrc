
MOVEMENT_469: ;$C3C101
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE 3*MILLISECONDS
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3C143)
	EBMOVE_PAUSE 136*FRAMES
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $04, $0001
	EBMOVE_HALT
