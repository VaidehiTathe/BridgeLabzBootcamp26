#!/bin/bash -x
read -p "Enter a number:" a
echo "1.Feet to Inch   2.Meter to Feet"
read -p "Choose the option to conversion:" x
for (( num=1; num<=2; num++ ))
do
        num=$x
        case $num in
                1)
                echo $((a*12))
                        ;;
                2)
                echo $((a*3))
                        ;;
        esac
        break
done
