all: item.o rpn.o Pilha.o main.o
	gcc item.o rpn.o Pilha.o main.o -o main -std=c99 -Wall

Pilha.o: 
	gcc -c ../pilha_sequencial/pilha_seq.c -I ../item/ -o Pilha.o

item.o: 
	gcc -c ../item/item.c -o item.o
	
rpn.o: 
	gcc -c rpn.c -o rpn.o

main.o:
	gcc -c main.c -o main.o

run:
	./main

clean:
	rm *.o main
