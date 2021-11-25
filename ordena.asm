section .TEXT
GLOBAL ordena

ordena:
    ENTER 0, 0
    
    PUSH EBX ; preservando EBX

    MOV EAX, [EBP + 8] ;; ponteiro para vetor
    MOV ECX, [EBP + 12] ;; tamanho

    CMP ECX, 0
    JE .END
    CMP ECX, 1
    JE .END
    DEC ECX

    ;; ZERANDO REGISTRADORES CONTADORES
    XOR EBX, EBX ; EBX
    XOR EDX, EDX ; EAX

.LOOP1:
    XOR EBX, EBX
    .LOOP2:
        PUSH ECX
        PUSH EDX

        MOV ECX, [EAX + EBX*4]
        MOV EDX, [EAX + EBX*4 + 4]
        CMP EDX, ECX
        JG .SEGUE

        ;; swap
        MOV [EAX + EBX*4], EDX
        MOV [EAX + EBX*4 + 4], ECX
    
    .SEGUE:
        POP EDX
        POP ECX
        INC EBX
        CMP EBX, ECX
        JNE .LOOP2
    INC EDX
    CMP EDX, ECX
    JNE .LOOP1
.END:
    POP EBX
    LEAVE
    RET

    



    




    
    

    

