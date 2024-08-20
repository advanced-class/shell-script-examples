#!/bin/bash

# for i in {10..1}
#     do
#         echo "$i"
#         sleep 1
#     done

# for ((i=10;i>=1;i--))
#     do
#         echo "$i"
#         sleep 1
#     done

read -p "Please enter a number: " num

if [ -z "$num" ];then
    echo "You didn't enter a number."
    exit 1
else
    echo "$num" | grep -q '[^0-9]'
    if [ $? -eq 0 ];then
        echo "You didn't enter a number."
        exit 1
    fi
fi

if [[ $num -lt 1 || $num -gt 10 ]];then
    echo "The number you entered is out of range (1..10)."
    exit 1
fi

for ((a=$num;a>=1;a--))
    do
        echo "$a"
        sleep 1
    done