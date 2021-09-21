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
