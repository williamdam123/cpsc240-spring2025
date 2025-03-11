# William Dam
# CPSC 240-3
# March 10, 2025
# Email: wdam1@csu.fullerton.edu

section .data
    msg db "Happy Birthday Chris Sawyer", 0ah

section .text
    global _start

_start:
    ; Print msg 1 time
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 2 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 3 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 4 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 5 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 6 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 7 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 8 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 9 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 10 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 11 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 12 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 13 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 14 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 15 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 16 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 17 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 18 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 19 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 20 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 21 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 22 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 23 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 24 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 25 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 26 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 27 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 28 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 29 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 30 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 31 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 32 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 33 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 34 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 35 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 36 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Print msg 37 times
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, 28         ; message length
    syscall

    ; Exit
    mov rax, 60         ; sys_exit
    mov rdi, 0          ; exit code
    syscall
