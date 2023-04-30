#!/bin/bash

# Author: Hala Marzouk
# Created: 27th April 2023
# Last Modified:

echo "hello ${USER^}"
echo "this scriprt will remove unnecessary files,delete files that
haven not been modified for a certain period of time."
read -p "which folder they want to remove unnecessary files from it" folder
read -p "How many days is too old?: " date
 whlie read file ; do 
 rm ! "$file" 
 done < <(find $folder -maxdepth 1 -type f -mtime "+$date")
# note -maxdepth 1:- option limits the search to the specified directory and prevents find from searching its subdirectories.
#_________another solution___________
read -p "Which folder do you want to remove unmodified files from?: " folder
read -p "How many days is too old?: " days

readarray -t files < <(find $folder -maxdepth 1 -type f -mtime "+$days")

for file in "${files[@]}"; do
    rm -i "$file"
done
