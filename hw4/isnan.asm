; Author information
;   Author name : William Dam
;   Author email: wdam1@csu.fullerton.edu
;   Author section: 240-3
;   Author CWID : 884616384

global isnan

section .text
isnan:
    ; Argument is passed in rdi (interpreted as a 64-bit floating-point value)
    movq        xmm0, rdi       ; Move argument to xmm0
    movq        rax, xmm0       ; Copy it into a general-purpose register for bitwise operations

    mov         rdx, 0x7FF0000000000000  ; Mask for exponent (all 1s in exponent field)
    and         rdx, rax        ; Extract exponent bits
    cmp         rdx, 0x7FF0000000000000  ; Check if exponent is all 1s
    jne         isnan_finish    ; If not all 1s, it’s not NaN

    mov         rdx, 0x000FFFFFFFFFFFFF  ; Mask for fraction part
    and         rdx, rax        ; Extract fraction bits
    cmp         rdx, 0           ; If fraction is 0, it's infinity, not NaN
    jz          isnan_finish     ; If fraction is 0, return 0 (not NaN)

    mov         eax, 1           ; Set return value to 1 (indicating NaN)
    ret

isnan_finish:
    xor         eax, eax         ; Set return value to 0 (indicating not NaN)
    ret
