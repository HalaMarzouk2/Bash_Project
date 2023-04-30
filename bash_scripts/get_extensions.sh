#!/bin/bash

# Author: Hala Marzouk
# Created: 27th April 2023
# Last Modified: 

read -t 10 -p "what is  your name ?:" name 
read -p "what is your lastname ?:" lastname
read -N 4 -p "What is your extension number?:" number
echo #for formating
read -N 4 -s -p "What access code would you like to use when dialing in?:" access
echo #for formating 
echo "$name,$lastname,$number,$access">> extensions.csv
echo "thanks"



