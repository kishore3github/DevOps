#!/bin/bash

#####
#echo "string"  --> to display the string
echo "I am Kishore Kumar"

## To display the variable
x=3
echo $(x)


## TO display the command
echo $(ls)
echo $(pwd)

echo "I am Kishore Kumar"

employmne_ID=46139288
employee_role="DevOps Engineer"
echo "employee id is $employne_ID"
echo "employee role is $employee_role"

echo "$(date)"

echo "Kishore is $employee_role woring from "$(date)"


###echo advanced commands###
echo -n "string"  #it won't allow your cursor goes down for next line, output will append with next line

echo -e # -e is help to execute with escaped characters"
