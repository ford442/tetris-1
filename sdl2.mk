targets += st

st: CFLAGS += -std=c99 
st: LDLIBS += 
st: st.c tetris.o val.o
