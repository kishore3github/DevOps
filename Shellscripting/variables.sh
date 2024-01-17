#!/bin/bash
###########################
#Date: 16/01/2024
#About : Variables in Shellscripting
###########################
x=4
y=5
z=6


echo "The value of x is : $x "
echo "The value of x is : $y"
echo "The value of x is : $z "


echo "The value of x is : $x The value of y is : $y The value of z is : $z"           #this is will x y and z valiues in singles lines
echo -e "The value of x is : $x \n The value of y is : $y \n The value of z is : $z"   #(displaying multiple echo in mutliples lines)

echo "$x"  #outout = 4
echo $y     #Output = 5
echo '$x'   #output =$x (better to use double quotes while printing the variables



#######Shell Scripting Rules###############
#Variables doeesn't start with numeric values  i.e : 1x=3  (invalid)
#variables can start with underscore _a=3 (valid)

#variables name doesn't contain any space i.e, employe Name=kishore(invalid)
#variables name can contain underscore i.e, employe_Name=kishore(invalid)
#for string or text you should use double quotes i.e, Name="Kishore Kumar"
#variables should not have space betwwen name and value  i.e, x=3 is correct, but x = 3, x= 3, x =3 is not correct
#x =3 incorrect 
#x = 3 incorrect 
#x= 3 incorrect 

name="kishore Kumar"   #correctone
name=kishore kumar    #invalid

######################################
##Systyem define variables: which are defined by system  and which are represented in capital letters
echo $USER    #to get the user details
echo $OSTYPE
env          #to list all the system or env variables 


echo $?  --> to get the status of pervious execute command
