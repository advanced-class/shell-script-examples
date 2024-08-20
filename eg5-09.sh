#!/bin/bash
# 'while' statement


# cat /etc/passwd |cut -d ":" -f 1 | while read user
#     do
#         echo "The user is $user"
#         echo "---------------------------------"
#     done


while read user
    do
        username=$(echo $user | cut -d ":" -f 1)
        echo "The user is $username"
        echo "---------------------------------"
    done < /etc/passwd