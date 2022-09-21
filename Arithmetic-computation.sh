#!/bin/bash

count=0;

declare -A compDictionary;

read -p "Enter first number :" a;
read -p "Enter second number :" b;
read -p "Enter third number :" c;

array[((count++))]=${compDictionary[1]}
array[((count++))]=${compDictionary[2]}
array[((count++))]=${compDictionary[3]}
array[((count++))]=${compDictionary[4]}


echo "Array is ${array[@]}"
