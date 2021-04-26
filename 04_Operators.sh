#!/bin/bash

#Relational Operators
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# -eq means equal , -ne means not equal
# -gt means greater than , -lt stands for less than
# -ge means greater than or equal , -le means less than or equal
if [ $num1 -gt $num2 ]
then
  echo "${num1} is greater than ${num2}"
else
  echo "${num1} is smaller than ${num2}"
fi

# Logical Operators
# ! is logical not , -o is logical or , -a is logical and
if [ $num1 != $num2 ]
then
  echo "${num1} is not equal to ${num2}"
else
  echo "${num1} is equal to ${num2}"
fi
