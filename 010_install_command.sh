#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
    then
        echo "ERROR: Please run this script with root user"
        exit 1
    else
        echo "You are running with root access"
fi

dnf list installed mysql    
#Checking if mysql is already installed or not.
# If not installed $? is 0.
# If installed $? is not zero.

if [ $? -ne 0 ]
    then
        echo "MySQL is not installed...going to install"
        dnf install mysqlwesaewe -y
            if [ $? -eq 0 ]
                then
                    echo "Installing MySQL is intalling.. SUCCESS"
                else
                    echo "Installing MySQL is FAILURE"
                    exit 1
            fi
    else
        echo "MySQL is already installed. Nothing to do."
fi