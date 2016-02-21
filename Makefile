NAME = t0p
AUTHOR = "Paul Hoffman <nkuitse@nkuitse.com>"
VERSION = 0.02
PROG = t0p
LINKS = t0write t0label t0queue t0ck t0job

include config.mk

all:

install: $(PROG)
	install $(PROG) $(PREFIX)/bin/
	for l in $(LINKS); do ln -s $(PREFIX)/bin/$(PROG) $(PREFIX)/bin/$l; done

.PHONY: all install
