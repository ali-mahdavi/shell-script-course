#!/bin/bash

# shopt -s nullglob

for IMAGENAME in $(ls *.jpg)
do
    echo ${IMAGENAME}
    mv $IMAGENAME $(date -I)-${IMAGENAME}
done

# shopt -u nullglob # disable
