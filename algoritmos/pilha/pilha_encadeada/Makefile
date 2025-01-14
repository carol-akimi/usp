all: pilha.o main.o item.o
	gcc pilha.o main.o item.o -o main -Wall -std=c99

pilha.o:
	gcc -c pilha_enc.c -o pilha.o 

item.o:
	gcc -c ../item/item.c -o item.o 

main.o:
	gcc -c main.c -o main.o 

clean:
	rm *.o main 

run: 	
	./main