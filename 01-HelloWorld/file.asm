; ---------------------------------------
; helloworld.asm

; This is a Win32 console program that outputs "Hello World"
; It needs to be linked with a C library
; ----------------------------------------


    global _main    ; other programs can see this symbol
    extern _printf  ; we want to access a printf symbol somewhere

    section .text   ; code goes in this section
_main:
    push message    ; push our string to a stack
    call _printf    ; call printf from stdlib
    add  esp, 4     ; we change where stack pointer points - 4 bytes is the size of a word in win32 systems 
    ret

message:
    db 'Hello World', 10, 0
