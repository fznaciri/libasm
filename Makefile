CC = gcc

NASM = nasm -f macho64

FLAGS = -Wall -Wextra -Werror

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s

OBJ = $(SRC:.s=.o)

%.o:	%.s
		$(NASM) $<

all : $(NAME)

$(NAME) : $(OBJ)
			ar rc $(NAME) $(OBJ)
			ranlib $(NAME)

test :
		$(CC) $(FLAGS) main.c $(NAME)
clean :
	rm -f ft_*.o

fclean : clean
	rm -f $(NAME)

re : fclean clean all