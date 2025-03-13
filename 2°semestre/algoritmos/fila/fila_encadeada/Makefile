all: item.o apagar.o fila.o main.o 
	gcc item.o apagar.o fila.o main.o -o main -std=c99 -Wall

fila.o:
	gcc -c fila_enc.c -I ../item/ -o fila.o

item.o: 
	gcc -c ../item/item.c -o item.o
	
apagar.o: 
	gcc -c apagar.c -o apagar.o

main.o:
	gcc -c main.c -o main.o

run:
	./main

clean:
	rm *.o main
