#!/bin/bash

file_count () {
    local FILE_COUNT=$(ls | wc -w)
    echo "Exist ${FILE_COUNT} files here"
}
file_count