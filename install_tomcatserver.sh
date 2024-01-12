##!/bin/baash
#
###################
##About : This script will install tomcat server
# Author : Kishore 
##Date : 12/01/2024
###################


#downloading tomcat package
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz

# extracting zip file
tar -xvzf apache-tomcat-9.0.85.tar.gz

ls -lrt

#Removing zip file
rm apache-tomcat-9.0.85.tar.gz

#replacing tomactfolder name
mv apache-tomcat-9.0.85.tar.gz/ tomcat9
