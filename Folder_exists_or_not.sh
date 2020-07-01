#!/bin/bash -x
read -p "enter folder name:" folderName
if [ -d $folderName ]
then
	echo "Folder already exists"
else
	mkdir $folderName
fi
