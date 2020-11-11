        global _ft_strcpy
        
        ;extern  _ft_strlen
        
        section .text

; _ft_strcpy:
;     push rdi
;     mov rdi, rsi
;     call _ft_strlen
;     mov rbx, -1
;     pop rdi
    
; loop:
;     inc rbx
;     cmp rbx, rax
;     jle copy
;     ret
; copy:
;     mov dl, BYTE [rsi + rbx]
;     mov  BYTE [rdi + rbx], dl
;     jmp loop

_ft_strcpy:
            xor rcx, rcx
            cmp rsi, 0
            je error
            mov rcx, -1
loop:
            inc rcx
            mov dl, BYTE[rsi + rcx]
            mov BYTE[rdi + rcx], dl
            cmp BYTE[rsi + rcx], 0
            jne loop
            mov rax, rdi
            ret
error:
        mov rax, rsi
        ret