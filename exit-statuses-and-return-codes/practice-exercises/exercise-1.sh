#!/bin/bash

if [ -f $1 ]
then
    echo "Is a file"
    exit 0
elif [ -d $1 ]
then
    echo "Is a directory"
    exit 1
else
    echo "Is a other type of file"
    exit 2
fi