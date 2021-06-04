#! /bin/bash 
declare -A mem
declare -A month  
declare -A samemonth

for((i=1; i<=50; i++))
do
x=$((RANDOM%12 + 1))
month[$i]=$x
done

n=${#month[@]}

echo "Birth Month of all 50 members are" ${month[@]}
#echo  ${!month[@]}

for i in ${month[@]} 
do
for j in ${month[@]}
do

	if [ $i -eq $j ]
	then

		samemonth[$i]=$i

	fi
done
done

for i in ${month[@]}
do
for a in ${!month[@]}
do
for j in ${samemonth[@]}
do

        if [ $i -eq $j ]
        then

                mem[$a]=$a

        fi
done
done
done

echo "Same birth Month of all 50 members are" ${samemonth[@]}
echo "Memeber of same birth month " ${mem[@]}
