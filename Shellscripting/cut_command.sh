#!/bin/bash
# The cut command is powerful tool to extract parts of each line(it is called slicing of string)

# what cut does is 
#  --> it can be used to cut parts of the each line/row of the file by
#          --> byte position
#          --> character position
#          --> Fields based on delimiter (by default delimeter is the tab) from each row of the file
#   General options for cut command:
#     cut options <ranges of byte/characters/fields> file 
#     or 
#     command output | cut options

cat /etc/passwd | cut -c 1   #to cut the first characters of the each line in /etc/passwd file
cut -c 1 /etc/passwd         #to cut the first characters of the each line in /etc/passwd file
 awk '{ print $1 }' /etc/passwd    #it will print entire lines
 awk -F ':' '{ print $1 }' /etc/passwd           #it will print output till :
 cut -c 2-5  /etc/passwd              #it will print output from second character to 5th character
 cut -d ':' -f 5 /etc/passwd                #it will print the 5th word after : in /etc/passwd
cut -d ':' -f 2 /etc/passwd                  #it will print the 2nd word after : in /etc/passwd


Cut commands for bytes of range/character options
================================================

To cut a section of a line by specifiying a byte/character position    use -b -c options
syntax:

cut -b <positon/range of positions> file
cut -c <positon/range of positions> file
postions: 3,7,9
ranges of position: 4-8

ex: mytext.txt
cut -b 3 mytext.txt                               #it will print 3 byte in the line
cut -b 3,7 mytext.txt                             #it will print 3 and 7 byte in the line
cut -b 3-7 mytext.txt                             #it will print  3 to 7  bytes in the line
cut -b 3- mytext.txt                              #it will print  3 to end of the line bytes in the line
cut -b -6,9 mytext.txt                            #it will print  from start to 3 character and 9th character


# Cut commands for bytes of range/character options
# ================================================

# To cut a section of a line by specifiying a field position    use -f options
# Assume fields are like columns, by default cut command will separate cloumns based on tab ('delimiter')
# if we want to use different filed separator use -d (delimeter)
# syntax:

# cut -f <positon/range of positions> file
 cut -d ":" -f 1,6,8 /etc/passwd


# cut -f <positon/range of positions> file [-d':'] [--output-delimiter='**'] file

cut -d ":" -f 1 --output-delimiter='1 ' /etc/passwd
# output:
# root1 /root
# bin1 /bin
# daemon1 /sbin
# adm1 /var/adm
# lp1 /var/spool/lpd
# sync1 /sbin
# shutdown1 /sbin
# halt1 /sbin
# mail1 /var/spool/mail
# operator1 /root
# games1 /usr/games

# How to ignore lines that do not contain delimiter
# ================================================
# syntax:
cut -s -f 3,4 -d':'  file

# if line in your file didn't have mentioned delimeter, so cut command will print entire line , to ignore this line we can use -s option

 cut -d':' -f 1 demo.txt
# Output:
# root
# bin
# daemon x 2 2 daemon /sbin  /sbin/nologin
[ec2-user@ip-172-31-43-153 ~]$ cut -s -d':' -f 1 demo.txt
# Output:
# root
# bin


Coplement option with cut command:
As the name suggest it complement with the output. The output can be used in combination with other then -b, -c or -f

syntax:
cut --compliment -b 3-5 file
cut --compliment -b 3-5 file

 cut -s --complement -d':' -f 1-3 demo.txt                 #it will print all the remaining character  other than mentioned character
0:root:/root:/bin/bash
1:bin:/bin:/sbin/nologin








