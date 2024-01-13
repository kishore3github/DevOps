# To execute the shell script as a system command 
# or To run a user command as System commands.

first create the shell script file and give the permission to it.

To create file:

`vi <filename>

To  provide execute permissions:

`chmod 770 <file name>`

By deafault all system commands are stored in bin location `/usr/bin/`. so if we stored our file in this location , then we can execute the file as system command,
but the file will stored as a temporary. Once we exit and re-entered the terminal we can't execute the file. To do this please follow the below procedure:

move the  file to the `/usr/bin`

`sudo mv <current/path/ofthe/flie/><filename> /usr/bin` 

Now execute the freem.sh(filename) command from any path

`freem.sh`

To make usercommands as system command permanently, we need to create the new path and place the file in it. and then export the file path as system path

create `usercmnds` directory:

`mkdir usercmds`

`cd usercmds`

create bin folder in usercmnds directory:

`mkdir bin`

move freem file to /usercmds/bin folder:

`sudo mv <current/file/path>file /home/ec2-user/usercmds/bin`

export file path to the system path:

`export PATH=${PATH}:/home/ec2-user/usercmds/bin `

Try to exit from the session and rejoin. Now you are able to execute the user commands as a system command.
