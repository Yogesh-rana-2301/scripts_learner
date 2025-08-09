#!/bin/bash

read -p "tell me your marks" marks
#if else
if [[ $marks -gt 40 ]]
then 
	echo "hehe"
else 
	echo "eheh"
fi



#nested
if [[ $marks -ge 80 ]]
then
	echo "First Division"
elif [ $marks -ge 60 ] 
then
	echo "Second Division"
else
	echo "Fail"
fi


#switch case
echo "Hey choose an option" 
echo "a = To see the current date"
echo "b = list all the files in current dir"

read choice

case $choice in
	a) 
		echo "todays date is"
		date
		echo "ending..."
		;; #to mark the ending of the case
	b) ls;;
	*) echo "Non a valid input"

esac
