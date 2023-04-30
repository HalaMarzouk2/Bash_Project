#!/bin/bash

# Author: Hala Marzouk
# Created: 29th April 2023
# Last Modified:
read -p "Which folder do you want to organise? : " folder
while read file ; do
   case file in 
   *.gpg | *.gpeg | *.png )
         subfolder="images";;
    *.doc | *.docx | *.txt | *.pdf )
         subfolder="documents" ;;
    *.xls | *.xlsx | .csv )
         subfolder="spreadsheets" ;;
         *.sh)
         subfolder="scripts";;
    *.zip | *.tar | *.tar.gz | *.tar.bz2 )
         subfolder="archives";;
    *.ppt | *.pptx )
         subfolder="presentations";;
         *.mp3 )
         subfolder="audio";;
         *.mp4 )
         subfolder="video";;
    #Anything else Leave in current folder    
    *)
    subfolder=".";;
   esac
 if [ !-d "$folder/subfolder" ];then
   mkdir "$folder/subfolder"
   fi
   mv "$file" "$folder/subfolder"

done > >(ls $folder)
