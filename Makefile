
CC = gcc

NASM = nasm -f macho64

FLAGS = -Wall -Wextra -Werror

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s

OBJ = $(SRC:.s=.o)

SRC_B = ft_list_size_bonus.s ft_list_push_front_bonus.s ft_atoi_base_bonus.s ft_list_sort_bonus.s ft_list_remove_if_bonus.s

OBJ_B = $(SRC_B:.s=.o)

%.o:	%.s
		$(NASM) $<

all : $(NAME)

bonus: $(OBJ_B) $(OBJ)
			@ar rc $(NAME) $(OBJ_B) $(OBJ)
			@ranlib $(NAME)

$(NAME) : $(OBJ)
			@ar rc $(NAME) $(OBJ)
			@ranlib $(NAME)

test :
		@$(CC) $(FLAGS) main.c $(NAME)
clean :
	@rm -f $(OBJ)
	@rm -f $(OBJ_B)
fclean : clean
	@rm -f $(NAME)

re : fclean clean all
