
UNKNOWN_C0AA07: ;$C0AA07
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	TAY
	PLX
	PLA
	JSL UNKNOWN_C08814
	RTL
