#!/bin/bash

# 'until' statement

echo -n "Countdown: "
count=10
tput sc
until [ $count -eq 0 ]
    do
        tput rc
        echo -n "$count "
        sleep 1
        let count--
    done
tput clear
echo "BOOM!"