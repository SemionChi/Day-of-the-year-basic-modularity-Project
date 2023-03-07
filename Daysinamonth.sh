#! /bin/bash
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
4|6|9|11) echo 30 ;; 
1|3|5|7|8|12) echo 31 ;; 
esac
}
check_months_daysum $2 $1
