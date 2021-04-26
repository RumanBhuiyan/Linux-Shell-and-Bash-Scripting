# is Sharp and ! is Bang so combinely #! is called Shebang
# below line tells the shell where is the location of shell compiler is
#!/bin/bash

# printing statement
echo "Hello World"
echo 'Happy coding'

#Declaring variable
first_name='Ruman' #space is not allowed before and after = operator
LAST_NAME='Bhuiyan' #keeping uppercase letters as variable name is convension

#Using Variable
echo "You are $first_name $LAST_NAME" # process : 01
echo "You are ${first_name} ${LAST_NAME}" # process : 02
