CC=gcc
CFLAGS=-I.

hellomake: src/hellomake.o src/hellofunc.o
	$(CC) -o hellomake src/hellomake.o src/hellofunc.o