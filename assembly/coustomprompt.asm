section .data

    seprompt db "YOur Name is: " ,0xA
    sepromptlen equ $ - seprompt

section .bss
    name resb 100
    namelen equ 100

section .text
    global _start


_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, seprompt
    mov edx, sepromptlen
    int 0x80

    mov eax, 3
    mov ebx, 0 
    mov ecx, name
    mov edx, namelen
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, namelen
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
