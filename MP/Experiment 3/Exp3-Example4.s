  AREA ADDITION, CODE, READONLY
ENTRY
    MOV R0,#0;
    MOV R5,#10
    LDR R6,=NUM_ARRAY
NEXT_ELEMENT
    LDRH R1,[R6]
    ADD R0,R0,R1
    ADD R6,R6,#2
    SUBS R5,R5,#1
    BNE NEXT_ELEMENT
    LDR R4,=RESULT
    STR R0,[R4]
HERE B HERE
NUM_ARRAY DCW 0X1111,0X2222,0X3333,0X4444,0X5555,0X6666,0XAAAA,0XBBBB,0XCCCC
  AREA DATA2,DATA,READWRITE
RESULT  DCD 0X0,0X0
	END