# This makefile is defined to give the following targets:
#
#    default: The default target: Compiles $(PROG) and whatever it 
#	   depends on.
#    check: Compile $(PROG), if needed, and then for each file, F.in, in
#	   directory testing, use F.in as input to "java $(MAIN_CLASS)" and
#          compare the output to the contents of the file names F.out.
#          Report discrepencies.
#    clean: Remove all the .class files produced by java compilation, 
#          and testing output files.
#
# 'make' compiles everything; 'make check'
# compiles and test everything, and 'make clean' cleans things up.
# 


JFLAGS = -g -Xlint:unchecked -Xlint:deprecation

CLASSDIR = ../classes

PYTHON = python3

RMAKE = "$(MAKE)"

# A CLASSPATH value that (seems) to work on both Windows and Unix systems.
# To Unix, it looks like ..:$(CLASSPATH):JUNK and to Windows like
# JUNK;..;$(CLASSPATH).

LIB = ../../library-sp21/javalib/*


CPATH = "$(LIB):..:$(CLASSPATH):;$(LIB);..;$(CLASSPATH)"

# All .java files in this directory.
SRCS := $(wildcard *.java)

.PHONY: default check clean

# To compile a single Java file X.java in this directory
# with 'make X.class'
%.class: %.java
	javac $(JFLAGS) -cp $(CPATH) $<

# First, and therefore default, target.
default: sentinel

check:
	$(RMAKE) -C .. PYTHON=$(PYTHON) check

integration:
	$(RMAKE) -C .. PYTHON=$(PYTHON) integration

# 'make clean' will clean up stuff that can be reconstructed.
clean:
	$(RM) *~ *.class sentinel

### DEPENDENCIES ###

sentinel: $(SRCS)
	javac $(JFLAGS) -cp $(CPATH) $(SRCS)
	touch sentinel
