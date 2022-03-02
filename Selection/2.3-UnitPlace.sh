#!/bin/bash

num=$((RANDOM))
#read -p "Enter a number: " num

rem=$num
digit=0

while(($rem!=0))
do
	((digit++))
	rem=$(($rem/10))
done
echo "$num"

if(($digit==1))
then
	echo "Unit Place : $(($num%10))"

elif(($digit==2))
then
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"

elif(($digit==3))
then
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	num=$(($num/10))
	echo "100th Place : $(($num%10))"

elif(($digit==4))
then
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	num=$(($num/10))
	echo "100th Place : $(($num%10))"
	num=$(($num/10))
	echo "1000th Place : $(($num%10))"

elif(($digit==5))
then
	echo "Unit Place : $(($num%10))"
	num=$(($num/10))
	echo "10th Place : $(($num%10))"
	num=$(($num/10))
	echo "100th Place : $(($num%10))"
	num=$(($num/10))
	echo "1000th Place : $(($num%10))"
	num=$(($num/10))
	echo "10000th Place : $(($num%10))"
fi
