
UNKNOWN_C0A643: ;$C0A643
	JSL MOVEMENT_DATA_READ16
	STY $94
	JSL UNKNOWN_C0A65F
	STA .LOWORD(LOADED_TPT_ENTRIES),X
	RTL
