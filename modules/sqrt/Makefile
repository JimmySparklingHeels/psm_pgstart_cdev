#Компилирует модуль и тест
all: sqrt testS link
#Компилирует объектный файл sqrt для будущей линковки
sqrt: sqrt.c
	gcc -c sqrt.c -o sqrt.o
#Компилирует объектный файл testS для будущей линковки
testS: testS.c
	gcc -c testS.c -o testS.o
#Линкует выполняемый файл testS
link: sqrt.o testS.o
	gcc testS.o sqrt.o -o testS
#Тестирование модуля
check: all
	@echo "Testing sqrt"
	@./testS 64 > testS.result
	@./testS 128 >> testS.result
	@./testS 939 >> testS.result
	@bash ../../testdiff.sh testS.expected testS.result
#Очищает от избыточных файлов
clean:
	rm -f *.o
	rm -f *.result
	rm -f *.log