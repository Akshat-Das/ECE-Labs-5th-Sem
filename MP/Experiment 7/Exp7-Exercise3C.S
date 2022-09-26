PINSEL1 EQU 0XE002C004
DACR  EQU   0XE006C000
  AREA CHANG, CODE, READONLY
  EXPORT __main
__main
    ENTRY
        LDR R0,=PINSEL1
        LDR R1,=DACR
        LDR R2,=0X00080000
		    LDR R5,=0XFFC0
        STR R2,[R0]
ADDER	  ADD R4,R4,#0X66
		    STR R4,[R1]
		    BL DELAY
		    CMP R4,R5
		    MOVGT R4,#0X0
		    B ADDER
DELAY   ;subroutine
        LDR R5,=0X2FFF
up      SUBS  R5,R5,#1
        BNE up
        BX  LR
        END