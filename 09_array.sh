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
