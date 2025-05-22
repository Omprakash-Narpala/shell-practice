#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
    then
        echo "Error: Please run the script with root access"
        exit 1
    else
        echo "You are running with root access"
fi

dnf list installed mysql

if [ $? -ne 0 ]
    then
        echo "MySQL is not installed.. going to install it"
        dnf install mysql -y
        if [ $? -eq 0 ]
        then
            echo "MySQL Installation is ... SUCCESS"
        else
            echo "MySQL Installation is ... FAILURE"
            exit 1
        fi
    else
        echo "MySQL is already installed. Nothing to do."
fi

dnf list installed python

if [ $? -ne 0 ]
    then
        echo "Python is not installed.. going to install it"
        dnf install python -y
        if [ $? -eq 0 ]
        then
            echo "Python Installation is ... SUCCESS"
        else
            echo "Python Installation is ... FAILURE"
            exit 1
        fi
    else
        echo "Python is already installed. Nothing to do."
fi

dnf list installed nginx

if [ $? -ne 0 ]
    then
        echo "Nginx is not installed.. going to install it"
        dnf install nginx -y
        if [ $? -eq 0 ]
        then
            echo "Nginx Installation is ... SUCCESS"
        else
            echo "Nginx Installation is ... FAILURE"
            exit 1
        fi
    else
        echo "Nginx is already installed. Nothing to do."
fi