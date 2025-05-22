# #!/bin/bash
# USERID=$(id -u)
# if [ $USERID -ne 0 ]
#     then
#         echo "Error: Please run the script with root access"
#         exit 1
#     else
#         echo "You are running with root access"
# fi

# VALIDATE_PACKAGE ()         #Defined function
# {
#     if [ $1 -eq 0 ]
#         then
#             echo "$2 Installation is ... SUCCESS"
#         else
#             echo "$2 Installation is ... FAILURE"
#             exit 1
#     fi
# }

# dnf list installed mysql

# if [ $? -ne 0 ]
#     then
#         echo "MySQL is not installed.. going to install it"
#         dnf install mysql -y
#         VALIDATE_PACKAGE $? "MySQL"
#     else
#         echo "MySQL is already installed. Nothing to do."
# fi

# dnf list installed python

# if [ $? -ne 0 ]
#     then
#         echo "Python is not installed.. going to install it"
#         dnf install python -y
#         VALIDATE_PACKAGE $? "Python"
#     else
#         echo "Python is already installed. Nothing to do."
# fi

# dnf list installed nginx

# if [ $? -ne 0 ]
#     then
#         echo "Nginx is not installed.. going to install it"
#         dnf install nginx -y
#         VALIDATE_PACKAGE $? "Nginix"
#     else
#         echo "Nginx is already installed. Nothing to do."
# fi




#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
    then
        echo "Please run the script with root access"
        exit 1
    else
        echo "You are running with root access"
fi

VALIDATE_PACKAGES (){

dnf list installed $1

if [ $2 -eq 0 ]
    then
        echo "$1 is already installed. Nothing to do."
    else
        echo "$1 is not installed.. going to install"
        dnf install mysql -y
        if [ $2 -eq 0 ]
            then
                echo "Installing $1 is... SUCCESS"
            else
                echo "Installing $1 is... FAILURE"
                exit 1
        fi 
fi

}

VALIDATE_PACKAGES "mysql" $?
VALIDATE_PACKAGES "python" $?
VALIDATE_PACKAGES "nginx" $?


# dnf list installed mysql

# if [ $? -eq 0 ]
#     then
#         echo "MySQL is already installed. Nothing to do."
#     else
#         echo "MySQL is not installed.. going to install"
#         dnf install mysql -y
#         if [ $? -eq 0 ]
#             then
#                 echo "Installing MySQL is... SUCCESS"
#             else
#                 echo "Installing MYSQL is... FAILURE"
#                 exit 1
#         fi 
# fi

# dnf list installed python

# if [ $? -eq 0 ]
#     then
#         echo "Python is already installed. Nothing to do."
#     else
#         echo "Python is not installed.. going to install"
#         dnf install python -y
#         if [ $? -eq 0 ]
#             then
#                 echo "Installing Python is... SUCCESS"
#             else
#                 echo "Installing Python is... FAILURE"
#                 exit 1
#         fi 
# fi

# dnf list installed nginx

# if [ $? -eq 0 ]
#     then
#         echo "nginx is already installed. Nothing to do."
#     else
#         echo "nginx is not installed.. going to install"
#         dnf install nginx -y
#         if [ $? -eq 0 ]
#             then
#                 echo "Installing nginx is... SUCCESS"
#             else
#                 echo "Installing nginx is... FAILURE"
#                 exit 1
#         fi 
# fi