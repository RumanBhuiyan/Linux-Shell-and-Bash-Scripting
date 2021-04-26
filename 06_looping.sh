#!/bin/bash

echo "While Loop: "
#while loop
a=5

while [[ $a -gt 0 ]];
do
  echo -n "${a} "
  a=`expr $a - 1` # space is required before and after - operator
done

echo -e "\nFor loop: "

# for loop only works on list of items
for b in 1 2 3 4 5
do
  echo -n "$b "
done

echo -e "\nUntil Loop: "

#untill loop
c=5

until [ ! $c -gt 0 ] # if condition is false then loop body will be executed
do
  echo -n "${c} "
  c=`expr $c - 1` # space is required before and after - operator
done
