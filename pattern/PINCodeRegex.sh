#!/bin/bash -x
shopt -s extglob
echo "Enter word ending with thing"
read word
pat="^[1-9]{1}[0-9]{2}[ ]?[0-9]{3}$"
if [[ $word =~ $pat ]]
then
   echo "yes"
else
   echo "no"
fi
