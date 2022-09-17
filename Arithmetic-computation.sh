#!/bin/bash

read -p "Enter first number :" a;
read -p "Enter second number :" b;
read -p "Enter third number :" c;

declare -A compDictionary;

result1=$(( $a + $b * $c))
echo "$a + $b * $c = $result1";

result2=$(( $a * $b + $c ))
echo "$a * $b + $c = $result2";

result3=$(( $c + $a / $b ))
echo "$c + $a / $b = $result3";

result4=$(( $a % $b + $c ))
echo "$c % $b + $c = $result4";

compDictionary[result1]=$result1
compDictionary[result2]=$result2
compDictionary[result3]=$result3
compDictionary[result4]=$result4

echo "Results store in Dictionary " ${compDictionary[@]}
