#!/bin/bash
#This is used to start and stop httpd service

read -p " Enter a start or stop to perform sn action on httpd service " action

if [ "${action}" == "start" ]
then
  echo "starting httpd...."
  sudo systemctl start httpd
  echo "httpd running"
fi

if [ "${action}" == "stop" ]
then
  echo "stopping httpd.."
  sudo systemctl stop httpd
  echo "httpd stopped"
fi
