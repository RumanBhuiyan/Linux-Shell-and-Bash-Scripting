#!/usr/bin/bash

# function without argument and return statement
start(){
	echo "Script started!!!!!"
}

# lets call the function
start



# function with argument and return statement
getSum(){
	# $first is received by $1 and $second is received by $2
	return $(( $1 + $2 ))
}

# lets take input from command line
read -p "first number : " first
read -p "second number : " second

# lets call the function with argument
getSum $first $second

# last function call return value is stored in $?
sum=$?
echo "Summation is $sum"
