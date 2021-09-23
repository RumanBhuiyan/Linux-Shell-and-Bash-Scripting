#!/usr/bin/perl

# process : 01
print "Enter number : ";
$number=<STDIN>; # take input from standard input
chomp $number;   # remove \n from taken input
print "You entered $number \n";

# process : 02
print "What is your name? : ";
$name = <>;   # take input from standard input
chomp($name) ; # remove \n from input
print "So, You are $name\n";

