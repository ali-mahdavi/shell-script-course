#!/bin/bash

PARAMETERS=$1
case $PARAMETERS in 
    start)
        /tmp/sleep-walking-server &
        exit 0
        ;;
    stop)
        kill $(cat /tmp/sleep-walking-server.pid)
        exit 0
        ;;
    *)
        echo "Usage sleep-walking start|stop"
        exit 1
        ;;
esac

