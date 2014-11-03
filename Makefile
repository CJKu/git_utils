PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
COMPPREFIX ?= /etc/bash_completion.d
BINS = $(wildcard ./git-*)

install:
# force copy the git command file.
	cp -f ./git-ccheckout $(PREFIX)/bin
# force copy the completion file.
	cp -f ./complection.bash $(COMPREFIX)/git-utils

uninstall:
	rm -f $(PREFIX)/bin/git-ccheckout
	rm -f $(COMPREFIX)/git-utils

