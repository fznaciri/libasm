             global _ft_write
             extern ___error
             section .text

_ft_write:                      
            mov rax, 0x02000004          
            syscall 
            jc error ; flag?
            ret
error:
            push rax
            call ___error
            pop qword [rax]
            mov rax, -1
            ret
