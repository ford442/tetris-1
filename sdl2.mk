targets += st

st: CFLAGS += -std=c99 -sUSE_SDL=2
st: LDLIBS += 
st: st.c tetris.o val.o
