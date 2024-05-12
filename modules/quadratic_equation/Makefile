#Компилирует модуль и тест
all: quade testq link
#Компилирует объектный файл quadratic_equation для будущей линковки
quade: quadratic_equation.c
	gcc -c quadratic_equation.c -o quadratic_equation.o
#Компилирует объектный файл testq для будущей линковки
testq: testq.c
	gcc -c testq.c -o testq.o
#Линкует выполняемый файл testq
link: quadratic_equation.o ../sqrt/sqrt.o testq.o
	gcc testq.o quadratic_equation.o ../sqrt/sqrt.o -o testq
#Тестирование модуля
check: all
	@echo "Testing quadratic_equation"
	@./testq 14 -5 -1 > testq.result
	@./testq 9 -30 25 >> testq.result
	@./testq 2 1 67 >> testq.result
	@bash ../../testdiff.sh testq.expected testq.result
#Очищает от избыточных файлов
clean:
	rm -f *.o
	rm -f *.result
	rm -f *.log
