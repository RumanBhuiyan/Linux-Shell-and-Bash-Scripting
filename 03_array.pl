#!/usr/bin/perl

# declaring arrays
@ages = (25, 30, 40);
@names = ("John Paul", "Lisa", "Kumar");
@numbers=(1..10);


# Accessing array values by their names
print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n\n";

print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n\n";

print "numbers = @numbers\n";

# getting array length printing
$array_size=@numbers;
print "numbers array length : $array_size\n\n";

# adding new element to last of the array
push(@numbers,11);
print "After adding 11 to last : @numbers\n";

# adding new element to first of the array
unshift(@numbers,0);
print "After adding 0 at first : @numbers\n";

# removing element from last of the array
pop(@numbers);
print "Äfter removing last element : @numbers\n";

# removing element from first of the array
shift(@numbers);
print "After removing first element : @numbers\n";

# slice of array
print "elements from index 0 to 4 : @numbers[0..4]\n";

# replacing array items
splice(@numbers,4,5,20..24);
print "replacing 5 items from index 4 : @numbers \n\n";

# merzing array items
@first=(1,2,3,4,5);
@second=(6,7,8,9,10);
@third=(@first,@second);
print "After merzing : @third\n";

