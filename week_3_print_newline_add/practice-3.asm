.MODEL SMALL
.STACK 100H
.DATA
    msg db "Enter The First Character of Your  Name:  $0"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, msg ; loading msg data into DX
    INT 21H


    MOV AH, 1
    INT 21H ; input a character
     
    Mov BL, AL ;shift input to BL

    MOV AH, 2  ; new line
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV AH, 2 ; print the character
    MOV DL, BL
    INT 21H
    
    MOV AH, 2  ; new line
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV DL, BL
    SUB DL, 20H
    MOV AH, 2
    INT 21H

MOV AH, 4CH  ;exit
    INT 21H
MAIN ENDP
END MAIN