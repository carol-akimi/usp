all: abb.o main.o item.o 
	gcc abb.o main.o item.o -o main -Wall -std=c99 

abb.o:
	gcc -c abb.c -o abb.o 

main.o:
	gcc -c main.c -o main.o

item.o:
	gcc -c item.c -o item.o 

run:
	./main

clean: 
	rm *.o main 


