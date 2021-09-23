#!/usr/bin/perl

#another way of commenting
=begin comment
 perl means Practical Extraction & Report Language
 Larry Wall, especially designed for text processing
 Perl takes the best features from other languages, such as C, awk, sed, sh, and BASIC
 Perl is widely known as "the duct-tape of the Internet".
 Perl can be embedded into web servers to speed up processing by as much as 2000%
=cut

# () after print is not mandatory but ; after each statement is must
# file extension will be either .pl or .PL
# file name can be seperated using _ but there should be no space
print "Hello perl\n" ;
print("Happy coding !!\n") ;


# Running Procedure : 01
# from command line : perl -e " print 'Hello world' "
# using -e flag we can run perl statement from command line

# Running Procedure : 02
# write your perl code in a file and save it with .pl or .PL extension
# then compile it using the command 'perl myScript.pl '
# now perl compiler will run myScript.pl

# Running Procedure : 03
# after saving perl file give the file execute permission running any of the command below 
#		chmod a+x myScript.pl  
# 		chmod 755 myScript.pl 
# now enter the command './myScript.pl' from command line. As we have mentioned perl compiler 
# path in SHEBANG line above so now we can run it in this way
