.MODEL SMALL
.STACK 100H
.DATA
    msg db "Enter a Character:  $"
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX


    MOV AH, 9
    LEA DX, msg ; loading msg data into DX
    INT 21H

    MOV AH, 1 ; input character
    INT 21H ; character stored in AL

    MOV BL, AL  ;save it for later

    MOV AH, 2 ; print the character
    MOV DH, AL
    INT 21H

    Mov AH, 4CH
    INT 21H
MAiN ENDP
END MAIN
