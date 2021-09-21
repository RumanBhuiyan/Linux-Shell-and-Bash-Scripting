
# if i run the script like below then it will give correct output
# bash 04_command_line_inputs.sh 4 5
# echo "Summation is $(( $1+$2 ))"

# but if i dont provide value any of the positional parameter $1 $2 then it will give me error
# so we can give default value to any positional parameters like
echo "summation is $(( ${1:-0}+${2:-4} ))" # default value of $1 is 0 and $2 is 4

# $# gives us the number of command line inputs
echo "number of command line inputs : $#"

# $@ stores all inputs  from command line
echo "Your inputs are :  $@"

# lets force user to provide to 2 inputs
if [[ $# -ne 2 ]];then 
	echo "Please provide 2 inputs for getting correct sum instead of default sum!!!!!!"
	exit 1
fi 
