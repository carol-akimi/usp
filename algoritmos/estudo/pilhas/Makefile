all: pilha_seq.o main.o item.o 
	gcc pilha_seq.o main.o item.o -o pilha -Wall -std=c99

pilha_seq.o:
	gcc -c pilha_seq.c -I ../../item/ -o pilha_seq.o

main.o:
	gcc -c main.c -I ../../item/ -o main.o

item.o:
	gcc -c ../../item/item.c -o item.o

run:
	./pilha

clean:
	rm *.o pilha