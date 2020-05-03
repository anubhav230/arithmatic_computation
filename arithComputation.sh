#!/bin/bash -x
count=0
declare A dictionary
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

array[((count++))]=${dictionary[1]}
array[((count++))]=${dictionary[2]}
array[((count++))]=${dictionary[3]}
array[((count++))]=${dictionary[4]}

echo "array is ${array[@]}"


for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${array[$j]} -gt ${array[$((j+1))]} ]
        then
            # swap
            temp=${array[j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done
echo "sorted array is ${array[@]}"












