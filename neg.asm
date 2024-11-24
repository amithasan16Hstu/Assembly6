.model small
.stack 100h
.code

main proc
    mov cl,5
    neg cl
           
    mov ah,2
    mov dl,cl
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main