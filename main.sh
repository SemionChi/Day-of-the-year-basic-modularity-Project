#!/bin/bash

#First function
#source daysoftheweek.sh #Second function
#Third function
source inputval.sh #Input validation

read -p "Please enter a date by this format: Year Month Day : " year month day
if  validate $year $month $day ;then
	echo "Good"
else
	echo "Bad"
fi




