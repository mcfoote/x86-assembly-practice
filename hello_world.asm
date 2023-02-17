; hello_world.asm
;
; Author: Mitchell Foote

global _start

section .text:

_start:
    mov eax, 0x4            ; use write system call
    mov ecx, 1              ; use stdout for fd
    mov ecx, message        ;
    mov edx, message_length ;
    int 0x80                ; interupt syscall
    mov eax, 0x1            ;
    mov ebx, 0              ;
    int 0x80                ;

section .data:
    message: db "Hellow World!!", 0xA
    message_length equ $-message