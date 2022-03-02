#!/bin/bash

num=$((RANDOM))
rem=$num
digit=0

while(($rem!=0))
do
	((digit++))
	rem=$(($rem/10))
done
echo "$num"

case $digit in
	1)
	echo "Unit Place : $(($num%10))"
	;;

	2)
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	;;

	3)
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	num=$(($num/10))
	echo "100th Place : $(($num%10))"
	;;

	4)
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	num=$(($num/10))
	echo "100th Place : $(($num%10))"
	num=$(($num/10))
	echo "1000th Place : $(($num%10))"
	;;
	5)
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	num=$(($num/10))
	echo "100th Place : $(($num%10))"
	num=$(($num/10))
	echo "1000th Place : $(($num%10))"
	num=$(($num/10))
	echo "10000th Place : $(($num%10))"
	;;
esac
