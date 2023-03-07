#!/bin/bash
validate(){
	year=$1
	month=$2
	days=$3
	if [[ $year -lt 0 ]];then
		return 1
	elif [[ $month -le 0 || $month -gt 12 ]];then
		return 1
	elif [[ $days -le 0 || $days -gt 31 ]];then
		return 1
	else
		return 0
	fi

}

validate $1 $2 $3





