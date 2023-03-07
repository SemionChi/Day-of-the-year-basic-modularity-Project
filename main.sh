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

function is_leap() {
#read -p "enter a year " year
if (( $1 % 4 != 0 )); then
        #echo "it's a common year"
        return 1
elif (( $1 % 4 != 0 )); then
        #echo "common year"
        return 1
elif (( $1 % 100 != 0 )); then
        #echo "leap year"
        return 0
elif (( $1 % 400 != 0 )); then
        #echo "common year"
        return 1
else
        #echo "leap year"
        return 0
fi
}
is_leap $1


source 3f.sh

check_months_daysum(){
case $2 in
2)
if is_leap $1;
then
echo "29"
else echo "28"
fi
;;
4|6|9|11) return 30 ;;
1|3|5|7|8|12) return 31 ;;
esac
}
check_months_daysum $2 $1


