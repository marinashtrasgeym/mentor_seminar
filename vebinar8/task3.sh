#!/bin/bash

read -p "Enter directory, pleade" folder

if [ -d "$folder" ]; then
	cur_date = $(date +%Y-%m-%d)
	archive_name = "$(somename "$folder")_$cur_date.tar.gz"
	tar -czf "$archive_name" -C "$(dirpath  "$folder")" "$(somename "$folder")"
        echo "Archive created"
else
	echo "Directory not found"
fi
