#!/bin/bash

#decalaring function with its body
printHello(){
  echo "Hello world"
}
#calling function
printHello

#function with arguments
getSum(){
  result=`expr $1 + $2`
  echo "Summation is $result"
}

getSum 4 5 # 4 is kept in $1 and 5 is kept in $2

getProduct(){
  prod=$(( $1 * $2 ))
  return $prod
}

getProduct 4 5
product=$? # #? is capturing value of last return statement
echo "Product is $product"
