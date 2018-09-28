#!/bin/bash

#!!! : This is file n°2, first you must execute file N°1(launchScript) and be on your VM to run this file.
sudo apt update
sudo apt install apache2 -y
sudo apt install php7.0 -y
echo "add user? [y/n]"
read ynAnswer
if [[ $ynAnswer == "y"  ]]; then
echo "user name? :"
read userName
sudo adduser "$userName"
ls
else
  echo "Good-bye, have fun!"
fi
