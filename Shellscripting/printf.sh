#!/bin/bash


# The printf command is used to print pre-formatted output.
# it is similar to the print(f) function of C programmed language

# Print syntax:
#  printf <formaat> <arguments>

# format is optional and we can ommit it


printf "welcome to Kishore's World"
#welcome to Kishore's World[05:24 AM -- ec2-user@ip-172-31-43-153 ~]
printf "welcome to Kishore's World\n"
#welcome to Kishore's World


printf "Enter your value : \n"

read x
echo "The variable of X is $x"
