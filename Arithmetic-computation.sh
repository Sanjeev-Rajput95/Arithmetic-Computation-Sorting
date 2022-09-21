#!/bin/bash -x

count=0;

declare -A compDictionary;

read -p "Enter first number :" a;
read -p "Enter second number :" b;
read -p "Enter third number :" c;

result1=$(( $a + $b * $c))
echo "$a + $b * $c = $result1";
compDictionary[1]=$result1;

result2=$(( $a * $b + $c ))
echo "$a * $b + $c = $result2";
compDictionary[2]=$result2;

result3=$(echo "scale=2; $c + $a / $b"|bc)
echo "$c + $a / $b = $result3";
compDictionary[3]=$result3;

result4=$(( $a % $b + $c ))
echo "$c % $b + $c = $result4";
compDictionary[4]=$result4;

echo "Result store in a Dictionary " ${compDictionary[@]}
echo ${!compDictionary[@]}
