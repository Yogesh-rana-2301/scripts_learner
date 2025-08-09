#!/bin/bash


<<wrongway
x=10
y=2
mul=$x*$y
echo "$mul"
wrongway

#using the let command 
x=10
y=2
let mul=$x*$y
echo "$mul"


#use double brakcet
x=10
y=2
echo "mul is $(($x-$y))"
