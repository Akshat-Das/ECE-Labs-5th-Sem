  AREA ADDITION,CODE,READONLY
ENTRY
    LDR R0,VALUE1+4
    LDR R2,VALUE2+4
    LDR R7,=RESULT
    ADD R7,R7,#8
    ADDS R4,R0,R2
    STR R4,[R7]
    SUB R7,R7,#4
    LDR R1,VALUE1
    LDR R3,VALUE2
    ADCS R5,R1,R3
    STR R5,[R7]
    SUB R7,R7,#4
    LDR R1,VALUE1
    LDR R2,VALUE2
    ADCS R5,R1,R3
    STR R5,[R7]
    SUB R7,R7,#4
    MOV R6,#0
    ADC R6,R6,#0
    STR R6,[R7]
HERE B HERE
VALUE1 DCD 0XFFA2E640,0XF2100123
VALUE2 DCD 0XAA1019BF,0X40023F51
  AREA DATA2,DATA,READWRITE
RESULT DCD 0X0,0X0,0X0
	END