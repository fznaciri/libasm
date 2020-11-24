            global _ft_list_size  

            section .text

_ft_list_size:
            xor rax, rax

_loop:
            inc rax
            cmp rdi, 0
            je _return
            cmp word [rdi + 8], 0
            mov  rdi,[rdi + 8]
            jne _loop
            ret
_return:
            mov rax, 0
            ret