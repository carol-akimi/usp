all: main.o pilhafila.o item.o pilha.o 
	gcc main.o pilhafila.o item.o pilha.o -o main -Wall -std=c99 

main.o:
	gcc -c main.c -o main.o 

item.o:
	gcc -c ../../item/item.c -o item.o 

pilha.o:
	gcc -c ../pilhas/pilha_seq.c -o pilha.o

pilhafila.o:
	gcc -c pilha_fila.c -o pilhafila.o 

clean:
	rm *.o main

run:
	./main