#!/bin/bash
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

partWage()
{
	partTimeWage=$((partTimeHour*wagePerHour))
	echo "Part time wage of employee is: $partTimeWage"
}
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