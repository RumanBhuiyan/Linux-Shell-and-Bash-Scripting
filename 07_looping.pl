#!/usr/bin/perl

# while loop
$counter=1 ;
while ( $counter <= 5 ){
	print "counter = $counter\n";
	$counter++;
}

# for loop
for ($i = 1 ; $i <= 5 ; $i++ ){
	print "running for $i times\n";
}

# until loop
$keep=10;
until( $keep > 15 ){
	print "keep = $keep\n";
	$keep = $keep + 1;
}

# do-while loop
$j=1;
do {
	print "5*$j = 5*$j \n";
	$j++;
}while($j<=10);

# for-each loop
@list = (2, 20, 30, 40, 50);

# foreach loop execution
foreach $a (@list) {
   print "value of a: $a\n";
}
