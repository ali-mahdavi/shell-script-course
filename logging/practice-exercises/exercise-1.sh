#!/bin/bash

# $RANDOM just work with ./ command, it does not work with sh

MESSAGE="Random number: $RANDOM"
echo "$MESSAGE"
logger -p user.info "${MESSAGE}"
