#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

wagePerHr=20
perDayHrs=8

salary=$(( $wagePerHr * $perDayHrs ))

CheckAttendance=$(( RANDOM%3 ))

case $CheckAttendance in
	1)
		echo "Employee is Present and works Full Time"
		echo "Salary is : $salary"
		;;
	2)
		echo "Employee is Present and works Part Time"
		echo "Salary is : $(( $salary / 2 ))"
		;;
	*)
		echo "Employee is Absent"
		;;
esac
