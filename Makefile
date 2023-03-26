# This makefile is defined to give the following targets:
#
#    default: The default target: Compiles the program.
#    check: Compiles the gitlet package, if needed, and then performs the
#           tests described in testing/Makefile.
#    clean: Remove regeneratable files (such as .class files) produced by
#           other targets.
#
# 'make' compiles everything; 'make check'
# compiles and test everything, and 'make clean' cleans things up.
#

# Name of package containing main procedure 
PACKAGE = gitlet

# The name of the Python 3 program, used in the 'check' target. To provide
# a different name run the Makefile with
#	make PYTHON=python check
PYTHON = python3

# Flags to pass to tester.py.
TESTER_FLAGS =

RMAKE = "$(MAKE)"

# Targets that don't correspond to files, but are to be treated as commands.
.PHONY: default check clean

default:
	$(RMAKE) -C $(PACKAGE) default

check: default
	$(RMAKE) -C testing PYTHON=$(PYTHON) TESTER_FLAGS="$(TESTER_FLAGS)" check

# 'make clean' will clean up stuff that can be reconstructed.
clean:
	$(RM) *~
	$(RMAKE) -C $(PACKAGE) clean
	$(RMAKE) -C testing clean

