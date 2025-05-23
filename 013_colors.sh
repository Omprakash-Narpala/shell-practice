#!/bin/bash
USERID=$(id -u)
R="\e[31m"
B="\e[34m"
G="\e[32m"
M="\e[36m"
N="\e[0m"

if [ $USERID -ne 0 ]
    then
        echo -e "$R Error: Please run the script with root access $N"
        exit 1
    else
        echo -e "$B You are running with root access $N"
fi

VALIDATE_PACKAGE ()         #Defined function
{
    if [ $1 -eq 0 ]
        then
            echo -e "$G $2 Installation is ... SUCCESS $N"
        else
            echo -e "$R $2 Installation is ... FAILURE $N"
            exit 1
    fi
}

dnf list installed mysql

if [ $? -ne 0 ]
    then
        echo -e "$M MySQL is not installed.. going to install it $N"
        dnf install mysql -y
        VALIDATE_PACKAGE $? "MySQL"
    else
        echo -e "$B MySQL is already installed. Nothing to do. $N"
fi

dnf list installed python3

if [ $? -ne 0 ]
    then
        echo -e "$M Python3 is not installed.. going to install it $N"
        dnf install python3 -y
        VALIDATE_PACKAGE $? "Python3"
    else
        echo -e "$B Python3 is already installed. Nothing to do. $N"
fi

dnf list installed nginx

if [ $? -ne 0 ]
    then
        echo -e "$M Nginx is not installed.. going to install it $N"
        dnf install nginx -y
        VALIDATE_PACKAGE $? "Nginix"
    else
        echo -e "$B Nginx is already installed. Nothing to do. $N"
fi