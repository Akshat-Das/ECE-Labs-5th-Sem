 AREA PROGRAM1, CODE, READONLY
ENTRY
	ADR R0,Q
	LDR R1,[R0]
	ldrb r2,[r0]
	ldrh r3,[r0]
	LDR R4,=RES
	STR R1,[r4]
	strb r2,[r4,#4]
	strh r3,[r4,#8]
	LDR R6,=VALU
	LDR R7,[R6]
	mov r8,#4
	ldr r9,[r0,r8]
s	B	s
Q	DCD	0xAABBCCDD
P	DCD	0XABCDEF78
	
	AREA	MEMORY,	DATA, READWRITE
VALU	DCD 0X11223344
R	   DCD	0XABBCCDDE
T	   DCD	0X11223344
RES SPACE 10
	END
	