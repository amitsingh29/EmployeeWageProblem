#!/bin/bash
echo "Welcome to Employee Wage Computation"
attendance=0
#useCase1
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then
		return 0
	else
		return 1
	fi
}
#useCase2
wagePerHour=20
fullDayHour=8
partTimeHour=4
wagePerHour=20

dailyWage()
{
	dailyEmployeeWage=$((wagePerHour*fullDayHour))
	return $dailyEmployeeWage
}

#useCase3
partTimeHour=4
wagePerHour=20
partWage()
{
	partTimeWage=$((partTimeHour*wagePerHour))
	return $partTimeWage
}


#useCase4
case $number in
	1)
	dailyWage
	;;

	2)
	partWage
    ;;

    *)
	;;
esac
count=0
monthlyWage=0
time=0
days=0
workingDays=0
wages=0
#useCase5
calculateMonthlyWage()
{
	echo "Enter a number"
	read number

	case $number in
	1)
	while ((count!=20))
	do
		checkAttendance
		result=$?
		if((result==1)) 
		then
			workingDays=$((workingDays+1))
			dailyWage
			res=$?
			monthlyWage=$((res*workingDays))
		fi 			
		count=$((count+1))
	done	
	echo "monthly wage of employee is:$monthlyWage"
	return $monthlyWage
	;;

	2)
	while ((count!=20))
	do
		checkAttendance
		result=$?
		if((result==1)) 
		then
			workingDays=$((workingDays+1))
			partWage
			res=$?
			monthlyWage=$((res*workingDays))
		fi 			
		count=$((count+1))
	done	
	echo "monthly wage of employee is:$monthlyWage"
	return $monthlyWage
	;;

	*)
	echo "Invalid"
	;;
esac
}

#useCase6
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

#useCase7
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
#useCase8
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
