;; This program returns a stack in C


    global _my_asm

    section .text

_my_asm:
    push ebp
    mov ebp, esp

    mov eax, [esp+9]

    pop ebp
    ret