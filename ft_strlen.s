         global    _ft_strlen

          section   .text
_ft_strlen:
       mov rax, -1
_loop:
        inc rax
        cmp BYTE [rdi + rax], 0
        jne  _loop
        ret 