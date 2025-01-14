all: item.o Pilha.o main.o
	gcc item.o Pilha.o main.o -o main -std=c99 -Wall

Pilha.o: 
	gcc -c pilha_seq.c -I /../../algoritmos/item -o Pilha.o

item.o: 
	gcc -c ../../algoritmos/item/item.c -o item.o

main.o:
	gcc -c main.c -o main.o

run:
	./main

clean:
	rm *.o main
