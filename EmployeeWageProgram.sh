#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

CheckAttendance=$(( RANDOM%2 ))

if [ $checkAttendance -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
