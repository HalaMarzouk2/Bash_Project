#!/bin/bash

# Author: Hala Marzouk
# Created: 27th April 2023
# Last Modified:
# -t to prevent newline character 
readarray -t urls > urls.txt 
for url in "${urls[@]}";  do
website=$(echo "$url" | cut -d . -f 2 )
curl --help "$url" > website.txt
done  
echo "done"
