#!/bin/bash

# check if a directory named `backup` exists in current directory
# if it does not exist, create it

# no need to check with -p flag?
mkdir -p backup

# with an if statement
if ! [[ -d "backup" ]]
then
  mkdir backup
else
  echo "backup directory exists"
fi
