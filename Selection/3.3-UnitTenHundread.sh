#!/bin/bash -x

read -p "Enter a number 1, 10, 100, 1000, etc : " num

case $num in

	1 )
	echo "unit"
	;;
	10 )
	echo "Ten"
	;;
	100 )
	echo "Hundread"
	;;
	1000 )
	echo "Thousand"
	;;
	10000 )
	echo "Ten Thousand"
	;;
esac
