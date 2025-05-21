#!/bib/bash

#write a program if given number is less than 10 or not

NUMBER=$1

if [ $NUMBER -lt 10 ]
then
    echo "Given number $NUMBER is less than 10"
else
    echo "Given number $NUMBER is greater than 10"
fi
