  AREA BCD, CODE, READONLY
ENTRY
	LDR R7,=0X4
	LDR R9,=0X6
	LDR R1,=0X4545 ;Number  to be Added
	LDR R2,=0X9954; 2nd Number to be added
	LDR R3,=0X000F
LOOP AND R4,R1,R3
	AND R5,R2,R3
	ADD R10,R4,R5
	MOV R11,R11, LSL R8
	ADD R10,R11
	LDR R11,=0X0
	ORR R0,R0,R10
	MOV R6,R0
	AND R6,R6,R3
	MOV R6,R6,LSR R8
	CMP R6,#0XA
	ADDCS R0,R0,R9, LSL R8
	MOVCS R11,#0X1
	MOV R3,R3,LSL #4
	BICCS R0,R0,R3
	ADD R8,R8,#4
	SUBS R7,R7,#1
	BNE LOOP
s	B s
	END 