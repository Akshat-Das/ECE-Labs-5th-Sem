  AREA PROGRAM1, CODE, READONLY
ENTRY
	LDR R0,=ARR;
	MOV R1,#0
	LDR R4,=0X40000000
	LDR R6,=0X40002000
LOP CMP R1,#0XA
	BEQ DONE
	ADD R1,R1,#1
	LDR R2,[R0],#4
	MOVS R3,R2,LSR#1
	BCS NEGA
	B POS
POS STR R2,[R4],#4
	B LOP
NEGA STR R2,[R6],#4
	B LOP
DONE MOV R10,#3
S B S
ARR DCD 3,2,4,5,7,9,1,6,8,2
	END