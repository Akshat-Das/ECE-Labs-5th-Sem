IO0DIR	EQU 0XE0028008
IO0SET	EQU 0XE0028004
IO0CLR	EQU 0XE002800C
IO1DIR	EQU 0XE0028018
IO1PIN	EQU 0XE0028010
  AREA CHANG, CODE, READONLY
  EXPORT __main
__main
	ENTRY
		LDR R1,=IO0DIR
		LDR	R0,=0X00FF0000
		STR	R0,[R1]
		LDR	R2,=IO0CLR
		LDR	R3,=IO0SET
		LDR	R4,=IO1PIN
		LDR	R1,=IO1DIR
		STR	R0,[R3]
repeat	LDR	R5,[R4]
		AND	R5,#0XFF0000
		CMP	R5,#0XFF0000
		BEQ	repeat
		STR	R0,[R3]
		EOR	R5,#0XFF0000
		STR	R5,[R2]
		B repeat
		END
