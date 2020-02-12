#!/bin/bash
echo "Welcome to Employee Wage Computation"
attendance=0
checkAttendance(){
	attendance=$((RANDOM%2))
	if((attendance==0))
	then
		echo "Absent"
	else
		echo "Present"
	fi
}
checkAttendance
wagePerHour=20
fullDayHour=8
dailyWage()
{
dailyEmployeeWage=$((wagePerHour*fullDayHour))
echo "daily wage of employee is: $dailyEmployeeWage"
}
dailyWage
#!//bin/bash
partTimeHour=4
wagePerHour=20
partWage()
{
	partTimeWage=$((partTimeHour*wagePerHour))
	echo "Part time wage of employee is: $partTimeWage"
}
partWage

