CFLAGS  := -Wall -ansi -g

targets :=
objs    := val.o tetris.o

all:

variants := gtk3 sdl2 test
include $(patsubst %,%.mk,$(variants))

all: ${targets}


clean:
	${RM} ${targets} ${objs}
