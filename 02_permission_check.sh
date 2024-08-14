#!/bin/bash

# 02 - Permission Check
# Check if a file is readable, writable, and executable.

echo "Enter path to file:"
read filepath

# $1 is an argument so no need to use `read`!
# echo $1

# check if path is a file/exists
if ! [[ -f $filepath ]]
then
  echo "$filepath does not exist"
  exit 1
fi

# check if file is readable
if [[ -r $filepath ]]
then
  echo "$filepath is readable"
else
  echo "$filepath is not readable"
fi

# check if file is writable
if [[ -w $filepath ]]
then
  echo "$filepath is writable"
else
  echo "$filepath is not writable"
fi

# check if file is executable
if [[ -x $filepath ]]
then
  echo "$filepath is executable"
else
  echo "$filepath is not executable"
fi

