#!/usr/bin/perl

# lets take a number as input
print "Enter number : ";
$number=<>;
chomp($number); # remove \n from input

# ternary operator
$number_type = ($number > 0) ? "Greater than 0" : "Less than or equals to 0";
print "$number_type \n";

# if-else 
if ( $number %2 == 0){
	print "Even number \n";
}elsif ( $number ==0 ){
	print "Zero \n";
}else {
	print "Odd number \n";
}

# unless statement body is executed when conditon is false
unless ( $number %2 ==0 ){
  print "Not divissible by 2 \n";
}elsif ( $number % 2 ==0 ){
  print "Divisible by 2\n" ;
}else {
  print "Try other numbers \n";
}

