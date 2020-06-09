#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

wagePerHr=20
perDayHrs=8
salary=0

CheckAttendance=$(( RANDOM%2 ))

if [ $CheckAttendance -eq 1 ]
then
	echo "Employee is Present"
	salary=$(( $wagePerHr * $perDayHrs ))
	echo $salary
else
	echo "Employee is Absent"
fi
