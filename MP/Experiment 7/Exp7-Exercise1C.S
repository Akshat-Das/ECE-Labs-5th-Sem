  INCLUDE VICVPB.S
    AREA CHANG, CODE, READONLY
    EXPORT __main
__main
    ENTRY 
        LDR R1,=IO0DIR
        LDR R0,=0XFF0000
        STR R0,[R1]
        LDR R3,=IO0PIN
ADDER	ADD R4,R4,#0X190000
		STR R4,[R3]
		BL DELAY
		CMP R4,#0XFF0000
		MOVEQ R4,#0X0
		B ADDER
DELAY   ;subroutine
        LDR R5,=0X2FFF
up      SUBS  R5,R5,#1
        BNE up
        BX  LR
        END