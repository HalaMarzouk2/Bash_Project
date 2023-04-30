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
tar -cf "$currentdir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" $HOME

echo "Backup Completed Successfully."
