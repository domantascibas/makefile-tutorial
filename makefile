CC=gcc
CFLAGS=-I.
DEPS=hellomake.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: src/hellomake.o src/hellofunc.o
	$(CC) -o hellomake src/hellomake.o src/hellofunc.o