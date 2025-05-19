#!/bin/bash

# Usage: ./get_next.bash folder

if [[ $1 == "" ]]; then
    echo "Usage: ./get_next.bash folder"
    exit 1
fi

file=`ls -t $1 | tail -n 1`;
if [[ "$file" != "" ]]; then
    newfile="_$file"
    mv "$1/$file" "$1/$newfile"
    echo `realpath "$1/$newfile"`
    exit 0
else
    exit 1
fi