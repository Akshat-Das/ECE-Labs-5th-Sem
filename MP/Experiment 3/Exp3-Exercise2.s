   AREA PROGRAM, CODE, READONLY
ENTRY
	LDRH R1,X;
	LDRH R2,Y
	LDRH R4,RESULT
	RSC R3,R1,R2
	STRH R3,[R4]
S B S
X DCD 0X0004
Y DCD 0X0006 ;//ANS IS 1 IE 2-1 BECUASE CARRY IS CLEAR AND SO 1 IS SUBTRACTED
RESULT DCD 0X0
	END