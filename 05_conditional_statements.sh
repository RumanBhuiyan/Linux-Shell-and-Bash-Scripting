#!/bin/bash

read -p "Enter the number: " number

if [ $number -gt 0 ] # one space is requires after '[' and before ']'
then
  echo "Positive"
elif [[ $number -lt 0 ]] # no space is required inside [[]] so using it is useful
 then
  echo "Negative"
else
  echo "Zero"
fi
