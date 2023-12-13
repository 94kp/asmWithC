;; This program returns a stack in C


    global _my_asm
    extern _getchar
    section .text

_my_asm:
    push ebp
    mov ebp, esp

    call _getchar
    ; eax will cointain the return result (char that was entered)
    cmp eax, 'A'
    je _equal
    jmp _end

_equal:
    mov eax, 0
    pop ebp
    ret

_end:
    mov eax, 1
    pop ebp
    ret