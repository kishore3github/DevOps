#!/bin/bash

Insertion and deletion with sed commands:'

sed -options 'commands' filename

options i,a,d 
i--> insert a new line before specified line
a --> insert a new line
d --> delete a line


sed  '1i what is linux..?' sed_replace.txt        #to insert line at begining
sed -i '1i what is linux..?' sed_replace.txt      #it will insert the output to file permanently

# what is linux..?
# unix is great os. unix is opensource. unix is free os.
# learn operating system.
# unix linux which one you choose.
# unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

sed  '$a Hence completed...!!!' sed_replace.txt         #to insert line at end of the file

# unix is great os. unix is opensource. unix is free os.
# learn operating system.
# unix linux which one you choose.
# unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
# Hence completed...!!!

sed -i '5,$d' sed_replace.txt


