.model small
.stack 100h
.data
num1 dw 7
num2 dw 1
result dw ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ax,num1
    add ax,num2
    mov result,ax
    
    mov ah,2
    mov dx,result 
    add dx,48
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main