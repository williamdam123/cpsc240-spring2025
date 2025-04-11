; edison.asm

global edison

section .text
edison:
    ; Inputs:
    ; xmm0 = R1
    ; xmm1 = R2
    ; xmm2 = R3
    ; xmm3 = E (EMF)

    ; Calculate 1/R1
    movsd xmm4, xmm0
    movsd xmm6, qword [one]
    divsd xmm6, xmm4   ; xmm6 = 1/R1

    ; 1/R2
    movsd xmm4, xmm1
    movsd xmm7, qword [one]
    divsd xmm7, xmm4   ; xmm7 = 1/R2

    ; 1/R3
    movsd xmm4, xmm2
    movsd xmm8, qword [one]
    divsd xmm8, xmm4   ; xmm8 = 1/R3

    ; Add: 1/R1 + 1/R2 + 1/R3
    addsd xmm6, xmm7
    addsd xmm6, xmm8

    ; Total R = 1 / sum
    movsd xmm4, xmm6
    movsd xmm6, qword [one]
    divsd xmm6, xmm4   ; xmm6 = total R

    ; Compute I = E / R
    movsd xmm5, xmm3
    divsd xmm5, xmm6   ; xmm5 = current

    ; Return values:
    ; xmm4 = R, xmm5 = I
    ret

section .data
one: dq 1.0
