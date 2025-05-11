section .data
    mssgg db "Hello World!", 0xA
    lenght equ $ - mssgg

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, mssgg
    mov edx, lenght
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80