all: main.o fila.o 
	gcc main.o fila.o -std=c99 -Wall -o raizes
    
main.o:
	gcc -c raizes.c -o main.o 

fila.o:
	gcc -c fila.c -o fila.o 

clean:
	rm *.o raizes 