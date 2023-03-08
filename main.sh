#!/bin/bash

source fun1.sh #First function
source Daysinamonth.sh #Second function
source 3f.sh #Third function
source inputval.sh #Input validation

read -p "Please enter a date by this format: Year Month Day : " year month day
if  validate $year $month $day ;then
	echo "please select your desired option"
        function=("Days till entered date" "How many days per month" "Is it leap year?" "Exit")
        select i in "${function[@]}" ; do
	case $i in 

		"Days till entered date") get_days_num $year $month $day ;;
		"How many days per month") check_months_daysum $year $month ;;
		"Is it leap year?")
			if is_leap $year; then
				echo "$year is a leap year"
			else
				echo "$year is not a leap year"
			fi
			;;
		"Exit") echo "You are leaving too soon :( bye" 
		exit ;;
	esac
	done
else
	echo "Invalid date values"
fi




