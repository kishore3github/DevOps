#!/bin/bash

##########
About : providing input using command line arguments
Date :19 Jan
###########

a=$1
b=$2

result=`expr "$1 + $2" | bc`

echo "The sum of a and b is : $result"


# to run this script ./,filename value_of_a value_of_b
