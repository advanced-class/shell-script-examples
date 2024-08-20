#!/bin/bash
# The script is used to demonstrate the use of the 'for' statement.

for file in *.sh
    do
        echo "The file is $file"
    done

echo "---------------------------------"

for file in $(find /etc -name "*.conf")
    do
        echo "The file is $file"
    done