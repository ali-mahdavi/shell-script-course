#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see? " QT_LINES
LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  # Just works with ./ (bash) execution does not work with sh 
  ((LINE_NUM++))
  if [ $LINE_NUM -gt $QT_LINES ]
  then
    break
  fi
done < /etc/passwd