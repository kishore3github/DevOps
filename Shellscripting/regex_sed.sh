#!/bin/bash

# Regex is the shortcut for regular expression
# if expression uses an pattern than that a expression called as regex
# pattern is string which represt more than one word
 sed command regex with \s \t . * \+ \? and \

# \s :--> it will look for line having space \s  represnt space

 sed -n '/\s/p' sed_regex.txt

\--> it escape the purpose of spl characters

sed -n '/\\s/p' sed_regex.txt              #\\s will eliminate the purpose of \s  and it will print the lines which are matching \s

#linux is better than \s windows


\t --> matches a tab space    \s is subset of \t , not viceversa

 sed -n '/\t/p' sed_regex.txt
sed -n '/^learn/p' sed_regex.txt

 

.  --> matches any character , exculding new line

sed -n '/l.n/p' sed_regex.txt
sed -n '/\sl.n/p' sed_regex.txt     # it will look for any word that starts with l and end with n and having space before it.

 
*  --> matches a sequence of zero or more instances of matches for the preceding regular expression
\+ ---> same as *, but matches one or more, atleast one word need to be there


sed -n '/learn\?\s/p' sed_regex.txt     #this is will print lines having space after learn

sed -n '/^learn/p' sed_regex.txt        #^ --> it will print the lines that start with 'learn'


sed -n '/linux$/p' sed_regex.txt            # it will print the line that ends with linux


sed -n '/^$/p' sed_regex.txt              #it will print the empty lines


sed -i '/^$/d' sed_regex.txt              #it will delte the empty lines in your file
 
==================================================================================================================================


# Usage of {}, [], () with sed

# [] -->matches any single character in a list


sed -n '/l[eaiu]t/p' sed_regex.txt    #it will print the all the lines which match lit, lat, let, lut

sed -n '/l[a-u]t/p' sed_regex.txt      # it will print the all lines which are from a to u in b/w l&t
sed -n '/l[a-ei-u]t/p' sed_regex.txt    #same as above

#{} --> matches for required no of repetations

sed -n '/this\{3\}/p' sed_regex.txt       # it will print the lines where s repeates more than 3 times

sed -n '/this\{3\}\b/p' sed_regex.txt      # it will print the lines where 's' repeats three times only   \b --> space after 


----------------------------

() --> This will search for zero or more whole sequence

 
[ec2-user@ip-172-31-43-153 ~]$ sed -n '/\(this\)\{2\}/p' sed_regex.txt    #this wi;ll print the lines which have this repeated sequencely (thisthis)

# thisthisthis
# thisthis
# thisthisthisthsi

sed -n '/\(this\)\+/p' sed_regex.txt      #it weill print lines those having atleast one 'this'


# this\+ will look for only for this string

# (this\)\+     --> look for this or thisthis or thisthisthis










