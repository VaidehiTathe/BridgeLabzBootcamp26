#!/bin/bash -x
shopt -s extglob
echo "Enter word ending with thing"
read word
pat="^[0-9a-zA-Z]+"
#pat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,3}(.[a-zA-Z]{2,2})*$"
pat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})*$"
if [[ $word =~ $pat ]]
then
   echo "yes"
else
   echo "no"
fi
