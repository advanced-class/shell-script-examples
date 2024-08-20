#!/bin/bash

# 'until' statement

password="Skills2024"
pass=""
count=0

# until [[ $pass == $password || $count -eq 3 ]];do
#     read -s -p "Please enter the password for 'root': " pass
#     let count++
#     echo
# done

until [[ $count -eq 3 ]];do
    read -s -p "Please enter the password for 'root': " pass
    echo
    if [[ $pass == $password ]];then
        echo "Welcome, root!"
        break
    fi
    let count++
done

