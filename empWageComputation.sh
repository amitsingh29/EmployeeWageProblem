#!/bin/bash
wagePerHour=20
fullDayHour=8
dailyWage()
{
dailyEmployeeWage=$((wagePerHour*fullDayHour))
echo "daily wage of employee is: $dailyEmployeeWage"
}
dailyWage
