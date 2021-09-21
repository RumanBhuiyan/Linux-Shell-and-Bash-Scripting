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


