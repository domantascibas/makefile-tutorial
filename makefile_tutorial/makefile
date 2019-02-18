objects = foo.o bar.o

all: $(objects)

$(objects): %.o: %.c
	@echo "make file" $@ "with prereqs" $<

init:
	@touch foo.c
	@touch bar.c

clean:
	-rm foo.c bar.c