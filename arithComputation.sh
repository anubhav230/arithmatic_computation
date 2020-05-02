#!/bin/bash -x
declare -A dictionary
read -p "Emter first number::" number1
read -p "Enter second number::" number2
read -p "Enter third number::" number3

answer1=$(( number1+number2*number3 ))
echo "$answer1"
dictionary[1]=$answer1

answer2=$(( number1*number2+number3 ))
echo "$answer2"
dictionary[2]=$answer2

answer3=$(( number2+number1/number2 ))
echo "$answer3"
dictionary[3]=$answer3

answer4=$(echo "scale=2; $number1 / $number2 + number3"|bc)
echo "$answer4"
dictionary[4]=$answer4



echo ${dictionary[@]}

echo ${!dictionary[@]}



