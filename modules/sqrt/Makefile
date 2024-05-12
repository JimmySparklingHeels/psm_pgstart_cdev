#Компилирует всё
all: sqrt testS link
#Компилирует объектный файл sqrt для будущей линковки
sqrt: sqrt.c
	gcc -c sqrt.c -o sqrt.o
#Компилирует объектный файл testS для будущей линковки
testS: testS.c
	gcc -c testS.c -o testS.o
#Линкует и компилирует выполняемый файл testS
link: sqrt.o testS.o
	gcc testS.o sqrt.o -o testS
