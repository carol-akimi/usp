all: main.o filas.o item.o 
	gcc main.o filas.o item.o -o main -Wall -std=c99

main.o:
	gcc -c main.c -o main.o 

filas.o:
	gcc -c filas.c -o filas.o 

item.o:
	gcc -c ../item/item.c -o item.o 

clean: 
	rm *.o main

run: 
	./main 