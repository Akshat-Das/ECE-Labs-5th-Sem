  AREA PROG1, CODE, READONLY
ENTRY 
	LDR R3,NUM1
	LDR R4,NUM1+4
	LDR R1,NUM2
	LDR R2,NUM2+4
	UMULL R5,R6,R3,R1
	UMULL R7,R8,R3,R2
	UMULL R9,R10,R4,R1
	UMULL R11,R12,R4,R2
	ADD R4,R6,R7
	ADD R4,R4,R9
	ADD R3,R8,R10
	ADD R3,R3,R1
	LDR R0,=RESULT
	STR R5,[R0],#0X4
	STR R4,[R0],#0X4
	STR R3,[R0],#0X4
	STR R12,[R0],#0X4
NUM1 DCD 0X11223344,0X77889911
NUM2 DCD 0XAABBCCDD,0X11111111
  AREA MEMORY, DATA, READWRITE
RESULT DCD 0X00000000
	END