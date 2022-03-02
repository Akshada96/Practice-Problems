#!/bin/bash -x

read -p "Enter a number 1, 10, 100, 1000, etc : " num

if [ $num -eq 1 ]
then
	echo "unit"

elif [ $num -eq 10 ]
then
	echo "Ten"

elif [ $num -eq 100 ]
then
	echo "Hundread"

elif [ $num -eq 1000 ]
then
	echo "Thousand"

elif [ $num -eq 10000 ]
then
	echo "Ten Thousand"
fi
