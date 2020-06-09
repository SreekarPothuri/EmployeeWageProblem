#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

wagePerHr=20
perDayHrs=8
NumOfWorkingDaysPermonth=20
SalaryPerDay=0
TotalSalary=0

for(( i=0; i<=20; i++ ))
do
	CheckAttendance=$(( RANDOM%3 ))

	case $CheckAttendance in
		1)
			echo "Employee is Present and works Full Time"
			SalaryPerDay=$(( $wagePerHr * $perDayHrs ))
			echo "Salary is : $SalaryPerDay"
			;;
		2)
			echo "Employee is Present and works Part Time"
			SalaryPerDay=$(( $wagePerHr * $perDayHrs / 2 ))
			echo "Salary is : $SalaryPerDay"
			;;
		0)
			echo "Employee is Absent"
			SalaryPerDay=0
			;;
	esac

	TotalSalary=$(( $TotalSalary + $SalaryPerDay ))

	echo $TotalSalary

done

echo "Employee wage for a month is : $TotalSalary"
