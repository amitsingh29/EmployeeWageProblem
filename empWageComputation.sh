#!/bin/bash
declare -A dailyWage
wages=0
days=0
checkAttendance()
{
	if (($((RANDOM%2))==0))
	then
		return 0
	else
		return 1
	fi
}

calculateWorkinghours()
{
	wage=$1
	while((days!=20))
	do
	checkAttendance
	result=$?
	if(($result==1))
	then
		dailyWage[$days]=$wage
	else
		dailyWage[$days]=0
	fi
	days=$((days+1))
done
}

calculateWorkinghours 160
echo "daily wage:"
for((i=0;i<20;i++))
do 
	echo -n "${dailyWage[$i]}"
done