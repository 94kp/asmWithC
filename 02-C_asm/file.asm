; mixing C with assembly

    global _my_asm

    section .text

_my_asm: ; main.c resolves this during linking
    mov eax, 10 ; return results to eax! C return values are stored in EAX!
    ret