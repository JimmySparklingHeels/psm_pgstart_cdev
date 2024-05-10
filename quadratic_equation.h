#include <math.h>
//Структура для двух корней уравнения
struct solution {
	float x1;
	float x2;
	int exists;
};

//Функция для решения квадратного уравнения
struct solution solve_equation(float, float, float);
