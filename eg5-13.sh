#!/bin/bash

# 'break' and 'continue'

for i in {1..10}
    do 
        if [ $i -eq 5 ];then
            break
        fi
        echo "$i"
    done

echo "---------------------------------"

for i in {1..10}
    do
        if [ $i -eq 5 ];then
            continue
        fi
        echo "$i"
    done