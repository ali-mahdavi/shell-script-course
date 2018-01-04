#!/bin/bash

rename_files_by_user () {
    echo "Please enter a file extension: "
    read FILE_EXTENSION
    # OR read -p "Please enter a file extension: " FILE_EXTENSION

    echo "Please enter a file prefix:  (Press ENTER for $(date -I))."
    read FILE_PREFIX
    # OR read -p "Please enter a file prefix:  (Press ENTER for $(date -I))." FILE_PREFIX

    if [ -z $FILE_PREFIX ]
    then
      FILE_PREFIX=$(date -I)
    fi

    for FILE_NAME in $(ls *.${FILE_EXTENSION})
    do
      echo "Renaming ${FILE_NAME} to ${FILE_PREFIX}-${FILE_NAME}"
      mv ${FILE_NAME} ${FILE_PREFIX}-${FILE_NAME}
    done
}

rename_files_by_user