             global _ft_strdup
             extern _ft_strlen
             extern _ft_strcpy
             extern _malloc
             extern ___error

             section .text

_ft_strdup:
            mov rax, 0
            mov rsi, 0
             call _ft_strlen
             push rdi
             mov rdi, rax
             inc rdi
             call _malloc
             cmp rax, 0
             je _error
             pop rsi
             mov rdi,rax
             call _ft_strcpy
             ret
_error:
            mov rax, 12
            push rax
            call ___error
            pop qword [rax]
            mov rax, 0
            ret