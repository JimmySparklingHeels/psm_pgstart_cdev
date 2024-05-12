#Компилирует всё
all: quade testq link
#Компилирует объектный файл quadratic_equation для будущей линковки
quade: quadratic_equation.c
	gcc -c quadratic_equation.c -o quadratic_equation.o
#Компилирует объектный файл testq для будущей линковки
testq: testq.c
	gcc -c testq.c -o testq.o
#Линкует и компилирует выполняемый файл testq
link: quadratic_equation.o ../sqrt/sqrt.o testq.o
	gcc testq.o quadratic_equation.o ../sqrt/sqrt.o -o testq
