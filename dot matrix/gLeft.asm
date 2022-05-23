;CR = 1EH
;PORT A= 18H
;PORT B= 1AH
;PORT C= 1CH

A SEGMENT PARA PUBLIC 'CODE' 
ASSUME CS A
ORG 1000H

;CR REGISTER
S:
MOV AL, 80H
OUT 1EH, AL 

L:
MOV DX,0


;TO TURN OFF ALL THE LIGHTS
B:
MOV AL,00H
OUT 1CH, AL

MOV AL,0FFH
OUT 18H, AL
OUT 1AH, AL

;==========================

MOV SI, OFFSET V1
MOV DI, OFFSET V2

MOV BL,0

;==========================  

CMP DX,0FFFH
JE LEFT
INC DX 

;========================== 

C:
MOV  AL, 0FFH
OUT 18H, AL  ;PORT A OFF(FIXED) FOR RED 

MOV AL,BYTE PTR CS:[SI]
OUT 1AH, AL

MOV AL,BYTE PTR CS:[DI]
OUT 1CH, AL  

MOV AL, 00H
OUT 1CH, AL

;==========================

INC SI
INC DI
INC BL

CMP BL,5
JE B
JNE C

;========================== 

LEFT:
    MOV DI, OFFSET V2
    ROR BYTE PTR CS:[DI],1
    INC DI
    ROR BYTE PTR CS:[DI],1
    INC DI
    ROR BYTE PTR CS:[DI],1
    INC DI
    ROR BYTE PTR CS:[DI],1
    INC DI
    ROR BYTE PTR CS:[DI],1
    INC DI
    
    JMP L
    

;========================== 
;ASSIGN ARRAY V1, V2
;V1 FOR PORT B, V2 FOR PORT C

V1: DB 0BFH
    DB 0DFH
    DB 0EFH
    DB 0F7H
    DB 0FBH
    

V2: DB 0F0H
    DB 010H
    DB 0D0H
    DB 090H
    DB 0F0H

;==========================  

A ENDS
END