CC = cc
CFLAGS = -Wall -Wextra -Werror

# Libc
SRCS += ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c
SRCS += ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c
SRCS += ft_strlcpy.c ft_strlcat.c
SRCS += ft_toupper.c ft_tolower.c
SRCS += ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c
SRCS += ft_atoi.c ft_calloc.c ft_strdup.c

# Extra
SRCS += ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c
SRCS += ft_strmapi.c ft_striteri.c
SRCS += ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJS = (SRCS:.c=.o)
NAME = libft.a

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $^

%.o: %.c libft.h
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re