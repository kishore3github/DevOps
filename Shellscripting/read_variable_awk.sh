#!/bin/bash

################################

################################
a=2
b=3
awk -v x=$a -v y=$b 'BEGIN {print x+y}'
awk -v x=$a -v y=$b '{print x+y}' file.txt

#!/bin/bash


read -p "Enter a value: " a
read -p "Enter b value: " b

echo "$a $b" | awk '{ a=$1;b=$2; print "sum="a+b }'

awk -v a=$a -v b=$b 'BEGIN { print a+b }'

