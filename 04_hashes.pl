#!/usr/bin/perl

# Declaring Hash Variables
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
#%data = ('John Paul'=> 45, 'Lisa'=> 30, 'Kumar'=> 40); # declaring it another way

# Accessing Hash values by their key
print "       Hash           \n";
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

# add new hash
$data{'Ruman'}=76;

# delete a hash
delete $data{'Ruman'};

# getting hash size and printing
@keys= keys %data;
$size=@keys;
print "Hash size : $size\n";
