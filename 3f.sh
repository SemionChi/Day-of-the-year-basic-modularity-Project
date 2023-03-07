#! /bin/bash
#input : var year

#if the year number isn't divisible by four, it's a common year;
#  otherwise, if the year number isn't divisible by 100, it's a leap year;
#  otherwise, if the year number isn't divisible by 400, it's a common year;
#  otherwise, it's a leap year.

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
#is_leap $1

