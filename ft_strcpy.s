        global _ft_strcpy
        
        section .text

_ft_strcpy:
            xor rcx, rcx
            cmp rsi, 0
            je _error
            mov rcx, -1
_loop:
            inc rcx
            mov dl, BYTE[rsi + rcx]
            mov BYTE[rdi + rcx], dl
            cmp BYTE[rsi + rcx], 0
            jne _loop
            mov rax, rdi
            ret
_error:
        mov rax, rsi
        ret