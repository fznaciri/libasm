section .text
global _ft_list_push_front
extern _malloc
_ft_list_push_front:
                push rsp
                cmp rdi, 0
                je _return
                cmp rsi, 0
                je _return
                push rdi
                push rsi
                mov rdi, 16
                xor rax, rax
                call _malloc
                pop rsi
                pop rdi
                cmp rax, 0x0
                je _return
                mov [rax], rsi
                mov rcx, [rdi]
                mov [rax + 8], rcx
                mov [rdi], rax
_return:
                pop rsp
                ret