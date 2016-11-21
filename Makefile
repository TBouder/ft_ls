# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbouder <tbouder@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/04/22 12:12:36 by tbouder           #+#    #+#              #
#    Updated: 2016/11/21 17:13:23 by tbouder          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= 	ft_ls

CC			= 	gcc
CFLAGS		= 	-Wall -Werror -Wextra
OPTI		=	-g

SRC			=	main.c \
				ft_free.c ft_init.c \
				ft_extract_part_one.c ft_extract_part_two.c ft_tools.c \
				ft_ls_short.c ft_ls_one.c ft_ls_long.c \
				ft_print.c ft_args.c ft_recur.c ft_lstinsert.c \
				ft_btree_sort.c ft_bonus.c


HEAD		=	libft/libft.h

LIB			=	libft/libft.a

OBJ			=	main.o \
				ft_free.o ft_init.o \
				ft_extract_part_one.o ft_extract_part_two.o ft_tools.o \
				ft_ls_short.o ft_ls_one.o ft_ls_long.o \
				ft_print.o ft_args.o ft_recur.o ft_lstinsert.o \
				ft_btree_sort.o ft_bonus.o


all: $(NAME)

.SILENT : $(NAME) $(OBJ)
$(NAME): $(OBJ) $(HEAD)
	# $(MAKE) re -C libft
	$(CC) $(CFLAGS) $(OPTI) -c $(SRC)
	$(CC) -o $@ $(OBJ) $(LIB)

.SILENT : clean
clean:
	# $(MAKE) clean -C libft
	rm -f $(OBJ)

.SILENT : fclean
fclean: clean
	# $(MAKE) fclean -C libft
	rm -f $(NAME)

re: fclean all
