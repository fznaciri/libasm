            global _ft_list_size  

            section .text


_ft_list_size:
            xor rax, rax

loop:
            inc rax
            cmp word [rdi + 8], 0
            mov  rdi,[rdi + 8]
            jne loop
            ret