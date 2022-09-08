IO0DIR	EQU 0XE0028008
IO0SET	EQU 0XE0028004
IO0CLR	EQU 0XE002800C
  AREA CHANG, CODE, READONLY
    EXPORT __main
__main
	ENTRY
		LDR	R1,=IO0DIR
		LDR	R0,=0XF000
		STR	R0,[R1]
		LDR	R2,=IO0CLR
		LDR	R3,=IO0SET
S		LDR R6,=ARRAY
		LDR R5,[R6]
		LDR R8,=0X0
BACK	STR	R0,[R3]
		STR	R5,[R2]
		LDR	R4,=0X2FFF
delay	SUBS R4,R4,#1
		BNE	delay
		LDR R5,[R6],#0X4
		ADD R8,R8,#0X1
		CMP	R8,#0X9
		BNE	BACK
		B	S
A B A
ARRAY DCD 0X8000,0XC000,0X4000,0X6000,0X2000,0X3000,0X1000,0X9000
		END