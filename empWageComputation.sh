#!/bin/bash
declare -a dailyWage
wages=0
days=0
checkAttendance(){
	if(( $((RANDOM%2))==0 ))
	then
		return 0
	else
		return 1
	fi
}

calculateWorkingHours(){
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

calculateWorkingHours 160

echo "Daily Wage"
for((i=0;i<20;i++))
do
	printf  "Day %02d: ${dailyWage[$i]}\n" "$((i+1))"
done