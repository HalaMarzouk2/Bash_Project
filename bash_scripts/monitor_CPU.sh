#!/bin/bash

# Author: Hala Marzouk
# Created: 30th April 2023
# Last Modified: 

# Description:
#monitors system resources such as CPU usage, 
#and sends alerts(email) when they exceed certain thresholds.

 threshold=90
 myemail=hala@gmail.com
while true; do
    # get the current CPU usage from top
    cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
   if [ "$cpu" -gt $threshold ];then
        # send an email notification
      echo "High CPU usage detected: $cpu%" | mail -s "High CPU usage on $HOSTNAME" $myemail  
        # display the notification message on the screen
      echo "High CPU usage detected: $cpu%"
   fi 
   # wait for 2 minute before checking again. 
   sleep 120  
done