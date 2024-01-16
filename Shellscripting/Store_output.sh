#!/bin/bash

#Storing outpout of command into variabe is sotring into Ram ,it means data will lost when session is terminated
#Storing outpout of command into file is sotring into filesysyem ,it means data won't lost when session is terminated and it will be stored in filesystem

#variables vaues are stored in terminal once session is closed, the values will lost



x=4
echo "The value of X is : $x"

my_vlaues=$(ls)
my_values=`ls`

#storing output as a variables
echo "The output from variables is : $my_values"

echo "The output from variables is : $my_vlaues"


#Storing output in text file

ls > ls_output_from_script.txt



#######################
Creating log file with date stramp

date
today_date=$(date +%y-%m-%d)
log_file_name=$(today_date).log

touch $log_file_name
