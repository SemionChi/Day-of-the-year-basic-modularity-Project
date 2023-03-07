#! /bin/bash
#input : var year

#if the year number isn't divisible by four, it's a common year;
#  otherwise, if the year number isn't divisible by 100, it's a leap year;
#  otherwise, if the year number isn't divisible by 400, it's a common year;
#  otherwise, it's a leap year.

function is_leap() {
#read -p "enter a year " year
<<<<<<< HEAD
if (( $1 % 4 != 0 )); then
        echo "it's a common year"
=======
if [ $1 -lt 0 ] ||! [[ $1 =~ ^[0-9]+$ ]]; then
        echo "enter a valid year"
elif (( $1 % 4 != 0 )); then
        echo "common year"
>>>>>>> 73c769edf5a29554a3fb1272cb2bcb8384a9741b
elif (( $1 % 100 != 0 )); then
        echo "leap year"
elif (( $1 % 400 != 0 )); then
        echo "common year"
else
        echo "leap year"
fi
}
is_leap $1

