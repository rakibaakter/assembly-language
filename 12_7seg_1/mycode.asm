; Proteus code, 7SD
CODE SEGMENT
    
START:
 MOV AL, 080H
 OUT 006H, AL ; CR REGISTER ADDRESS = 006H, VALUE = 080H
 
X:
 
  MOV AL, 0F9H ;DISPLAYING '1''
  OUT 0E0H,AL ; PORT A ADDRESS 
  
  MOV AL, 0FFH ;OFF
  OUT 0E2H,AL   
  OUT 0E4H,AL   
  OUT 0D0H,AL    
  OUT 0D2H,AL    
  OUT 0D4H,AL
  OUT 0B0H,AL    
  OUT 0B2H,AL    
  OUT 0B4H,AL
  OUT 070H,AL    
  OUT 072H,AL    
  OUT 074H,AL   
 
 
  
  MOV CX, 0FFFFH ;DELAY
  L1: LOOP L1  
  
  MOV AL, 0FFH ;OFF
  OUT 0E0H,AL
   
  MOV AL, 0A4H ;DISPLAYING '2'
  OUT 0E2H,AL ; PORT B ADDRESS   
  
 
  
  MOV CX, 0FFFFH ;DELAY
  L2: LOOP L2
  
  MOV AL, 0FFH ;OFF
  OUT 0E2H,AL  
  
  MOV AL, 0B0H ;DISPLAYING '3''
  OUT 0E4H,AL ; PORT C ADDRESS 
  
  
  
  MOV CX, 0FFFFH ;DELAY
  L3: LOOP L3
  
  MOV AL, 0FFH ;OFF
  OUT 0E4H,AL 
  
  MOV AL, 099H ;DISPLAYING '4'
  OUT 0D0H,AL ; PORT A ADDRESS   
  

  
  MOV CX, 0FFFFH ;DELAY
  L4: LOOP L4  
  
  MOV AL, 0FFH ;OFF
  OUT 0D0H,AL 
   
  MOV AL, 092H ;DISPLAYING '5'
  OUT 0D2H,AL ; PORT B ADDRESS   
  

  
  MOV CX, 0FFFFH ;DELAY
  L5: LOOP L5
   
  MOV AL, 0FFH ;OFF
  OUT 0D2H,AL 
  
  MOV AL, 082H ;DISPLAYING '6'
  OUT 0D4H,AL ; PORT C ADDRESS
  
  MOV CX, 0FFFFH ;DELAY
  L6: LOOP L6 
  
  MOV AL, 0FFH ;OFF
  OUT 0D4H,AL
  
  MOV AL, 0F9H ;DISPLAYING '1''
  OUT 0B0H,AL ; PORT A ADDRESS 
  
  
  MOV CX, 0FFFFH ;DELAY
  L7: LOOP L7 
  
  MOV AL, 0FFH ;OFF
  OUT 0B0H,AL
   
  MOV AL, 0A4H ;DISPLAYING '2'
  OUT 0B2H,AL ; PORT B ADDRESS   
  
 
  
  MOV CX, 0FFFFH ;DELAY
  L8: LOOP L8
  
  MOV AL, 0FFH ;OFF
  OUT 0B2H,AL  
  
  MOV AL, 0B0H ;DISPLAYING '3''
  OUT 0B4H,AL ; PORT C ADDRESS 
  
  
  
  MOV CX, 0FFFFH ;DELAY
  L9: LOOP L9
  
  MOV AL, 0FFH ;OFF
  OUT 0B4H,AL 
  
  MOV AL, 099H ;DISPLAYING '4'
  OUT 070H,AL ; PORT A ADDRESS   
  

  
  MOV CX, 0FFFFH ;DELAY
  L10: LOOP L10 
  
  MOV AL, 0FFH ;OFF
  OUT 070H,AL 
   
  MOV AL, 092H ;DISPLAYING '5'
  OUT 072H,AL ; PORT B ADDRESS   
  

  
  MOV CX, 0FFFFH ;DELAY
  L11: LOOP L11
   
  MOV AL, 0FFH ;OFF
  OUT 072H,AL 
  
  MOV AL, 082H ;DISPLAYING '6'
  OUT 074H,AL ; PORT C ADDRESS
  
  MOV CX, 0FFFFH ;DELAY
  L12: LOOP L12
  
  MOV AL, 0FFH ;OFF
  OUT 074H,AL  
  
 
  
  
JMP X

CODE ENDS
END




