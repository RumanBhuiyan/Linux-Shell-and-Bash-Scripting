#!/usr/bin/perl

# function is called as subroutine in perl
# subroutine without argument and return statement
sub sayHi {
	print "Hi from perl \n";
}
sayHi ;

# subroutine with argument and return statement
sub getAverage{
	# all arguments are stored in @_
	# getting length of arguments array
	$length=scalar(@_);
	$sum=0;

	foreach $num (@_){
		$sum += $num;
	}

	return $sum/$length;
}

$avg=getAverage(1,2,3,4,5);
print "Average $avg \n";
