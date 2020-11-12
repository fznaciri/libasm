            global _ft_list_push_front  
            extern _malloc
            section .text

;rdi **l rsi data
_ft_list_push_front:
                push rdi
                mov rdi, 16
                call _malloc
                pop rdi
                mov [rax], rsi
                mov rbx, [rdi]
                mov [rax + 8], rbx
                mov [rdi], rax
                ret 