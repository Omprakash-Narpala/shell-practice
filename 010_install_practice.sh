#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
    then
        echo "Please run the script with root access"
        exit 1
    else
        echo "You are running with root access"
fi

dnf list installed mysql

if [ $? -eq 0 ]
    then
        echo "MySQL is already installed. Nothing to do."
    else
        dnf install mysqlewfwerwedwe -y
        if [ $? -eq 0 ]
            then
                echo "Installing MySQL is... SUCCESS"
            else
                echo "Installing MYSQL is... FAILURE"
                exit 1
        fi 
fi