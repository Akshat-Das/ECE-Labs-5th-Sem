	INCLUDE VICVPB.S
  AREA  SEVEN, CODE, READONLY
	  EXPORT __main
__main
	ENTRY
	LDR R1,=IO0DIR
	LDR R0,=0XF0FF0000
	STR R0,[R1]
	LDR R2,=IO0SET
	LDR R3,=IO0CLR
S	STR R0,[R3]
	LDR R1,=0X803F0000
	STR R1,[R2]
	BL DELAY
	STR R0,[R3]
	LDR R1,=0X40060000
	STR R1,[R2]
	BL DELAY
	STR R0,[R3]
	LDR R1,=0X205B0000
	STR R1,[R2]
	BL DELAY
	STR R0,[R3]
	LDR R1,=0X104F0000
	STR R1,[R2]
	BL DELAY
	B	S
DELAY
	LDR R5,=0X2FFFFFF
delay	SUBS R5,R5,#1
		BNE delay
		BX LR
		END
	