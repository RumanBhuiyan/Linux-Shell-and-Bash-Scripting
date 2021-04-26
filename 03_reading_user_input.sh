#!/bin/#!/usr/bin/env bash

# number1=4
# number2=2
read -p "Enter  first number: " number1
read -p "Enter  second number: " number2

summation=$(($number1 + $number2)) # valid: summation=`expr $number1 + $number2`
subtraction=$(($number1 - $number2))
product=$(($number1 * $number2))
quotient=$(($number1 / $number2))
remainder=$(($number1 % $number2))

echo "Summation is $summation"
echo "subtraction is $subtraction"
echo "product is $product"
echo "quotient is $quotient"
echo "remainder is $remainder"
