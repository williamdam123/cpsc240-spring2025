; Author information
;   Author name : William Dam
;   Author email: wdam1@csu.fullerton.edu
;   Author section: 240-3
;   Author CWID : 884616384

global isnan

section .text
isnan:
    ; Argument is in rdi (single argument, a floating-point number)
    movq       xmm0, rdi       ; Move the argument (floating-point number) into xmm0
    mov         eax, 0          ; Clear eax (result register)
    mov         ecx, 0x7FF0000000000000  ; Mask to check the exponent (0x7FF for 64-bit NaN)
    
    ; Check if the exponent is all 1s (which indicates a special number: NaN or infinity)
    and         xmm0, rcx       ; Apply mask
    cmp         xmm0, rcx       ; Check if exponent bits are all set
    jne         isnan_finish    ; If not NaN, jump to finish
    
    ; Check if the fraction part is non-zero (to distinguish NaN from infinity)
    mov         eax, 1          ; If exponent is all 1s, we check the fraction
    mov         xmm0, rdi
    and         xmm0, 0x000FFFFFFFFFFFFF  ; Mask out the exponent part, leaving just the fraction
    cmp         xmm0, 0
    jz          isnan_finish    ; If fraction is zero, it's infinity, not NaN
    
    ; If the fraction is non-zero, it is NaN
    mov         eax, 1          ; Set return value to 1 (true, it's NaN)
    
isnan_finish:
    ret
