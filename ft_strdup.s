             global _ft_strdup
             extern _ft_strlen
             extern _ft_strcpy
             extern _malloc
             
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
             je error
             pop rsi
             mov rdi,rax
             call _ft_strcpy
             ret
error:
            mov rax, 0
            ret