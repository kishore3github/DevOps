#!/bin/bash

########################
#Date : 26 Jan 2024
#Author : Kishore
########################


#logic to check the root user

<<mycom
if [ $(whoami) != "root" ]
then
        echo "please run with root user or sudo privilages for executing this script"
        exit 1
fi
mycom
mycom
if [ $(id -u) -ne 0]
then 
        echo "please run with root user or sudo privilages for executing this script"
        exit 1
fi

yum install git -y
yum install wget -y
yum install vim -y
