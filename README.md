# Perl (Practical Extraction & Report Languages) Notes

>## Introduction 
```perl
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

```

>## Variables
```perl
    #!/usr/bin/perl

    # Declaring variables
    $age = 25;             # An integer assignment
    $name = "John Paul";   # A string 
    $salary = 1445.50;     # A floating point
    $negative = -300;      # negative number
    $floating = 200.340;   # floating point number
    $bigfloat = -1.2E-23;  # big float number
    $octal = 0377;	       # octal number
    $hexa = 0xff;          # hexadecimal number


    # Accessing variables value
    print "Age = $age\n";
    print "Name = $name\n";
    print "Salary = $salary\n";
    print "negative = $negative\n";
    print "floating = $floating\n";
    print "bigfloat = $bigfloat\n";
    print "octal = $octal\n";
    print "hexa = $hexa\n";
```
>## Array
```perl
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

```
>## Hash
```perl
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

```
>## Taking user input
```perl
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

```
>## Conditional Statement
```perl
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

```

>## Looping
```perl
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

```
>## Arithmetic Operations
```perl
    #!/usr/bin/perl

    $a=4;
    $b=5;

    print "Summation : ", $a + $b ,"\n";
    print "Subtraction :", $a -$b ,"\n";
    print "Product : ", $a * $b ,"\n";
    print "Quotient is : ", $a / $b, "\n";
    print "Remainder : ", $a % $b," \n";


    # other relational operators <,<=,>,>= 
    # logical operators || , && 
    # bitwise AND OR operators are same as C language

```

>## Subroutines
```perl
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

```
