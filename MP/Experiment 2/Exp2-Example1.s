  AREA PROGRAM1, CODE, READONLY
ENTRY 
	MOV R0,#NUMBER
	MOVS R1,R0,LSR #1
	MOVCS R2,#0XFFFFFFFF
	LDRCC R2,=0X55555555
S B S
NUMBER DCD 0X00000005
  END