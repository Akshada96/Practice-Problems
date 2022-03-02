#!/bin/bash -x

for((i=1;i<=100;i++))
do
	temp=$i
	n1=$(($temp%10))
	n2=$(($temp/10))

	if(($n1==$n2))
	then
	arr[count++]=$i
#	arr[count++]=$n1
#	arr[count++]=$n2
	fi
done

echo "Digits that are repeated twice are : ${arr[@]}"
