# Define required macros here
SHELL = /bin/sh

# Directories
IDIR = incl
ODIR = build
BDIR = bin

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

$(ODIR)/%.o: %.cpp $(DEPS)
	@ mkdir -p $(ODIR)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BDIR)/hello: $(OBJ)
	@mkdir -p $(BDIR)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

.PHONY: install clean

install:
	@echo You must be root to install

clean:
	-rm -f $(ODIR)/*.o $(IDIR)/*~