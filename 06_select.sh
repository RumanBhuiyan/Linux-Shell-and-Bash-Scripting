#!/usr/bin/bash

read -p "first number : " first
read -p "Second number : " second

# change the prompt string while taking option from select list
PS3="Select an option to perfom ->"

# show the options with indexing so that user can select 
select operation in  addition subtraction multiplication division;
do

if [[ $operation = "addition" ]];then 
	echo "Summation is : $(bc -l <<< $first+$second )"

elif [[ $operation = "subtraction" ]];then
	echo "Subtraction result : $(bc -l <<< $first-$second )"

elif [[ $operation = "multiplication" ]];then 
	echo "Product is : $(bc -l <<< $first*$second ) "

elif [[ $operation = "division" ]];then
	echo "Quotient is : " $(bc -l <<< "scale=2;$first/$second")

else 
	echo "Please select any of the 4 option above"
fi

break
done
