NAME: so_long

INCLUDES = -I/usr/include -Imlx

// LINK X11 and MLX

MLX_FLAGS = -lmlx -lmlx -L/usr/lib/X11 -lXext -lX11

.c.o:
    $(CC) $(CFLAGS) -c -o $@ $< $(INCLUDES)

$(NAME): $(OBJS)
    $(CC) $(CFLAGS) -O $(NAME) $(OBJS) $(MLX_FLAGS)

$(MLX_LIB):
	@make -C $(MLX_DIR)


