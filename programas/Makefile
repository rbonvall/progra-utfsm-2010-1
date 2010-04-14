PASCALFILES = $(wildcard *.pas)
TARGETS = $(basename $(PASCALFILES))

all: $(TARGETS)
%: %.pas
	gpc $< -o $@
clean:
	rm -f $(TARGETS) *.o

.PHONY: clean all
