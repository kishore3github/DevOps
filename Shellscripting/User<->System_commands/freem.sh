#!/bin/bash

#######################
# Author : kishore
# Date : 13/01/2024.
# About : To print the Disk Memory 

ls -lrt

# free commannd will check the memory statics of the Linux operating system.
free -m

#below command will print the Disk memory only
free -m | awk 'NR==2{print $4,"MB(Megabytes)"}'
