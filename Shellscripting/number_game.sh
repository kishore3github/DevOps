#!/bin/bash
########

########Game with limited chances######
system_number=$RANDOM

for each in 1 2 3
do
  read -p "This is your chance no $each; Enter your number: " user_number
  if [ $user_number -eq $system_number ]
  then
     echo " you guess is correct"
  else
     echo "your guess is wrong"
  fi
done


################Game with unlimited chance untill you guess the correct number##########\

system_number=$RANDOM
no_of_chances=1
for (( ;; ))
do
  read -p "This is your chance no $no_of_chances; Enter your number: " user_number
  if [ $user_number -eq $system_number ]
  then
     echo " you guess is correct"
     echo " Congragulations..!!!, you won this game with $no_of_chances chances"
     break
  else
     echo "your guess is wrong"
     if [ $user_number -ge $system_number ]
     then
        echo "please enter some lesser value than $user_number"
     else
        echo "please enter some higher value than $user_number"
     fi
  fi
  no_of_chances=$((no_of_chances+1))

done
