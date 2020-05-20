#!/bin/bash -x


Part_Time=1; 
Full_Time=2; 
total_Salary=0;
empperhour=20;
numberofworkingDays=20;

for (( day=1; day<=$numberofworkingDays; day++ ))
do
  empCheck=$((RANDOM%3));
     case $empCheck in 
	$Full_Time)
             emphrs=8
		;;
	$Part_Time)
	     emphrs=4
		;;
	*)
	emphrs=0
		;;

     esac

      salary=$(($emphrs*$empperhour));
      totalsalary=$(($totalsalary+$salary))
done
echo $totalsalary
