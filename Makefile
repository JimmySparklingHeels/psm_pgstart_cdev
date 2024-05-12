#Переменные для директорий
QUADE_DIR = modules/quadratic_equation
SQRT_DIR = modules/sqrt

#Компилирует модули
compile_modules:
	@echo "Compiling modules"
	make -C $(QUADE_DIR) all
	make -C $(SQRT_DIR) all
#Компилирует и тестирует все модули
check:
	make -C $(QUADE_DIR) check
	make -C $(SQRT_DIR) check
	@echo "Check complete"
#Очищает избыточные файлы
clean:
	rm -f testdiff.log
	make -C $(QUADE_DIR) clean
	make -C $(SQRT_DIR) clean