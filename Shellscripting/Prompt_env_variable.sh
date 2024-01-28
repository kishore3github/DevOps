#!/bin/bash

###########
# Date : 26 Jan 2024
# Author : kishore

###############
# PS1 is the primary prompt string and its a default interaction prompt

echo $PS1
# [\u@\h \W]\$
# [ec2-user@ip-172-31-43-153 ~]$

#\u --> username --> ec2
#\h --> hostname --> @ip-172-31-43-153
#\w --> working directory --> ~

# TO change your prompt
PS1="[\@ -- \u@\h \w]"
# [05:12 AM -- ec2-user@ip-172-31-43-153 ~]

 PS1="[\t -- \u@\h \w]"
# [05:10:55 -- ec2-user@ip-172-31-43-153 ~]

# To make this changes permenantely export this changes to .bash_profile file


