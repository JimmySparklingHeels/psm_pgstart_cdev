testq: modules/quadratic_equation.c modules/sqrt.c testq.c
	gcc testq.c modules/quadratic_equation.c modules/sqrt.c -o testq
check: modules/quadratic_equation.c modules/sqrt.c testq.c
	gcc testq.c modules/quadratic_equation.c modules/sqrt.c -o testq
	echo "Testing for 2 roots" > tests.out
	echo "Expected:" >> tests.out
	echo "x1: -0.142857\nx2: 0.500000" >> tests.out
	echo "Result:" >> tests.out
	./test 14 -5 -1 >> tests.out
	echo "Testing for 1 root" >> tests.out
	echo "Expected:" >> tests.out
	echo "x1: 1.666667\nx2: 1.666667" >> tests.out
	echo "Result:" >> tests.out
	./test 9 -30 25 >> tests.out
	echo "Testing for no solutions" >> tests.out
	echo "Expected:" >> tests.out
	echo "No real solutions" >> tests.out
	echo "Result:" >> tests.out
	./test 2 1 67 >> tests.out
clean:
	rm tests.out
