#!/bin/bash

# Author: Hala Marzouk
# Created: 30th April 2023
# Last Modified: 

# Description:
#choose which of the two scripts they want to run, 
#and then have this script run the
#relevant script based on the user’s selection.

ps3="Enter the number of the script you want to run"
select option in cruft_remover  folder_organiser
 do
    case "$option" in 
     cruft_remover) 
       #run scripts cruft_remover.sh
         ./cruft_remover.sh ;;
         
     folder_organiser) 
       #run scripts folder_organiser 
          ./folder_organiser.sh ;;
          
    esac
 done        


