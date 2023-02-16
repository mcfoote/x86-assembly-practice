; hello_world.asm
;
; Author: Mitchell Foote


section .text:
    mov eax, 0x4        ; use write system call

section .data:
    message: db "Hellow World!!", 0xA
    message_length equ $-message