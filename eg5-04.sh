#!/bin/bash
# The script is used to demonstrate the use of the 'case' statement.

read -p "Please enter a CHARACTER: " char

case $char in
    [a-z])
        echo "You entered a lowercase letter."
        ;;
    [A-Z])
        echo "You entered an uppercase letter."
        ;;
    [0-9])
        echo "You entered a digit."
        ;;
    *)
        echo "You entered a special character."
        ;;
esac