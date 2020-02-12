#!//bin/bash
partTimeHour=4
wagePerHour=20
partWage()
{
	partTimeWage=$((partTimeHour*wagePerHour))
	echo "Part time wage of employee is: $partTimeWage"
}
partWage