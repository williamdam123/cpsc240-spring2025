; tesla.asm
global _start
extern faraday
extern exit

section .text
_start:
    call faraday         ; Call the logic in faraday.asm

    mov edi, 0           ; return 0 to OS
    call exit            ; exit(0)
