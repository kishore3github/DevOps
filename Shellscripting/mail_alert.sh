#!/bin/bash


############################
# Date : 25 Jan 2024
# Author : Kishore
# About : This script will send the mail when Ram memory is low

To="kishorechellaboina9666@gmail.com
ram_free=$( free -mt | grep Total: | awk -F '{print $4 }' )

if [ ram_free -le 600]
then 
 echo "Sending mail because your RAM memory is low"
 echo  "Subject: Warning, Ram free size is low" | sendmail | $10\
fi
