
MOVEMENT_DATA_READ8: ;$C09D86
	LDA [$80],Y
	INY
	AND #$00FF
	RTL
