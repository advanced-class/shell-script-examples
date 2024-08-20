#!/bin/bash
# 'while' statement

count=1

while [ $count -le 10 ]
    do
        echo "$count"
        let count++
    done

echo "---------------------------------"

count=10

while [ $count -ge 1 ]
    do 
        echo "$count"
        let count--
    done

