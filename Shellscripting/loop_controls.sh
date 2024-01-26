#!/bin/bash

##################33
#DAte: 24 Jan 2024
#Author: Kishore
#About : loop control statements
#####################

#break: command is used to stop execute the loop

i=1
while true
do 
  echo $i
  if [ i -eq 70]
  then
    break
  fi
  i=$((i+1))
done


#######################
#continue: command is used in script to skip current iteration of loop & continue to next iteration of the loop

for each in 12 23 34 45 56
do
  if [ $each -eq 34 ]
  then
          continue
  fi
  echo $each
done
