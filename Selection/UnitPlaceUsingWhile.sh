#!/bin/bash -x

read -p 'Enter a number: ' num

n=$num
i=0
place=1

while(( $n!=0 ))
do
x=$(($n%10))
n=$(($n/10))

echo "$place th place is : $x"

(( i++ ))
place=$(($place*10))

done

