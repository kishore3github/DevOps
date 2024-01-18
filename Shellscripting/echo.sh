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

echo -e "This is kishore fron Narsapur \nAndhrapradesh \nindia"    #this will print the output in three lines

echo -e "This is kishore fron Narsapur \bAndhrapradesh \bindia"    #\b will move your cursor one step back
echo -e "This is kishore fron Narsapur \nAndhra \r india"       #\r will trying to replace the values before \r with the values after \r
  
echo -e "This is kishore fron Narsapur \t Andhrapradesh \t india"   #\t will provide the horizontal tab, output in next line:
#This is kishore fron Narsapur    Andhrapradesh   india


echo -e "This is kishore fron Narsapur \v Andhrapradesh \v india"   #\v will hepl to provide the vertical tab
#This is kishore fron Narsapur
#                              Andhrapradesh
#                                              india

echo -e "This is kishore fron Narsapur \a Andhrapradesh \a india"   # \a will create a sound alert

echo -e "This is kishore fron Narsapur \n Andhrapradesh \\\n india"  # \\ will help to escape or eliminate the purpose of special character
#This is kishore fron Narsapur
# Andhrapradesh \n india

echo -en "This is kishore fron Narsapur \nAndhra \r india"   # we combine use e and n 
#This is kishore fron Narsapur
# india

###########################echo command with colors################
 echo -e "\033[92mThis is kishore"   # to cjahge the color and it will effect to command prompt

echo -e "\033[92mThis is kishore\033[0m"   #to change the color without effecting command prompt , 92 is the color code


