  INCLUDE VICVPB.S
  AREA INTERRUPT, CODE, READONLY
  EXPORT __main
__main
	ENTRY
	LDR R1,=IO0DIR
	LDR R0,=0XFF0000
	STR R0,[R1]
	LDR	R1,=PINSEL0
	LDR	R0,=0XC0
	STR	R0,[R1]
	LDR	R1,=EXTMODE
	LDR	R0,=0X02
	STR	R0,[R1]
	LDR	R1,=EXTPOLAR
	LDR	R0,=0
	STR	R0,[R1]
	LDR	R1,=VICVectCntl0
	LDR R0,=0X2F
	STR R0,[R1]
	LDR	R1,=VICVectAddr0
	LDR	R0,=IRQ_EInt1
	STR	R0,[R1]
	LDR	R1,=VICIntEnable
	LDR	R0,=0X00008000
	STR	R0,[R1]
S	B S
IRQ_EInt1
	STMDB R13!,{R0-R1}
	LDR R1,=EXTINT
	LDR R0,=0X2
	STR R0,[R1]
	LDR R2,=0X40000000
	LDR R0,[R2]
	LDR R1,=IO0PIN
	SUB R2,R2,#1
	MOV R0,R2,LSL #16
	STR R0,[R1]
	LDR R1,=VICVectAddr
	LDR R0,=0
	STR R0,[R1]
	LDMIA R13!,{r0-r1}
	SUBS PC,R14,#4
	END
		