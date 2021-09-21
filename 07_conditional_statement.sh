#!/usr/bin/bash

# Here $? stores the last exit status code, if it's 0 then condition was true and 1 for false
# -z $c checks c is empty string or not ,in other words it checks string length is 0 or not
# -n $c checks c is non empty string or not ,in other words it checks string length is not 0 or not
# -e file_name checks whether file exists or not
# -f file_name checks whether this file is regular or not
# -d name checks this is directory or not
# -x script_name checks whether this script has execute permission or not
# -r filename checks is this file readable
# -w filename checks is this file writable  

read -p "Enter number : " number

# keep space between [ and 2 , 2 and ] otherwise bash wont work.
# condition inside [] returns exit status code 0 for true and 1 for false
# that status code is kept inside $? . if this is 0 then body is executed otherwise not
# thus if statement works in bash

# lets check equality in 3 different way
# =, == checks both string similarity  and integer similarity
# but -eq,-ne,-gt,-lt etc are of same family which compare between integers not strings.
# though [] and [[]] are same in nature but [[]] has more syntactic feature than [] so use it
if [ $number == 1 ];then 
	echo "You entered 1"
elif [ $number = 2 ]; then
	echo "You entered 2"
elif [ $number -eq 3 ];then
	echo "You entered 3"
elif [[ $number -eq 4 ]];then 
	echo "You enteted 4"
else 
	echo "You entered other value except 1-4"
fi

# combining multiple logic using && || 
# if you put inside [] like $number%2 then shell translate it like 3%2 or 4%2 , wont calculate it like i want
# as 3/2 is string so [ $number%2 = 0 ] is false
# $(date) run date command  in terminal
# $((3+4)) is used to perform arithmetic calculations

# run the command in terminal and store the value in a variable
result=$(bc -l <<< "scale=2;$number%5")

if [[ $number -ne 0 ]] && [[ $(( $number%2 )) = 0 ]] ;then
	echo "Divisible by 2"
elif [[ $number != 0 ]] && [ $(( $number%3 )) = 0 ];then
	echo "Divisible by 3"
elif [[ $number != 0 ]] && [[ $result = 0 ]];then
	echo "Divisible by 5"
else 
	echo "Others"
fi
