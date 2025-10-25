.MODEL SMALL
.STACK 100H
.DATA
    newline db 0DH, 0AH, '$'
    num1 db 2
    num2 db 3
    num3 db 1
    sum db ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX


    MOV AL, num1
    ADD AL, num2  ;add num 2 with num1
    ADD AL, num3  ;add mun 3 with sum of num1+ num2
    MOV sum ,AL   ;movin gsum of three numbers to sum


    MOV DL, sum    ;moving sum to printing register
    ADD DL , 30H   ;converting to ascii 0= 30h
    MOV AH,2       ; print
    INT 21H


    MOV AH, 4CH  ;exit
    INT 21H
MAIN ENDP
END MAIN