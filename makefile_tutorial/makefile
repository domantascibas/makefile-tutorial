# makefile can also be used to run shell commands
# thus, tasks could be automated using makefiles

files = foo.elc bar.o lose.o
src_files = foo.el bar.c lose.c

all: $(files)

$(filter %.o, $(files)): %.o: %.c
	@echo "target:" $@", prereq:" $<
$(filter %.elc, $(files)): %.elc: %.el
	@echo "target:" $@", prereq:" $<

init:
	@touch $(src_files)

clean:
	-rm $(src_files)