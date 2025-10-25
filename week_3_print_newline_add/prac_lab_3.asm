.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC
;to take data from .DATA section
    MOV AX, @DATA
    MOV DX, AX

;take input
    MOV AH, 1
    INT 21H

    MOV BL, AL ;store input to bl to free al register

;new line
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

;print 
    MOV AH, 2
    MOV DL, BL
    INT 21H

;exit
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN