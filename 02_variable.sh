#!/bin/bash



<<struct
VAR_NAME=value
VAR_NAME=$(hostname)
echo $VAR_NAME
struct



a=10
name="prashant"
age=28    

#“get the value of the variable name”.
<<uses
$0 → name of the current script
$1, $2 → first and second command-line arguments
$# → number of arguments
$$ → process ID of the current shell
$? → exit code of the last command
uses


echo "My name is $name and age is $age"


<<tips
!means dont get out the nvim 
% the curretn file name 
. means the current directory

tips


#name is changable 

#Var to store the output of a command
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"


#constant varibale 
readonly a=10


#dont have spaves around =, error aajaega
