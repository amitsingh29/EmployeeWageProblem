#!/bin/bash
echo "Welcome to Employee Wage Computation"
attendance=0
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then
		return 0
	else
		return 1
	fi
}
checkAttendance
wagePerHour=20
fullDayHour=8

echo "Enter the number"
read number

wagePerHour=20
fullDayHour=8
partTimeHour=4
wagePerHour=20

dailyWage()
{
dailyEmployeeWage=$((wagePerHour*fullDayHour))
echo "daily wage of employee is: $dailyEmployeeWage"
}
dailyWage

#!//bin/bash
partTimeHour=4
wagePerHour=20
 useCase4-CaseStatement
partWage()
{
	partTimeWage=$((partTimeHour*wagePerHour))
	echo "Part time wage of employee is: $partTimeWage"
}
partWage

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

#!bin/bash
workingDays=0
count=0
monthlyWage=0
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
declare -A dailyWage
wages=0
days=0
checkAttendance()
{
	if (($((RANDOM%2))==0))

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

calculateMonthlyWage()

calculateWage()
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
calculateMonthlyWage


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
calculateWorkingHours(){
	wage=$1
	while((days!=20))
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

			time=$((time+hours))
			if((time>100))
			then
				time=100
				return
			fi
			dailyWage[$days]=$wage
		else
			dailyWage[$days]=0
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
}
calculateWage
echo "total working days:$days"
echo "total working hours:$time"
echo "Total working hours: $time"
echo "Total monthly wage: $wages"


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

calculateWorkingHours 160
echo "Daily Wage"
for((i=0;i<20;i++))
do
	printf  "Day %02d: ${dailyWage[$i]}\n" "$((i+1))"
done

