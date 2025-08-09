#!/bin/bash

#arrays
myArray=(1 2 hello "hey man")
#space serperated not comma seperated
echo "Value in 3rd index is ${myArray[2]}"
echo "ALl the calues in the array are ${myArray[*]}"

#to gety the length of the array
echo "number of calue is ${#myArray[*]}"

#value from range
echo "value from 1-2 are ${myArray[*]:2:2}
"
#this is done as [array , from : how many]


#how to update an array 
myArray+=( New 30 40)
echo "Values of new array are ${myArray[*]}"


#kind of dictionary

declare -A myArray
myArray=( [name]=paul age=[28])
echo "naem is ${myArray[name]}"




