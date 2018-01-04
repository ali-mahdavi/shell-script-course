#!/bin/bash

file_count () {
    FILE_COUNT=$(ls $1 | wc -w)
    echo "$1: \n     ${FILE_COUNT}"
}

file_count /etc
file_count /var
file_count /usr/bin