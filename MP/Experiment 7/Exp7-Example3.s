  INCLUDE VICVPB.s
  AREA ADC, CODE, READONLY
    EXPORT __main
__main
    ENTRY
        LDR R1,=VPBDIV
        LDR R0,=0X02
        STR R0,[R1]
        LDR R1,=PINSEL1
        LDR R0,=0X40000
        STR R0,[R1]
		LDR R1,=IO0DIR
		LDR R0,=0X30FF0000
		STR R4,[R1]
UP1     LDR R1,=AD0CR
        LDR R0,=0X00200410
        STR R0,[R1]
        LDR R2,=1
        ORR R0,R2,LSL#24
        STR R0,[R1]
UP      LDR R1,=AD0DR4
        LDR R0,[R1]
        AND R2,R0,#0X80000000
        CMP R2, #0X80000000
        BNE UP
        MOV R0,R0,LSR#6
        LDR R3,=0X3FF
        AND R0,R0,R3
        LDR R3,=310
        CMP R0,R3
        BPL NXT1
        LDR R3,=0
        B CODE
NXT1    LDR R3,=621
        CMP R0,R3
        BPL NXT2
        LDR R3,=0X10
        B CODE
NXT2    LDR R3, =931
        CMP R0,R3
        BPL NXT3
        LDR R3,=0X20
        B CODE
NXT3    LDR R3,=1023
        CMP R0,R3
        BPL NXT4
        LDR R3,=0X30
        B CODE
NXT4    LDR R3,=0X33
CODE    LDR R1,SEG_CODEL
        AND R2,R2,#0X0F
        LDRB R0,[R1,R2]
        LDR R4,=0X20000000
        MOV R0,R0,LSL#16
        ORR R0,R0,R4
        LDR R1,=IO0PIN
        STR R0,[R1]
        BL DELAY
        LDR R1,=SEG_CODEU
        AND R2,R3,#0XF0
        MOV R2,R2,LSR#4
        LDRB R0,[R1,R2]
        LDR R4,=0X10000000
        MOV R0,R0,LSL#16
        ORR R0,R0,R4
        LDR R1, =IO0PIN
        STR R0,[R1]
        BL DELAY
        B UP1
DELAY   ;subroutine
        LDR R10,=0X2FF
        SUBS    R10,R10,#1
        BNE UP1
        BX LR
SEG_CODEL DCB 0X3F,0X06,0X5B,0X4F
SEG_CODEU DCB 0XBF,0X86,0XDB,0XCF
	END