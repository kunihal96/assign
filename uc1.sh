#!/bin/bash -x


Part_Time=1; 
Full_Time=2; 
total_Salary=0;
empperhour=20;
numberofworkingDays=20;

echo "using function"
function workhrs() {

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
 return $emphrs
}

echo "using case switch "
for (( day=1; day<=$numberofworkingDays; day++ ))
do
  empCheck=$((RANDOM%3));
  workhrs $empcheck
  totalworkinghours=$(($totalworkinghours+$emphrs));
  dailywage=$(($totalworkinghours+$emphrs));
   if (($totalworkinghours > 100))
     then
      echo "working hours exceeding 100"
     break;
   fi
      salary=$(($emphrs*$empperhour));
      totalsalary=$(($totalsalary+$salary))

done
echo "total salary is: "$totalsalary
echo "total working hour :"$totalworkinghours
