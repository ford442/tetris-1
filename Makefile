CFLAGS  := -Wall -ansi -g

targets :=
objs    := val.o tetris.o

all:

variants := gtk3 sdl2 sdl1 test
include $(patsubst %,%.mk,$(variants))

index.html:
	emcc -O2 s1.c tetris.c val.c -o s1.bc
	emcc s1.bc -O2 -o tetris.js

all: ${targets} index.html

run: index.html

clean:
	${RM} ${targets} ${objs} index.html index.js index.wasm
