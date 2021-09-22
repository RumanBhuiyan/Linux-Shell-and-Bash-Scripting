# Linux-Shell-and-Bash-Scripting

>## Introduction
```bash
      # '#!/usr/bin/bash' is called SHEBANG which informs terminal where is shell compiler.To know
      # shell compiler location type the command 'which bash'

      #! /usr/bin/bash

      # The comments below are used by professional to know purpose of script , run that script
      # Author : Ruman Bhuiyan
      # Date created : 16-9-2021
      # Last Modified : 16-9-2021

      # Description:
      # Being introduced with scripting

      # Usage:
      # Here we  describe how to run this script

      echo "Hello world"

      # 0 means successfull ,1-255 means unsuccessfull
      exit 0

      # Running scirpt:  
      # process-01 : bash 01_introduction.sh
      # process-02 : step-01: chmod a+x 01_introduction.sh (giving script execute persmission for all)
      #	       step-02: ./01_introduction.sh
```

>## Variables
```bash
      #!/usr/bin/bash

      # decalaring variables
      # don't use whitespace around = because shell will treat 'name ' as a command
      name="Ruman"

      # accessing variables value
      echo "Hello ${name}"
      echo  "What is your last name $name"


      # some built-in BASH variables
      echo "Whom am i ? : $USER" 
      echo "What is my PC Name : $HOSTNAME"
      echo "What is my PC configuration : $HOSTTYPE"
      echo "Print the absolute path of my home directory : $HOME"
      echo "Print those directories name where SHELL search commands : ${PATH}"

      # lets take more control over printing
      company=dsi
      echo # print a blank line for readability
      echo "company : $company"
      echo "First character capital : ${company^}"
      echo "All characters capital : ${company^^}"
      echo "Number of characters in dsi : ${#company}"

      # ${string:start_index:length}
      numbers=0123456789
      echo #print a blank line for readability
      echo "numbers : $numbers"
      echo "First 3 characters : ${numbers:0:3}"
      echo "All characters from 3rd index : ${numbers:3}"
      echo "Print last 3 characters : ${numbers: -3}"
      echo "Go 3 characters back from last and print 2 characters : ${numbers: -3: 2}"

      # command output store into variable
      # $(command) this is called command substitution 
      today=$(date)
      echo #print a blank line
      echo "Date of today : ${today}"


```

>## Arithmetic Operations
```bash
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
 
```

>## Command line inputs
```bash

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
```

>## Read input
```bash
      #!/usr/bin/bash

      # By default read command takes input from terminal and move on to next line like below
      read name 

      # we can provide a prompt text at the time of taking input like
      read -p "What is your age : " age

      # we can set time so that after waiting, program moves to next line like
      # here the program will wait for 5 seconds to enter input ,if input isn't 
      # given then move on to the next line
      read  -t 5 -p "Enter your gmail : " gmail

      # we can take secret information without showing it in terminal
      read -s -p "Enter password : " password

      echo "Hello  ${name}"
      echo "You are ${age} years old"
      echo "Your mail is ${gmail}"
      echo "Your password is ${#password} length"
```

>## Select
```bash
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
```
>## Conditional Statements
```bash
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
```

>## Looping 
```bash
      #!/usr/bin/bash

      # lets see how a basic for loop works
      counter=1
      while [[ $counter -le 5  ]];do
        echo "counter = $counter"
        counter=$(( $counter + 1 ))
      done

      # reading input from a file  using loop
      echo # print an empty line for readability
      echo "Reading from file"
      echo "----------------"
      while read line ;do
        echo  $line
      done < "$1"

      # reading files and directories
      echo  # print a newline
      echo "Reading files of current directory"
      echo "----------------------------------"
      while read file ; do
        echo  $file
      done <  <(ls -l)
```

>## Array
```bash
      #!/usr/bin/bash

      # decalring array
      # dont put space around =
      numbers=(1 2 3 4 5)

      # printing the first number of the array
      echo "First element : " $numbers

      # printing all elements of array
      echo "All elements : " ${numbers[@]}

      # printing all index
      echo "Indices : " ${!numbers[@]}

      # adding element to array
      numbers+=(10)
      echo "After adding 10 : " ${numbers[@]}

      # removing element from array
      unset numbers[5]
      echo "After deleting 10 : " ${numbers[@]}

      # iterating over array elements
      for num in ${numbers[@]}; do
        echo "$num"
      done

      # creating files using loop
      folderNames=("first" "second" "third")

      for folder in ${folderNames[@]} ;do 
        if [ -f $folder ];then
          echo "$folder folder already exists"
        else 
          mkdir -p keep/$folder
          echo "$folder folder created"
        fi
      done
```

>## functions
```bash
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

```

>## Debugging
```bash
      #!/usr/bin/bash

      # shellcheck is an effective tool which highlight our mistakes with notes
      # installation : sudo apt install shellcheck
      # online GUI tool : https://www.shellcheck.net/

      # let make a mistake 
      # enter command :  shellcheck script_name
      # it will show your all errors with hints
      read -p "Enter number : 
```
