#!/bin/bash
#example of break in a loop
#We just need to confirm if a given no. if present or not

no=6

for i in 1 2 3 4 5 6 7 8 9
do
#Break the loop if no. found 
	if [[ $no -eq $i ]]
	then
		echo "$no is found!!!!"
		break
	fi
	echo "Number is $i"
done



#exit and sleep
#!/bin/bash
#to access the arguments
if [[ $#-eq 0 ]]
then
	exit 1
fi
echo "First argument is $1" 
echo "Second argument is $2"

echo "All the arguments are - $@" 
echo "Number of arguments are - $#"

#For loop to access the values from arguments

for filename in $@
do
	echo "Copying file - $filename"
done


#/01n/bash
read -p "which site you want to check? " site
ping -c 1 $site
Sleep 5s

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site"
else
	echo "uanbel to coneect"
fi
