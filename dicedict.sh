#! /bin/bash
declare -A dice

for((i=1; i<=6; i++))
do
x=$((RANDOM%5+1))
dice[$i]=$x
done
echo ${dice[@]}
echo ${dice[5]}
