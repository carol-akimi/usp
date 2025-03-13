all: item.o lista.o 
	gcc item.o lista.o -o lista -Wall -std=c99

lista.o:
	gcc -c lista.c -I ../item/ -o lista.o

item.o: 
	gcc -c ../item/item.c -o item.o

run: 
	./lista

clean: 
	rm *.o lista