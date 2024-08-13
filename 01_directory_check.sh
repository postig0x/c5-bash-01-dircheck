#!/bin/bash

# 01 - Directory Check
# 08.13.24
# check if a directory named `backup` exists in current directory
# if it does not exist, create it

# SOLUTION 1 - mkdir -p creates dir if it does not exist, no error/no-op if it does
# mkdir -p backup

# SOLUTION 2 - if statement
# check if backup directory does not exist
if ! [[ -d "backup" ]]
then
  mkdir backup # create directory
else
  echo "backup directory exists" # feedback for existing directory
fi
