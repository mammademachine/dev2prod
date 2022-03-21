#!/bin/bash
set -e
if [ -d "$1" ]
  then cd "$1"
  find . -name 'project_resurs*_dev.yaml' -exec bash -c 'file_name=$(basename "$1") && \
  new_name=$(echo $file_name | sed s/dev\.yaml/prod\.yaml/) && \
  echo "$file_name, $new_name" && \
  mv "$1" "$(echo "$1" | sed s/dev\.yaml/prod\.yaml/)"' bash {} \; 
else 
  echo "Directory does not exist or not a directory"
fi