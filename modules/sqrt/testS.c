#include "sqrt.h"
#include <stdlib.h>
#include <stdio.h>

//Код для проверки модуля sqrt

//Используем аргументы терминала для получения коэффициентов
int main(int argc, char *argv[])
{
	//Число для нахождения корня
	float a;

	//Преобразуем строку полученную из аргумента в вещественное число при помощи strtof
	//и запишем в переменную
	a = strtof(argv[1], NULL);

	//Находим корень из числа a
	float root;
	root = sqrt(a);

	//Вывод
	printf("root:%f\n", root);
	return 0;
}
