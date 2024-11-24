.model small
.stack 100h
.data
    a db "Enter your number: $"
    b db "The number is: $"

.code
main proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Display message: "Enter your number:"
    mov ah, 9         ; Function to display string
    lea dx, a         ; Load address of 'a'
    int 21h           ; Display the message

    ; Take input (single digit)
    mov ah, 1         ; Function to read a character
    int 21h           ; Input character in AL
    mov bl, al        ; Store input character in BL

    ; Add a newline (CR+LF)
    mov ah, 2         ; Function to display a character
    mov dl, 13        ; Carriage return
    int 21h
    mov dl, 10        ; Line feed
    int 21h

    ; Display message: "The number is:"
    mov ah, 9         ; Function to display string
    lea dx, b         ; Load address of 'b'
    int 21h           ; Display the message

    ; Display the entered number
    mov ah, 2         ; Function to display a character
    mov dl, bl        ; Load input character from BL
    int 21h           ; Display the character

    ; Exit program
    mov ah, 4Ch       ; Function to terminate program
    int 21h           ; Exit

main endp
end main
