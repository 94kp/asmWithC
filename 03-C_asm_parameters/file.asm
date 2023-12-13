; mixing C with assembly - passing parameters

    global _my_asm

    section .text

_my_asm: ; main.c resolves this during linking
    push ebp        ; + 4 + 4 = 8, 12 - 8 = 4
    mov ebp, esp    ; move stack pointer to base pointer
    mov eax, [ebp+12] ; 5 is at ebp + 8 and 10 is at ebp + 12
    pop ebp
    ret


; 'call' pushes the return address to the stack, which takes 4 bytes
; when we push our base pointer, we use another 4 bytes, so 8 bytes total now
; now we move the stack pointer, which was 8 bytes ahead of what it was when we called _my_asm
; therefore, we use +12 to get 10, and not +4. If we used ebp+4, we would get the wrong result
; 