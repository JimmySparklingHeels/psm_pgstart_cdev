#include "mfmath.h"
#include <stdlib.h>
#include <stdio.h>

//Код для проверки

//Используем аргументы терминала для получения коэффициентов
int main(int argc, char *argv[])
{
	//Коэффициенты уравнения
	float a, b, c;

	//Преобразуем строку полученную из аргументов в целое число при помощи strtol
	//и запишем в переменные коэффициентов
	a = strtol(argv[1], NULL, 10);
	b = strtol(argv[2], NULL, 10);
	c = strtol(argv[3], NULL, 10);

	//Создаем структуру решений уравнения и получим решения из функции solve_equation
	struct solution s;
	s = solve_equation(a, b, c);

	//Если решение есть, выводим его
	if (s.exists)
		printf("x1: %f\nx2: %f\n", s.x1, s.x2);
	else
		printf("No real solutions\n");
	return 0;
}
