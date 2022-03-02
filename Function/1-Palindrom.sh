#!/bin/bash -x

function isPalindrom()
{
	n=$1
	reverse=0
	while((n!=0))
	do
		x=$(($n%10))
		n=$(($n/10))
		reverse=$(($reverse*10+$x))
	done

	if [ $1 -eq $reverse ]
	then
		echo "$1 is a palindrom"
	else
		echo "$1 is not a palindrom"
	fi
}

read -p "Enter 1st no: " num1
isPalindrom $num1

read -p "Enter 2nd no: " num2
isPalindrom $num2
