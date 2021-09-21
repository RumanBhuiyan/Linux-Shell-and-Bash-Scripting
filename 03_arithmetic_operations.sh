#!/usr/bin/bash

# patter :  $(( expression ))
echo "Summation of 2 and 4 is " $((2+4))

x=6
y=5
# addition
echo "Summation of x and y is : $(( $x + $y ))"

# lets store result and use it
# $(( )) is used for performing arithmetic operation
sub=$(( $x - $y )) 
echo "Subtraction of x and y is : $sub"

# multiplication
echo "Product of x and y is : $(( $x * $y ))"

# division
# $() run the command in terminal
result=$(bc -l <<< "scale=2;$x/$y")
echo "Quotient of x by y is : $result"

echo "Remainder of x by y is : $(( $x % $y ))"
echo "result of x to the power y is : $(( $x ** $y ))"
 
