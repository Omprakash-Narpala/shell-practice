#!/bin/bash

PERSON1=$1
PERSON2=$2

echo "$PERSON1:: Hey $PERSON2, How are you?"
echo "$PERSON2:: Hello $PERSON1, I am fine. How are you doing"
echo "$PERSON1: I am fine too. What's up?"
echo "$PERSON2:: Nohting, just going to Mars now, will you come?"
echo "$PERSON1:: Sorry, you carry on! I will come once you come back"


echo "Script Name: $0"
echo "Number of arguments: $#"
echo "All arguments as a single string: $*"
echo "All arguments as individual strings: $@"
echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3:
