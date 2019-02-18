# Define required macros here
SHELL = /bin/sh

# Directories
IDIR = ../incl
ODIR = obj

# Compiler options
CC = g++
CFLAGS = -Wall -I$(IDIR)
LIBS = -lm

# Dependencies
_DEPS = functions.h
DEPS = $(patsubst %, $(IDIR)/%, $(_DEPS))

# Objects
_OBJ = main.o factorial.o hello.o
OBJ = $(patsubst %, $(ODIR)/%, $(_OBJ))

hello: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(OBJ) $(LIBS)

$(ODIR)/%.o: %.cpp $(DEPS)
	@ mkdir -p $(ODIR)
	$(CC) $(CFLAGS) -c $<

# hello: main.o factorial.o hello.o
# 	$(CC) main.o factorial.o hello.o -o hello

# main.o: main.cpp functions.h
# 	$(CC) -c main.cpp

# factorial.o: factorial.cpp functions.h
# 	$(CC) -c factorial.cpp

.PHONY: install clean

install:
	@echo You must be root to install

clean:
	-rm -f *.o hello core *.core