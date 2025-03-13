all: ab.o main.o item.o 
	gcc ab.o main.o item.o -o main -Wall -std=c99 

ab.o:
	gcc -c ab.c -o ab.o 

main.o:
	gcc -c main.c -o main.o 

item.o:
	gcc -c item.c -o item.o 

run:
	./main

clean: 
	rm *.o main 


