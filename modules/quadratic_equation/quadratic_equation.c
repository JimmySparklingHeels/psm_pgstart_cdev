#include "quadratic_equation.h"
//Функция, решающая квадратное уравнение
//На вход получаем коэффициенты a, b, c
struct solution solve_equation(float a, float b, float c) {
	struct solution solved = { 0, 0, 0 };	//Структура с корнями
	float d;	//Дискриминант
	d = b * b - 4 * a * c;

	//Если дискриминант больше 0 находим два корня
	if (d > 0)
	{
		solved.x1 = (-b - sqrt(d)) / (2 * a);
		solved.x2 = (-b + sqrt(d)) / (2 * a);
		solved.exists = 1;
	}
	//Если дискриминант равен 0 находим один корень и заполняем структуру этим корнем
	if (d == 0)
	{
		float s = -b / (2 * a);
		solved.x1 = s;
		solved.x2 = s;
		solved.exists = 1;
	}
	//Возвращаем структуру с корнями
	return solved;
}
