section .data
    askname db "Enter your name: ", 0xA   ; Corrected initialization
    asklength equ $ - askname   

section .bss
    buffer resb 100
    length equ $-buffer
 
section .text
    global _start

_start:
    mov eax,4
    mov ebx,1
    mov ecx, askname
    mov edx, asklength
    int 0x80

    mov eax,3
    mov ebx,0
    mov ecx, buffer
    mov edx, 100
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx, buffer
    mov edx, length
    int 0x80
    
    mov eax ,1
    xor ebx,ebx
    int 0x80