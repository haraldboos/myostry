global loader  ; Entry symbol for ELF

MAGIC_NUMBER equ 0x1BADB002
FLAGS equ 0x0
CHECKSUM equ -MAGIC_NUMBER  ; Checksum ensures MAGIC_NUMBER + FLAGS + CHECKSUM = 0

section .text
align 4
dd MAGIC_NUMBER
dd FLAGS
dd CHECKSUM

loader:
    mov eax, 0xCAFEBABE  ; Store a recognizable debug value in register eax
.loop:
    jmp .loop  ; Infinite loop to prevent execution from continuing
