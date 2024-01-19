#!/bin/bash

#################
#About : To know about server status by using input and ouptu commands
#pre-requiste : any webserver need to install in your system before executing this script
#Date : 19 jan 2024
###################

read -p "enter your web server name: " web_server

status=$(systemctl status $web_server | awk 'NR==3 { print $2 }')

echo -e "The current status of $web_server is: \033[92m$status\033[0m "
