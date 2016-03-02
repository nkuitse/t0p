NAME = t0p
AUTHOR = "Paul Hoffman <nkuitse@nkuitse.com>"
VERSION = 0.02
PROG = t0p
LINKS := `awk '/^sub prog_/ {print "t0" substr($$2,6)}' ${PROG}`
### LINKS = t0write t0label t0queue t0stat t0job

include config.mk

all:

install: $(PROG)
	@echo "Install ${PROG}"
	@install $(PROG) $(PREFIX)/bin/
	@echo "Install symlinks:"
	@for l in $(LINKS); do echo "* $$l"; rm -f $(PREFIX)/bin/$$l; ln -s $(PREFIX)/bin/$(PROG) $(PREFIX)/bin/$$l; done

.PHONY: all install
