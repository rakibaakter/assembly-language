; Proteus Code, 7SD
CODE SEGMENT

START:
 MOV AL, 080H
 OUT 006H, AL  ; CR Register Address = 006H, Value = 080H
 
X:
 MOV AL, 0B0H ; Displaying '3'
 OUT 000H,AL  ; Port A Address = 000H

 
JMP X    


CODE ENDS
END