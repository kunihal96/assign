#!/bin/bash -x

#!/bin/bash -x
empStatus=$(($RANDOM%2))
if [ $empStatus -eq 1 ]
then
echo "Employee is present"
else
   echo  "Employee is absent"
fi
