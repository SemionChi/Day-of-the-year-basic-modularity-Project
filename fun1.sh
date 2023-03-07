#!/bin/bash
read -p "Enter year, month, day values: " input

# Split the input into individual words using the IFS variable
IFS=' ' read -ra args <<< "$input"



function get_days_num {
  year=${args[0]}
month=${args[1]}
day=${args[2]}

  if [[ $year -lt 1 || $month -lt 1 || $month -gt 12 || $day -lt 1 ]]; then
    echo "None"
    return
  fi

  days_in_month=(31 28 31 30 31 30 31 31 30 31 30 31)

  if [[ $(is_leap_year $year) == "true" ]]; then
    days_in_month[1]=29
  fi

  if [[ $day -gt ${days_in_month[$((month-1))]} ]]; then
    echo "None"
    return
  fi

  get_days_num=0
  for (( i=0; i<$((month-1)); i++ )); do
    get_days_num=$((get_days_num+${days_in_month[$i]}))
  done
  get_days_num=$((get_days_num+day))

  echo $get_days_num
}
#help function
function is_leap_year {
  year=$1

  if [[ $((year % 4)) -ne 0 ]]; then
    echo "false"
  elif [[ $((year % 100)) -ne 0 ]]; then
    echo "true"
  elif [[ $((year % 400)) -ne 0 ]]; then
    echo "false"
  else
    echo "true"
  fi
}

#output
get_days_num $year $month $day

