#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

wagePerHr=20
perDayHrs=8
max_work_Hrs=100
max_work_days=20

SalaryPerDay=0
TotalSalary=0
WorkingHrsperDay=0
TotalWorkingHrs=0

for(( days=0; days<=$max_work_days; days++ ))
do
	if [ $TotalWorkingHrs -le 100 ]
	then
		CheckAttendance=$(( RANDOM%3 ))

		case $CheckAttendance in
			1)
				echo "Employee is Present and works Full Time"
				WorkingHrsperDay=8
				SalaryPerDay=$(( $wagePerHr * $perDayHrs ))
				echo "Salary for today is : $SalaryPerDay"
				;;
			2)
				echo "Employee is Present and works Part Time"
				WorkingHrsperDay=4
				SalaryPerDay=$(( $wagePerHr * $perDayHrs / 2 ))
				echo "Salary for today is : $SalaryPerDay"
				;;
			0)
				echo "Employee is Absent"
				WorkingHrsperDay=0
				SalaryPerDay=0
				;;
		esac

		TotalSalary=$(( $TotalSalary + $SalaryPerDay ))
		echo "Total Salary till now is : $TotalSalary"

		TotalWorkingHrs=$(( $TotalWorkingHrs + $WorkingHrsperDay ))
		echo "Total Working Hours : $TotalWorkingHrs"
		printf "\n"
	fi
done

echo "Employee wage for a month is : $TotalSalary"

