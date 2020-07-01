#!/bin/bash -x
shopt -s extglob
echo "Enter word ending with thing"
read word
pat=[a-zA-Z]{3}
pat=^[1-9]*
if [[ $word =~ $pat ]]
then
   echo "yes"
else
   echo "no"
fi

