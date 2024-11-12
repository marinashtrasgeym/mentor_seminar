read -p "Введите число: " NUMBER

if [[ $NUMBER -gt 0 ]]; then
	echo "Положительное число"
	i=1
	while [[ $i -lt $NUMBER ]]; do
		echo $i
		i=$(($i + 1))
	done;
elif [[ $NUMBER -lt 0 ]]; then
	echo "Отрицательное число"
else
	echo "Ноль"
fi;
