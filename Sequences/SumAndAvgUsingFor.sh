#!/bin/bash -x

n1=$((RANDOM%10))
n2=$((RANDOM%100))

for i in 1 2
do
if [ $((n$i)) -lt 10 ]
then
	a=$(($((n$i))+10))
	n$i=$a
	echo "$((n$i))"
fi
done

sum=$(($n1+$n2))
avg=$(($sum/2))

echo "Sum is $sum "
echo "Avg is $avg "

