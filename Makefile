EMACS = emacs

check: compile
	$(EMACS) -q -batch -L . -l rect+.el -l rect+-test.el \
		-f ert-run-tests-batch-and-exit
	$(EMACS) -q -batch -L . -l rect+.elc -l rect+-test.el \
		-f ert-run-tests-batch-and-exit

compile:
	$(EMACS) -q -batch -f batch-byte-compile rect+.el
