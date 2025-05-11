section .data
    num1 dw 5
    num2 dw 6
section .bss
    reasult resb 10

section .text
    global _start

_start:
    mov ax, [num1]
    mov bx, [num2]
    add ax,bx

    mov [reasult],ax
    
    mov eax , 4
    mov ebx , 1
    mov ecx , reasult
    mov edx , 10

    mov eax, 1
    xor ebx,ebx
    int 0x80