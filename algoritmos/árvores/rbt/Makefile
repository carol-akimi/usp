all: rbt.o main.o 
	gcc rbt.o main.o -o main -Wall -std=c99 

rbt.o:
	gcc -c rbt.c -o rbt.o 

main.o:
	gcc -c main.c -o main.o 

run:
	./main

clean:
	rm *.o main