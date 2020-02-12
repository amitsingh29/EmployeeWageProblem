#!/bin/bash
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
