#!/bin/bash

my_var="global"

my_function(){
	local my_var="local"
	echo "Inside function: $my_var"
}

my_function

echo "outside function: $my_var"
