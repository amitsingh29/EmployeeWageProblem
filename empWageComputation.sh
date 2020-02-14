#!/bin/bash
time=0
days=0
workingDays=0
wages=0
wagePerHour=20
fullDayHour=8
partTimeHour=4

partWage()
{
	partTimeWage=$((partTimeHour*wagePerHour))
	return $partTimeWage
}

dailyWage()
{
	dailyEmployeeWage=$((wagePerHour*fullDayHour))
	return $dailyEmployeeWage
}

checkAttendance()
{
	if (($RANDOM%2==0))
	then
		return 0
	else
		return 1
	fi
}

calculateWorkingHours()
{
	hours=$1
	while(($time<=100 && $days!=20))
	do
		checkAttendance
		result=$?
		if(($result==1))
		then
			workingDays=$((workingDays+1))
			time=$((time+hours))
			if((time>100))
			then
				time=100
				return
			fi
		fi
		days=$((days+1))
	done
}




	echo "Enter a number"
	read number

	case $number in
	1)
	calculateWorkingHours 4
	wages=$((time*20))
	;;

	2)
	calculateWorkingHours 8
	wages=$((time*20))
	;;

	*)
	echo "Invalid input"
esac
echo "Total working hours: $time"
echo "Total monthly wage: $wages"
