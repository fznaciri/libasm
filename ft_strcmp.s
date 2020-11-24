             global _ft_strcmp

             section .text

_ft_strcmp:
             mov rax, 0
             mov rbx, 0
             mov r8, -1
_loop:
             inc r8
             mov al, BYTE [rdi + r8]
             mov bl, BYTE [rsi + r8]
             cmp al, 0
             je _done
             cmp bl, 0
             je _done
             cmp al, bl
             je _loop
             jmp _done
_done:             
             sub rax, rbx
             ret