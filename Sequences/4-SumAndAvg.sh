#!/bin/bash -x

n1=$((RANDOM%90+10))
n2=$((RANDOM%90+10))
n3=$((RANDOM%90+10))
n4=$((RANDOM%90+10))
n5=$((RANDOM%90+10))

sum=$(($n1+$n2+$n3+$n4+$n5))
avg=$(($sum/5))

echo "Sum is $sum"
echo "Average is $avg"
