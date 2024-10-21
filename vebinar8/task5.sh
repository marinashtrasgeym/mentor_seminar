#!/bin/bash
# Проверяем, указана ли директория
if [ $# -eq 0 ]; then
  echo "Укажите директорию."
  exit 1
fi
# Получаем директорию
directory="$1"
# Перечисляем все файлы в директории
for file in "$directory"/*; do
  # Проверяем, является ли файл обычным файлом
  if [ -f "$file" ]; then
    # Получаем имя файла
    filename=$(basename "$file")
    # Добавляем префикс backup_
    new_filename="backup_$filename"
    # Переименовываем файл
    mv "$file" "$directory/$new_filename"
  fi
done
echo "Префикс backup_ добавлен ко всем файлам в директории $directory."
