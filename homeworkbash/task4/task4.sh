#!/bin/bash
print_string() {
if [ $# -eq 1 ]; then
    echo "Hello $1"
else
    echo "Требуется передать один аргумент"
fi
}


sum_numbers() {
if [ $# -eq 2 ]; then
    echo "Сумма чисел: $(($1 + $2))"
else
    echo "Требуется передать два аргумента"
fi
}

read -p "Введите строку: " USER_STRING
read -p "Введите первое число: " NUMBER1
read -p "Введите второе число: " NUMBER2

print_string $USER_STRING
sum_numbers $NUMBER1 $NUMBER2
