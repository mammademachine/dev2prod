#!/bin/bash
set -e
if [ -d "$1" ]
  then cd "$1"
  for file_name in $(find . -name 'project_resurs*prod.yaml');
  do
    new_name=$(echo $file_name | sed s/prod/dev/g )
    echo "renaming $file_name to $new_name"
    mv $file_name $new_name
  done
else 
  echo "Directory does not exist or not a directory"
fi

