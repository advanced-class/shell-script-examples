#!/bin/bash
# The script is used to demonstrate the use of the 'for' statement.

for i in 1 2 3 4 5 6 7 8 9 10
    do
        echo "The Number is $i"
    done 

echo "---------------------------------"

for i in {1..10}
    do
        echo "The Number is $i"
    done

echo "---------------------------------"

for ((i=1;i<=10;i++))
    do
        echo "The Number is $i"
    done