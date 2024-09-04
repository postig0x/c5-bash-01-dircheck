#!/bin/bash

# take filename as argument and check if it exists
# if it exists, print its size

# set filename as variable
filename=$1

echo "Checking if '$filename' exists..."

# check if the file exists
if ! [[ -f '$filename' ]]
then
  echo "$filename not found"
  exit 1
fi

# if we are here, then file exists
echo "File '$filename' exists"
echo "Size of '$filename': $(du -sh "$filename" | cut -f1)"

