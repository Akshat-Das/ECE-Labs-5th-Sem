  AREA PROGRAM, CODE, READONLY
ENTRY
    LDRB R1,X;
    LDRH R2,Y
    LDR R4,=RESULT
    SUB R3,R1,R2
    STRH R3,[R4]
    ADD R4,R4,#4
    RSB R3,R1,R2
    STRH R3,[R4]
    ADD R4,R4,#4
    SBC R3,R1,R2
    STRH R3,[R4]
    ADD R4,R4,#4
STOP B STOP
X   DCW -0x0001
Y   DCW -0x0001
  AREA EXAMPLE1_DATA,DATA,READWRITE
ALIGN
RESULT  DCW 0
	END