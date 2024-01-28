#!/bin/bash

#######################
#Date: 25 Jan 2024
#Author : Kishore
#About : Automating system inventory by using shell script and storing output to CSV file
#######################


server_name=$(uname -n)
ip_address=$(ifconfig | grep inet | awk 'NR==1{print $2}')
os=$(uname)
up_time=$(uptime | awk '{print $3}')


#Creating header in CSV file#####

echo "S_no, Server_Name, IP_Adress, OS_Type, Up_time" > server_info.csv
echo "1, $server_name, $ip_address, $os, $up_time," >> server_info.csv
