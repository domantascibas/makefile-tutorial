# Adding PHONY to a target will prevent make from confusing the phony target with a file name.
# In this example, if clean is created, make clean will still be run.
# PHONY is great to use, but I'll skip it in the rest of the examples for simplicity.

wrong = *.o
objects := $(wildcard *.c)

some_binary:
	touch f1.c
	touch f2.c
	echo $(wrong)
	echo $(objects)

blah:
	cc -c blah.c -o blah.o

.PHONY: clean
clean:
	-rm file1 file2 some_binary
	-rm *.o
