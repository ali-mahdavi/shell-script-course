#!/bin/bash
LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  # Just works with ./ (bash) execution does not work with sh 
  ((LINE_NUM++))
done < /etc/passwd