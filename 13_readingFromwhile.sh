#!/bin/bash

while read myvar 
do
	echo "Value from file is $myvar"
done < names.txt


#csv file reading
#To read content from a csv file

while IFS="," read f1 f2 F3    #IFS : internal feed seperator
do
	echo $f1
	echo $f2
	echo $f3
done < file_name.csv



#if dont want the first line
#!/bin/bash
cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "Id is $id"
	#echo "name is $name"
	#echo "age is $age"
done
