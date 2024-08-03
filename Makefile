
ROOTNAME=ZombieAttack
ASSIGNFILE=ZombieHelp
# DO NOT CHANGE the RUNOPTIONS
RUNOPTIONS=27 42

ASM=as
CC=gcc
CPP=g++
CFLAGS= -g -I.
AFLAGS=
# To add libraries, add "-l <libname>", for multiple repeat prior for each lib.
LIBS =
DEPS = 
ARCH = $(shell uname -m)

ifeq ($(ARCH), arm64)
	ARCHOBJ=AS
else
	ARCHOBJ=PI
endif

OBJ = $(ROOTNAME)$(ARCHOBJ).o $(ASSIGNFILE)$(ARCHOBJ).o

%.o: %.s $(DEPS)
	$(ASM) -c -o $@ $< $(AFLAGS)

$(ROOTNAME)$(ARCHOBJ): $(OBJ)
	$(CPP) -o $@ $^ $(CFLAGS)  $(LIBS)

clean:
	rm *.o $(ROOTNAME)$(ARCHOBJ)

run: $(ROOTNAME)$(ARCHOBJ)
	./$(ROOTNAME)$(ARCHOBJ) $(RUNOPTIONS)

ref: 
	$(CPP) -o $(ROOTNAME) $(ROOTNAME).cc

