
MOVEMENT_792: ;$C4231F
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EBMOVE_SET_10F2 $02
	EBMOVE_SET_Y $0064
	EBMOVE_WRITE_WRAM_TEMPVAR $9F75
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EBMOVE_SET_X $FEAB
	EBMOVE_SET_X_VELOCITY $02C7
	EBMOVE_PAUSE $96
	EBMOVE_SET_VELOCITIES_ZERO
@UNKNOWN1:
	EBMOVE_SET_X $004C
	EBMOVE_HALT