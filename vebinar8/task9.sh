#!/bin/bash

echo "Enter command, please"
read command

eval command &
echo "$!"
