#!/bin/bash

read file

if [ -f "$file" ]; then
    echo "Файл найден"
else
    echo "Файл не найден"
fi
