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
calculateMonthlyWage

