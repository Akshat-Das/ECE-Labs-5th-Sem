  AREA PROGRAM1, CODE, READONLY
ENTRY
	LDR R0,NUMBER1
	LDR R1,NUMBER2
	AND R2,R0,R1
	EOR R3,R0,R1
	ORR R4,R0,R1
S	B S
NUMBER1 DCD 0X00000003
NUMBER2 DCD 0X00000000
	END