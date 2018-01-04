#!/bin/bash

# $RANDOM just work with ./ command, it does not work with sh

my_logger () {
    local MESSAGE=$@
    echo "$MESSAGE"
    logger -i -t randomly -p user.info "$MESSAGE"
}

my_logger "Random number: $RANDOM"
my_logger "Random number: $RANDOM"
my_logger "Random number: $RANDOM"
