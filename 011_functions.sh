#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
    then
        echo "Error: Please run the script with root access"
        exit 1
    else
        echo "You are running with root access"
fi

VALIDATE_PACKAGE ()
{
    if [ $1 -eq 0 ]
        then
            echo "$2 Installation is ... SUCCESS"
        else
            echo "$2 Installation is ... FAILURE"
            exit 1
    fi
}

dnf list installed mysql

if [ $? -ne 0 ]
    then
        echo "MySQL is not installed.. going to install it"
        dnf install mysql -y
        VALIDATE_PACKAGE $? "MySQL"
    else
        echo "MySQL is already installed. Nothing to do."
fi

dnf list installed python

if [ $? -ne 0 ]
    then
        echo "Python is not installed.. going to install it"
        dnf install python -y
        VALIDATE_PACKAGE $? "Python"
    else
        echo "Python is already installed. Nothing to do."
fi

dnf list installed nginx

if [ $? -ne 0 ]
    then
        echo "Nginx is not installed.. going to install it"
        dnf install nginx -y
        VALIDATE_PACKAGE $? "Nginix"
    else
        echo "Nginx is already installed. Nothing to do."
fi