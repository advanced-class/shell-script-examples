#!/bin/bash

#[ $# -ne 1 ] && echo "Only one arg." && exit
#[ ! -e $1 ] && echo "$1 does not exist"
#[ -d $1 ] && echo "$1 is a directory"
#[ -f $1 ] && echo "$1 is a file"
#[ -e $1 -a ! -f $1 -a ! -d $1 ] && echo  "$1 is a special file"

usage(){
	echo "Usage: $0 <PATH>"
	exit 0
}

if [[ $# -ne 1 ]];then
	usage
fi

test_file=$1

if [[ -e  $test_file ]]; then 
	if [[ -f $test_file ]];then
		echo "$test_file is a file."
	elif [[ -d $test_file ]]; then
		echo "$test_file is a dir."
	else 
		echo "$test_file is a special file."
	fi
else
	echo "$test_file does not exist."
fi

