#!/bin/awk -f

# Syntax:
# awk option 'pattern/condition {action}' filename
# command | awk option 'pattern/condition {action}'

# awk can take the following actions:
# -F fs  To specify a field separator
# -f file- to specify a file that contains awk scripts
# # -v var=value to declare a variable

# awk 'BEGIN{start_action} pattern/condition(action to perform on each line) END{stop_action}' file name
# awk -f awkscript.awk filename (awkscript.awk is the file that contain awk script)

# Actions:
# -------
# Begin block is performed before reading the file
# END  block is performed after processing the file
# Rest of the actions are performed while processing the file

# Note:
# Need atleast one action to run awk script
# No need of input for begin action
# Input is required for middle and end action


awk 'BEGIN {print "=========working on /etc/passwd file=============="} /root/ {print $0} END {print "=========completed work on /etc/passwd file=============="}' /etc/passwd
BEGIN {
  print "Hello World..!!!!"}
  
