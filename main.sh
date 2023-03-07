#!/bin/bash

source fun1.sh #First function
source Daysinamonth.sh #Second function
source 3f.sh #Third function
source inputval.sh #Input validation

read -p "Please enter a date by this format: Year Month Day : " year month day
if  validate $year $month $day ;then
	read -p "Select func num 1 2 3 : " selected
	case $selected in 

		1)
			get_days_num $year $month $day
			;;
		2)
			check_months_daysum $year $month
			;;
		3)
			if is_leap $year; then
				echo "$year is a leap year"
			else
				echo "$year is not a leap year"
			fi
			;;
	esac
else
	echo "Invalid date values"
fi




