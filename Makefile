PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
COMPPREFIX ?= /etc/bash_completion.d

install:
# force copy the git command file.
	cp -f ./git-ccheckout $(PREFIX)/bin
# force copy the completion file.
	cp -f ./git-utils $(COMPREFIX)/git-utils
