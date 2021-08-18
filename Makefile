CFLAGS  := -Wall -ansi -g

targets :=
objs    := val.o tetris.o

all:

variants :=  sdl2  
include $(patsubst %,%.mk,$(variants))

index.html:
	emcc -O2 s1.c tetris.c val.c -o s12.bc  -sUSE_SDL=2
	emcc s12.bc -O2 -o tetris.js -sUSE_SDL=2

all: ${targets} index.html

run: index.html

clean:
	${RM} ${targets} ${objs} index.html index.js index.wasm
