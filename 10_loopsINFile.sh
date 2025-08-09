#!/bin/bash

#Getting values from a file names.txt

FILE="/home/paul/scripts/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done




myArray=( 1 2 3 Hello Hi )
Length=${#myArray[*]}
for (( i=0;i<$length;i++ ))
do
	echo "Value of array is ${myArray[$i]}"
done
