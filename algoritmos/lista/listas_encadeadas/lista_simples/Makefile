all: main.o lista.o item.o 
	gcc main.o lista.o item.o -o main -Wall -std=c99 

main.o:
	gcc -c main.c -o main.o 

lista.o:
	gcc -c lista_simples.c -o lista.o 

item.o:
	gcc -c ../../item/item.c -o item.o 

clean:
	rm *.o main 

run: 
	./main 