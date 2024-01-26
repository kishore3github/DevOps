#!/bin/bash

###########
#date: 24 Jan 2024
# Author : Kishore
# About : select loop in shell scripting
#Select loop provides an easy way to create a numbered menu from which users can select options.
#it is useful when you need to ask user to chose one or more items form lists of choices.

###########Numbered Calculator###############

select opt in Addition Subtraction Multiplication Division Quit
do
  case $opt in
  Addition)
          read -p "Enter num1: " num1
          read -p "Enter num2: " num2
          echo "The Addition of $num1 and $num2 is : $((num1+num2))"
          ;;
  Subtraction)
          read -p "Enter num1: " num1
          read -p "Enter num2: " num2
          echo "The Subtraction of $num1 and $num2 is : $((num1-num2))"
          ;;
  Multiplication)
          read -p "Enter num1: " num1
          read -p "Enter num2: " num2
          echo "The Multiplication of $num1 and $num2 is : $((num1*num2))"
          ;;
  Division)
          read -p "Enter num1: " num1
          read -p "Enter num2: " num2
          echo "The Division of $num1 and $num2 is : $((num1/num2))"
          ;;
  Quit)
          echo "Thank you for using this numbered calculator"
          exit 0
          ;;
  *)
          echo "Invalid Option"
          ;;
  esac

done
