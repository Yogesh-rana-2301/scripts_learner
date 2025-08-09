#!/bin/bash

#stirngs
myvar="my name is yogesh rana"
myvarlength=${#myvar}
echo "legnth is $myvarlength"


# for upper case ^^ , for lower case ,,

#echo "upper case is ${myvar^^}"
#echo "lower case is ${myvar,,}"



#replace {varname, whichWord, withWhat}
newvar=${myvar/yogesh/sameer}
echo "replaced is $newvar"


sliced=${myvar:3:4}
echo "sliced is $sliced"
