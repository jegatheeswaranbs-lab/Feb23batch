#!/bin/bash

add() {
#command line argument
value=`expr $1 + $2`
echo $value
}

addalter() {
a=10
b=30
value=$(($a+$b))
echo $value
}


stringcomp() {
echo "type the first string"
read firststring
echo "type the second string"
read secondstring
#secondstring=""
#check empty stirng or not
#if [[ -z $seconstring ]]; then
if [[ -n $firststring ]]; then
	echo "Non empty string"
fi
#for string using = 
#for numers us -eq, -ne, -le
if [[ $firststring == $secondstring ]]; then
	echo "both are identical"
else
	echo "strings mismatch"
fi
}

fileop() {
#file is exist or not
if [[ -f ./newfolder ]]; then
	echo "testfile is a file"
else
	echo "testfile is not a file"
fi


}

function mytest(){
	echo "I am from feb23 batch"
}
#add 10 30
#addalter 
#stringcomp
#fileop
result=$(mytest)
#return value from function"
echo "result is $result"
