#Переменная для хранения результата работы diff
result=$(diff $1 $2)

#Отделяем новый блок вывода в лог файле
echo ============New difftest============ >> testdiff.log

date >> testdiff.log	#Записываем дату в лог файл
echo Testing difference between $1 and $2 | tee -a testdiff.log


if [[ -z ${result} ]]	#Если diff не нашел разницу в файлах, все в порядке
then
	echo Files are matching | tee -a testdiff.log
else
	#Если разница в файлах нашлась, пишем об этом в лог файл и выводим саму разницу туда же
	echo Files $1 and $2 don\'t match | tee -a testdiff.log
	diff $1 $2 >> testdiff.log
	echo See testdiff.log for info
fi
