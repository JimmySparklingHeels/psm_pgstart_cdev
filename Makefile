#Переменные для директорий
QUADE_DIR = modules/quadratic_equation
SQRT_DIR = modules/sqrt

#Компилирует тестовые программы модулей
compile_modules:
	echo "Compiling tests"
	make -C $(QUADE_DIR) all
	make -C $(SQRT_DIR) all
#Тестирование модуля quadratic_equation
checkq:
	echo "Testing quadratic_equation"
	$(QUADE_DIR)/testq 14 -5 -1 > $(QUADE_DIR)/testq.result
	$(QUADE_DIR)/testq 9 -30 25 >> $(QUADE_DIR)/testq.result
	$(QUADE_DIR)/testq 2 1 67 >> $(QUADE_DIR)/testq.result
	bash testdiff.sh $(QUADE_DIR)/testq.expected $(QUADE_DIR)/testq.result
#Тестирование модуля sqrt
checkS:
	echo "Testing sqrt"
	$(SQRT_DIR)/testS 64 > $(SQRT_DIR)/testS.result
	$(SQRT_DIR)/testS 128 >> $(SQRT_DIR)/testS.result
	$(SQRT_DIR)/testS 939 >> $(SQRT_DIR)/testS.result
	bash testdiff.sh $(SQRT_DIR)/testS.expected $(SQRT_DIR)/testS.result
#Компилирует и тестирует все модули
check: checkq checkS
	echo "Check complete"
#Очищает избыточные файлы
clean:
	rm -f testdiff.log
	rm -f $(QUADE_DIR)/testq.result
	rm -f $(SQRT_DIR)/testS.result
	rm -f $(QUADE_DIR)/testq
	rm -f $(SQRT_DIR)/testS
	rm -f $(QUADE_DIR)/*.o
	rm -f $(SQRT_DIR)/*.o
