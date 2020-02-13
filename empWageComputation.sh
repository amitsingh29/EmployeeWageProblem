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

calculateWage()
{
	echo "Enter a number"
	read number

	case $number in
	1)
	while(($time<=100 && $days!=20))
	do
		checkAttendance
		result=$?
		if(($result==1))
		then
			workingDays=$((workingDays+1))
			time=$((time+8))
			if (($time>100))
			then
				time=100
				wages=$((20*time))
			else
				dailyWage
				res=$?
				wages=$((res+wages))
			fi
		fi
			days=$((days+1))
		done
		echo $wages
	;;

	2)
	while(($days!=20 && $time<=100))
	do
		checkAttendance
		result=$?
		if(($result==1))
		then
			workingDays=$((workingDays+1))
			time=$((time+4))
			partWage
			res=$?
			wages=$((res+wages))
			fi
			days=$((days+1))
		done
		echo $wages
	;;

	*)
	echo "Invalid input"
esac
}
calculateWage
echo "total working day:$days"
echo "total working hours:$time"