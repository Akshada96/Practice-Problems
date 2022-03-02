#!/bin/bash -x

read -p "Enter the day of month (eg.1,2,..,30,31) : " d
read -p	"Enter the month (for Jan-1, Feb-2, .. ,Dec-12 ) : " m

if(($m==3 && $d>=20 || $m==4 || $m==5 || $m==6 && $d<=20))
then
	echo "True"
else
	echo "False"
fi

