#!/bin/bash

while true
do
  echo ""
  echo "OPTIONS: "
  echo "1) Disk usage"
  echo "2) Uptime"
  echo "3) Logged users"
  echo "q) Exit"
  read -p "What is your choice: " CHOICE
  echo ""
  case $CHOICE in
    1)
      echo `df`
      ;;
    2)
      echo `uptime`
      ;;
    3)
      echo `who`
      ;;
    q)
      echo "Bye!"
      break
      ;;
    *)
      echo "Option invalid!"
  esac
done