#!/bin/bash


#  it can perform lots of functions on file like searching, find and replace, insertion or deletion


#  sed OPTIONS... [SCRIPT] [INPUTFILE...] 

# input file contens:
# unix is great os. unix is opensource. unix is free os.
# learn operating system.
# unix linux which one you choose.
# unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

# Replacing all the occurence :
=================================
sed 's/unix/linux/' geekfile.txt

#  output: 
#  linux is great os. unix is opensource. unix is free os.
# learn operating system.
# linux linux which one you choose.
# linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

Replacing the nth occurrence of a pattern in a line:
====================================================

sed 's/unix/linux/2' geekfile.txt    #to replace 2nd unix in each line

ouyput:
unix is great os. linux is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.linux is a multiuser os.Learn unix .unix is a powerful.



Replacing all the occurrence of the pattern in a line :
========================================================

sed 's/unix/linux/g' geekfile.txt

# linux is great os. linux is opensource. linux is free os.
# learn operating system.
# linux linux which one you choose.
# linux is easy to learn.linux is a multiuser os.Learn linux .linux is a powerful.




# Replacing from nth occurrence to all occurrences in a line :

$sed 's/unix/linux/3g' geekfile.txt

# unix is great os. unix is opensource. linux is free os.
# learn operating system.
# unix linux which one you choose.
# unix is easy to learn.unix is a multiuser os.Learn linux .linux is a powerful.

Parenthesize first character of each word:
=========================================

 echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'

# (W)elcome (T)o (T)he (G)eek (S)tuff


Replacing string on a specific line number:
===========================================

$sed '3 s/unix/linux/' geekfile.txt

# unix is great os. unix is opensource. unix is free os.
# learn operating system.
# linux linux which one you choose.
# unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

Duplicating the replaced line with /p flag:
 =========================================

 $sed 's/unix/linux/p' geekfile.txt

#  linux is great os. unix is opensource. unix is free os.
# linux is great os. unix is opensource. unix is free os.

Printing only the replaced lines: 
================================
$sed -n 's/unix/linux/p' geekfile.txt

# linux is great os. unix is opensource. unix is free os.
# linux linux which one you choose.
# linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.



Replacing string on a range of lines:
====================================

$sed '1,3 s/unix/linux/' geekfile.txt

# linux is great os. unix is opensource. unix is free os.
# learn operating system.
# linux linux which one you choose.
# unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

sed '2,$ s/unix/linux/' sed_replace.txt                       # here $ indicates last line of the file

# unix is great os. unix is opensource. unix is free os.
# learn operating system.
# linux linux which one you choose.
# linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

Deleting lines from a particular file : 
TO delete a particular line
Syntax:
$ sed 'nd' filename.txt
Example:
$ sed '5d' filename.txt

# To Delete a last line

# Syntax:
$ sed '$d' filename.txt

# To Delete line from range x to y

# Syntax:
$ sed 'x,yd' filename.txt

$ sed '3,6d' filename.txt

# Syntax:
# $ sed 'nth,$d' filename.txt

$ sed '12,$d' filename.txt



Syntax:
$ sed '/pattern/d' filename.txt
Example:
$ sed '/abc/d' filename.txt


