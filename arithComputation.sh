#!/bin/bash -x
read -p "Emter first number::" number1
read -p "Enter second number::" number2
read -p "Enter third number::" number3

answer1=$(( number1+number2*number3 ))
echo "$answer1"

answer2=$(( number1*number2+number3 ))
echo "$answer2"

answer3=$(( number2+number1/number2 ))
echo "answer3"
