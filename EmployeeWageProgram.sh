#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

wagePerHr=20
perDayHrs=8

salary=$(( $wagePerHr * $perDayHrs ))

CheckAttendance=$(( RANDOM%3 ))

if [ $CheckAttendance -eq 1 ]
then
	echo "Employee is Present and works Full Time"
	echo "Salary is : $salary"
elif [ $CheckAttendance -eq 2 ]
then
	echo "Employee is Present and works Part Time"
	echo "Salary is : $(( $salary / 2 ))"
else
	echo "Employee is Absent"
fi
