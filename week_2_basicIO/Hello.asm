.MODEL SMALL
.STACK 100H
.DATA
    ; your data here
.CODE
MAiN PROC


    ;your code here
    MOV AH,4CH   ;exit program
    INT 21H
MAIN ENDP
ENd MAIN



;MOV AH,2 to print a character
;data in DX register
;INT 21H{hexadecimal} intrupt to stop a code
;DOS disk operating system

;LEA DX, msg  to load a message to DX register
;MOV,AH, 1  to take input from user a character
;user input always in AX
 ; to display
 ; MOV AH, 2
 ;MOV DL, AL
 ;INT 21H
 
