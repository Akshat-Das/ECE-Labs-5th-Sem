  AREA PROGRAM1, CODE, READONLY
ENTRY
	MOV R0,#-3
	CMP R0,#0
	BGE GREATER
	BLE NEGATIVE
GREATER MOV R1,#0X1
s b s
NEGATIVE MOV R2,#0X2
S B S
	END