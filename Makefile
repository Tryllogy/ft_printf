AR = ar
ARFLAGS = rcs

CC = cc
CFLAGS = -Wall -Werror -Wextra -g3 -MMD -MP

SRC = ft_printf.c
HEADER = ft_printf.h

NAME = libftprintf.a

OBJ = $(SRC:.c=.o)
DEP = $(SRC:.c=.d)

all : $(NAME)

$(NAME) : $(OBJ) Makefile
	$(AR) $(ARFLAGS) $@ $(OBJ)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	rm -rf $(OBJ) $(DEP)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all clean fclean re

-include $(DEP)