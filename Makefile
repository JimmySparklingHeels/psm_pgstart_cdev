compile: quadratic_equation.c test.c
	gcc test.c quadratic_equation.c -o test -lm
check: quadratic_equation.c test.c
	gcc test.c quadratic_equation.c -o test -lm
	echo "Testing for 2 roots"
	./test 1 -5 6 > tests.out
	echo "Testing for 1 root"
	./test 1 -10 25 >> tests.out
	echo "Testing for no solutions"
	./test 1 -5 7 >> tests.out
clean:
	rm tests.out
