#!/bin/bash

#Enter the directory path you want to search.
echo "Enter the name of the directory you wish find."
read file

#If user enters a file then do not create the file.
#If user enters an existing directory then do not create.
#If user enters a directory that does not exist, then create that directory.

if [ -f "$file" ]; then
echo "This is a file. Do not create."
elif [ -d "$file" ]; then
echo "Directory already exists. Do not create."
else
echo "Directory does not exist. Standby as $file is being created."
echo ==============================================================
mkdir ./$file
echo "$file created."
fi

#Run executable command "Chmod a+x ./yourfilename.sh"