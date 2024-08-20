#!/bin/bash

read -p "Please enter your username: " username

print_username() {
    echo "Hello, ${username}!"
}

case $username in 
    root)
        print_username
        ;;
    zhangsan)
        print_username
        ;;
    lisi)
        print_username
        ;;
    wangwu)
        print_username
        ;;
    *)
        echo "Sorry, I don't know you."
        ;;
esac