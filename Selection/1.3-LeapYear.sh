#!/bin/bash -x

read -p "Enter any year : " y

if (($(($y%400))==0 || $(($y%100))!=0 && $(($y%4))==0))
then
	echo "Year $y is a leap year"
else
	echo "Year $y is not a leap year"
fi
