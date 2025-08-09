#!/bin/bash

a=10
until [[ $a -eq 1 ]]
do
	echo $a
	let a--
done



#infinite loop

while true 
do
	echo "Hi" 
	sleep 2s
done


for (;;)
do
	echo "Hi' sleep 2s"
done
