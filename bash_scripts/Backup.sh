#!/bin/bash

# Author: Hala Marzouk
# Created: 27th April 2023
# Last Modified: 

# Description:
# Creates a backup in the current directory of
# all files in the home directory

echo "hello $USER^"
echo "I will now back up your home directory, $HOME "
#to add backup in the location of the folder you are standing in .
currentdir=$(pwd)
#using Use tar for archiving files and directories,and use bzip2 for compressing them
tar -cjf "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar.bz2" $HOME

echo "Backup Completed Successfully."

# if you want copy the tar file to another server using scp.
#Not you need to have SSH access to the remote server to do this 
#add username of remote server
remote_user="username"
#add hostname of remote server or ip
remote_server="hala.com" 
#remote_dir="/path/to/remote/directory" ex
remote_dir="home/backup"
scp "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" "${remote_user}@${remote_server}:${remote_dir}"





