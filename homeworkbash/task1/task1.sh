#!/bin/bash

echo "Список всех файлов в текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item - файл"
    elif [ -d "$item" ]; then
        echo "$item - каталог"
    else
        echo "$item - другое"
    fi
done

echo ""

if [ -z "$1" ]; then
    echo "Вы не передали аргумента (имени файла) при запуске скрипта"
fi

if [ -e "$1" ]; then
    echo "Файл '$1' найден."
else
    echo "Файл '$1' не найден."
fi

echo ""

echo "Информация о файлах:"
for item in *; do
    if [ -f "$item" ]; then
        permissions=$(ls -l "$item" | awk '{print $1}')
        echo "Файл: $item, Права доступа: $permissions"
    elif [ -d "$item" ]; then
        permissions=$(ls -ld "$item" | awk '{print $1}')
        echo "Каталог: $item, Права доступа: $permissions"
    fi
done

