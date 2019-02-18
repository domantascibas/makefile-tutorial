# 'make -f makefile' to run the makefile on the files
# CC variable is the compiler to use
CC=g++
# CFLAGS are compilation options
CFLAGS=-c -Wall

all: hello

hello: main.o factorial.o hello.o
	$(CC) main.cpp hello.cpp factorial.cpp -o hello

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) factorial.cpp

hello.o: hello.cpp
	$(CC) $(CFLAGS) hello.cpp

clean:
	rm *o