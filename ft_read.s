             global _ft_read
             extern ___error
             section .text

_ft_read:                      
            mov rax, 0x02000003          
            syscall 
            jc _error ; flag?
            ret
_error:
            push rax
            call ___error
            pop qword [rax]
            mov rax, -1
            ret