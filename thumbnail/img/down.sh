#!/bin/bash
i=1
# Read the file list and download each file
while read file; do
  # Extract the file name from the URL
  file_name=$(echo "$i.jpg" | sed 's#.*/##')
  curl -o "$file_name" "$file"
  i=$((i+1))
done < list.txt
