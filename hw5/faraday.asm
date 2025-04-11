; faraday.asm

global faraday
extern printf, fgets, stdin, strlen, atof
extern edison

section .data
    welcome_msg         db "Welcome to Electricity brought to you by Henry Finkelstein.", 10, 0
    description_msg     db "This program will compute the resistance current flow in your direct circuit.", 10, 0
    name_msg            db "Please enter your full name: ", 0
    career_msg          db "Please enter the career path you are following: ", 0
    thanks_msg          db "Thank you. We appreciate all %s.", 10, 0
    sub_msg             db "Your circuit has 3 sub-circuits.", 10, 0
    resistance_msg      db "Please enter the resistance in ohms on each of the three sub-circuits separated by ws.", 10, 0
    emf_msg             db "Please enter the EMF of this circuit in volts: ", 0
    result_msg          db "The total resistance of the full circuit is computed to be %lf ohms.", 10, 0
    current_msg         db "The current flowing in this circuit has been computed: %lf amps", 10, 0
    goodbye_msg         db "Thank you %s for using the program Electricity.", 10, 0
    final_msg           db "The driver received this number %lf, and will keep it until next semester.", 10, 0

    fmt_str             db "%s", 0
    fmt_float           db "%lf", 0

section .bss
    name    resb 100
    career  resb 100
    input   resb 100

faraday:
    ; Greet user
    mov rdi, welcome_msg
    call printf
    mov rdi, description_msg
    call printf

    ; Name
    mov rdi, name_msg
    call printf
    mov rdi, name
    mov rsi, 100
    mov rdx, [stdin]
    call fgets
    mov rdi, name
    call strlen
    mov byte [name + rax - 1], 0

    ; Career
    mov rdi, career_msg
    call printf
    mov rdi, career
    mov rsi, 100
    mov rdx, [stdin]
    call fgets
    mov rdi, career
    call strlen
    mov byte [career + rax - 1], 0

    ; Thanks
    mov rdi, thanks_msg
    mov rsi, career
    call printf

    mov rdi, sub_msg
    call printf
    mov rdi, resistance_msg
    call printf

    ; R1
    mov rdi, input
    mov rsi, 100
    mov rdx, [stdin]
    call fgets
    mov rdi, input
    call strlen
    mov byte [input + rax - 1], 0
    mov rdi, input
    call atof
    movsd xmm0, xmm0   ; R1

    ; R2
    mov rdi, input
    mov rsi, 100
    mov rdx, [stdin]
    call fgets
    mov rdi, input
    call strlen
    mov byte [input + rax - 1], 0
    mov rdi, input
    call atof
    movsd xmm1, xmm0   ; R2

    ; R3
    mov rdi, input
    mov rsi, 100
    mov rdx, [stdin]
    call fgets
    mov rdi, input
    call strlen
    mov byte [input + rax - 1], 0
    mov rdi, input
    call atof
    movsd xmm2, xmm0   ; R3

    ; EMF
    mov rdi, emf_msg
    call printf
    mov rdi, input
    mov rsi, 100
    mov rdx, [stdin]
    call fgets
    mov rdi, input
    call strlen
    mov byte [input + rax - 1], 0
    mov rdi, input
    call atof
    movsd xmm3, xmm0   ; EMF

    ; Call edison with xmm0 = R1, xmm1 = R2, xmm2 = R3, xmm3 = E
    call edison        ; returns: xmm4 = total R, xmm5 = current

    ; Display results
    mov rdi, result_msg
    movsd xmm0, xmm4
    call printf

    mov rdi, current_msg
    movsd xmm0, xmm5
    call printf

    mov rdi, goodbye_msg
    mov rsi, name
    call printf

    mov rdi, final_msg
    movsd xmm0, xmm5
    call printf

    ret
