# To execute the shell script as a system command 
# To run a user command as System commands.

first create the shell script file and give the permission to it.

TO create file:

`vi freem.sh`

To  provide execute permissions

`chmod 770 <file name`

By deafault all system commands are stored in bin location `/usr/bin/`. so if we stored our file in this location , then we can execute the file as system command,
but the file will stored as a temporary. Once we exit and re-entered the terminal we can't execute the file. To do this please follow the below procedure:

move the `freem.sh` file to the `/usr/bin`

`sudo mv <current/path/ofthe/flie/freemsh /usr/bin` 

Now execute the freem.sh command from anywhere 

`freem.sh`

To make usercommands as system command permanently, we need to create the new path and place the file in it. and then export the file path as system path

`export `
