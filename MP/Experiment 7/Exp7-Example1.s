  INCLUDE VICVPB.S
    AREA CHANG, CODE, READONLY
    EXPORT __main
__main
    ENTRY
        LDR R1,=IO0DIR
        LDR R0,=0XFF0000
        STR R0,[R1]
        LDR R2,=IO0CLR
        LDR R3,=IO0SET
BACK    STR R0,[R2]
        BL  DELAY
        STR R0,[R3]
        BL  DELAY
        B   BACK
DELAY   ;subroutine
        LDR R5,=0X2FFF
        SUBS  R5,R5,#1
up      BNE up
        BX  LR
        END