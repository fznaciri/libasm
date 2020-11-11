             global _ft_strcmp

             section .text

_ft_strcmp:
             mov rax, 0
             mov rbx, 0
             mov r8, -1
loop:
             inc r8
             mov al, BYTE [rdi + r8]
             mov bl, BYTE [rsi + r8]
             cmp al, 0
             je done
             cmp bl, 0
             je done
             cmp al, bl
             je loop
             jmp done
done:             
             sub rax, rbx
             ret