.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    sub bl,bh
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
    mov ah,2
    mov dl,bl
    ADD dl,48
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main