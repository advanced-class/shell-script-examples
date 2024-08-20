#!/bin/bash
# 猜字游戏：编写一个脚本，生成一个 1 到 100 之间的随机数，要求用户猜测这个数，根据用户的猜测输出提示信息，直到猜中为止。每次猜测后，提示用户数字是太大还是太小。


# Generate a random number between 1 and 100

num=$((RANDOM % 100 + 1))

# read -p "Please guess a number between 1 and 100: " guess

# if [ $guess -gt $num ];then
#     echo "The number you guessed is too big."
# elif [ $guess -lt $num ];then
#     echo "The number you guessed is too small."
# else
#     echo "Congratulations! You guessed the right number."
# fi

guess=0

while [ $guess -ne $num ]
    do 
        read -p "Please guess a number between 1 and 100: " guess
        if [ $guess -gt $num ];then
            echo "The number you guessed is too big."
        elif [ $guess -lt $num ];then
            echo "The number you guessed is too small."
        fi
    done

echo "Congratulations! You guessed the right number."
