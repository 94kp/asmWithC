;; This program returns a stack in C


    global _my_asm

    section .text

_my_asm:
    push ebp
    mov ebp, esp

    mov eax, 434822
    mov edx, 'A'

    pop ebp
    ret