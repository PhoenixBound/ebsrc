
UNKNOWN_C0A964: ;$C0A964
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	PLX
	JSL UNKNOWN_C47225
	RTL
