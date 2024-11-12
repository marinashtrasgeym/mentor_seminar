#!/bin/bash

# Определяем переменные
SOURCE_DIR="/mentor_seminar/homeworkbash/task3_extra"  # Укажите директорию, которую нужно сортировать
IMAGE_DIR="$SOURCE_DIR/Images"
DOCUMENT_DIR="$SOURCE_DIR/Documents"
LOG_FILE="$SOURCE_DIR/sort_files.log"

# Создаем директории, если они не существуют
mkdir -p "$IMAGE_DIR"
mkdir -p "$DOCUMENT_DIR"


# Функция для перемещения файлов
move_files() {
    # Определяем массив расширений для изображений и документов
    local IMAGE_EXTENSIONS=("jpg" "png" "gif")
    local DOCUMENT_EXTENSIONS=("txt" "pdf" "docx")

    # Перемещение изображений
    for ext in "${IMAGE_EXTENSIONS[@]}"; do
        for file in "$SOURCE_DIR"/*."$ext"; do
            if [[ -f "$file" ]]; then
                mv "$file" "$IMAGE_DIR"
                echo "$(date '+%Y-%m-%d %H:%M:%S') - Перемещен: $(basename "$file") в $IMAGE_DIR" >> "$LOG_FILE"
            fi
        done
    done

    # Перемещение документов
    for ext in "${DOCUMENT_EXTENSIONS[@]}"; do
        for file in "$SOURCE_DIR"/*."$ext"; do
            if [[ -f "$file" ]]; then
                mv "$file" "$DOCUMENT_DIR"
                echo "$(date '+%Y-%m-%d %H:%M:%S') - Перемещен: $(basename "$file") в $DOCUMENT_DIR" >> "$LOG_FILE"
            fi
        done
    done
}

# Вызов функции перемещения файлов
move_files

echo "$(date '+%Y-%m-%d %H:%M:%S') - Сортировка завершена." >> "$LOG_FILE"
