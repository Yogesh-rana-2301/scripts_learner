#!/bin/bash

#To make function 
function welcomeNote{     #or welcomeNote(){
	echo "--------"
	echo "Welcome"
	echo "--------"
}
#To call our function 
welcomeNote 
welcomeNote 
welcomeNote


# argument 
function welcomeNote {
	echo "--------"
	echo "Welcome $1"
	echo "--------"
}
welcomeNote Raju 
welcomeNote Sham






#argument parsing 
#myscript.sh arg1 arg2

#!/bin/bash
#to access the arguments
echo "First argument is $1" 
echo "Second argument is $2"


#loop with arg parsing
for arg in $@
do
	echo "Argument is $arg"
done


#shifting the argrument 
#!/bin/bash
# To create a user, provide username and description

echo "Creating user" 
echo "Username is $1"

shift
echo "Description is $@"
