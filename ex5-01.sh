#!/bin/bash

read -p "Please enter characters: " char

# echo "$char" | grep -q '[^0-9]' 

# if [ $? -ne 0 ];then
#     echo "The value of the variable is a number."
# else
#     echo "The value of the variable is a string."
# fi

new_char=$(echo "$char" | grep -o '[^0-9]')

if [ -z "$new_char" ];then
    echo "The value of the variable is a number."
else
    echo "The value of the variable is a string."
fi