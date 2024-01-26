#!/bin/bash

##################
# Date : 26 jan 2024
# Author: Kishore
# About : Generating sequence of numbers
##################

seq 1 100      # seq will print the number in sequence i.e, 1,2 ....100
seq 1 2 100    # it will print number from 1 to 100 with step 2 i.e. 1,3,5,...100
#syntax: seq <starting_number> <step> <last_number>
seq 10 -1 1    # it will print number in descending order


####Generating numbers using echo########
echo {1..10}                #it will print numbers from 1 to 10
echo {1..10..2}             # it will print numbers from  1 to 1- with 2 step
syntax echo {<startnumber>..<endnumber>..step}
