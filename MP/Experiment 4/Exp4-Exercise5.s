IO0DIR	EQU 0XE0028008
IO0SET	EQU 0XE0028004
IO0CLR	EQU 0XE002800C
  AREA CHANG, CODE, READONLY
  EXPORT __main
__main
	ENTRY
		LDR R1,=IO0DIR
		LDR	R0,=0X200
		STR	R0,[R1]
		LDR	R2,=IO0CLR
		LDR	R3,=IO0SET
S		STR	R0,[R3]
		LDR	R4,=0X2FFFF
delay	SUBS R4,R4,#1
		BNE	delay
		STR	R0,[R2]
		LDR	R4,=0X2FF
delay1	SUBS R4,R4,#1
		BNE	delay1
		B	S
		END