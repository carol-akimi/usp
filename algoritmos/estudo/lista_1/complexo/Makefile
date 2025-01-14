all: complexo.o main.o 
	gcc complexo.o main.o -o complexo -Wall -std=c99

complexo.o:
	gcc -c complexo.c -o complexo.o 

main.o:
	gcc -c main.c -o main.o

run:
	./complexo
	
clean:
	rm *.o complexo