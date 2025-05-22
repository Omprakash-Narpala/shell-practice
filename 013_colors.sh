#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
    then
        echo -e "\e[31mError: Please run the script with root access\e[0m"
        exit 1
    else
        echo -e "\e[34You are running with root access\e[0m"
fi

VALIDATE_PACKAGE ()         #Defined function
{
    if [ $1 -eq 0 ]
        then
            echo -e "\e[32m$2 Installation is ... SUCCESS\e[0m"
        else
            echo -e "\e[31m$2 Installation is ... FAILURE\e[0m"
            exit 1
    fi
}

dnf list installed mysql

if [ $? -ne 0 ]
    then
        echo -e "\e[36mMySQL is not installed.. going to install it\e[0m"
        dnf install mysql -y
        VALIDATE_PACKAGE $? "MySQL"
    else
        echo -e "\e[34mMySQL is already installed. Nothing to do.\e[0m"
fi

dnf list installed python3

if [ $? -ne 0 ]
    then
        echo -e "\e[36mPython3 is not installed.. going to install it\e[0m"
        dnf install python3 -y
        VALIDATE_PACKAGE $? "Python3"
    else
        echo -e "\e[34mPython3 is already installed. Nothing to do.\e[0m"
fi

dnf list installed nginx

if [ $? -ne 0 ]
    then
        echo -e "\e[36mNginx is not installed.. going to install it\e[0m"
        dnf install nginx -y
        VALIDATE_PACKAGE $? "Nginix"
    else
        echo -e "\e[34mNginx is already installed. Nothing to do.\e[0m"
fi