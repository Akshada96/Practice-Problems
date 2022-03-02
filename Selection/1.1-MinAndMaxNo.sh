#!/bin/bash -x

n1=$((RANDOM%900+100))
n2=$((RANDOM%900+100))
n3=$((RANDOM%900+100))
n4=$((RANDOM%900+100))
n5=$((RANDOM%900+100))

#for((i=1; i<=5; i++))
#do
#	n$i=$((RANDOM%1000))
#done

if(($n1>$n2 && $n1>$n3 && $n1>$n4 && $n1>$n5))
then
	max=$n1
fi

if(($n2>$n1 && $n2>$n3 && $n2>$n4 && $n2>$n5))
then
	max=$n2
fi

if(($n3>$n1 && $n3>$n2 && $n3>$n4 && $n3>$n5))
then
	max=$n3
fi

if(($n4>$n1 && $n4>$n2 && $n4>$n3 && $n4>$n5))
then
	max=$n4
fi

if(($n5>$n1&& $n5>$n2 && $n5>$n3 && $n5>$n4))
then
	max=$n5
fi

#

if(($n1<$n2 && $n1<$n3 && $n1<$n4 && $n1<$n5))
then
	min=$n1
fi

if(($n2<$n1 && $n2<$n3 && $n2<$n4 && $n2<$n5))
then
	min=$n2
fi

if(($n3<$n1 && $n3<$n2 && $n3<$n4 && $n3<$n5))
then
	min=$n3
fi

if(($n4<$n1 && $n4<$n2 && $n4<$n3 && $n4<$n5))
then
	min=$n4
fi

if(($n5<$n1&& $n5<$n2 && $n5<$n3 && $n5<$n4))
then
	min=$n5
fi

echo "Maximum no is $max"
echo "Minimum no is $min"
