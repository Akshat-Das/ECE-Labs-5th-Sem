  AREA PROGRAM1, CODE, READONLY
ENTRY
	ADR R0,Q
	LDR R1,=VAL
	LDRB R3,[R0]
	MOV R4,R3,LSL#2
	MOV R4,R4,LSR#1
	LDR R5,[R0],R4,LSL#2
	STRB R5,[R1]
S	B	S
Q	DCB	1
  AREA MEMORY,	DATA, READWRITE
VAL	DCD 0X11223344
	END
	