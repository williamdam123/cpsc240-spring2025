; Author information
;   Author name : William Dam
;   Author email: wdam1@csu.fullerton.edu
;   Author section: 240-3
;   Author CWID : 884616384

global fill_random_array
extern rdrand
extern isnan

segment .data
segment .bss
    align 64
    storedata resb 832

segment .text
fill_random_array:
    ; Backup registers
    push        rbp
    mov         rbp, rsp
    push        rbx
    push        rcx
    push        rdx
    push        rsi
    push        rdi
    push        r8 
    push        r9 
    push        r10
    push        r11
    push        r12
    push        r13
    push        r14
    push        r15
    pushf

    ; Save floating-point state
    mov         rax, 7
    mov         rdx, 0
    xsave       [storedata]

    xor         r13, r13     ; Index
    mov         r14, rdi     ; Address of random_number_array   
    mov         r15, rsi     ; Count of numbers to generate

fill_loop:
    cmp         r13, r15
    jge         fill_finished

    rdrand      r12
    jnc         fill_loop    ; If rdrand fails, retry

    ; Check if NaN
    mov         rdi, r12
    call        isnan
    test        rax, rax
    jnz         fill_loop    ; Retry if NaN

    mov         [r14 + r13 * 8], r12
    inc         r13
    jmp         fill_loop

fill_finished:
    ; Restore floating-point state
    mov         rax, 7
    mov         rdx, 0
    xrstor      [storedata]

    ; Restore registers
    popf
    pop         r15
    pop         r14
    pop         r13
    pop         r12
    pop         r11
    pop         r10
    pop         r9 
    pop         r8 
    pop         rdi
    pop         rsi
    pop         rdx
    pop         rcx
    pop         rbx
    pop         rbp

    ; Clean up
    ret
