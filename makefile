# crazy simple make file

all: main.c 
	gcc -g -w -Wall -o main main.c

clean: 
	$(RM) main