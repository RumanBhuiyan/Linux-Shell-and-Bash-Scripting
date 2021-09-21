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
