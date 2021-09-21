#!/bin/bash
# A simple script

if [ $# != 1 ]
then
  echo "error: wrong number of arguments"
  exit 1
fi

if [ ! -f "$1" ]
then
  echo "error: file does not exist"
  exit 1
fi

echo "|Area|Doses Administered|"
echo "| :--------- | --------: |"

 grep 'All' $1 | cut -d "," -f2,10 | sort -t "," -k2 -nr | head -10 | sed s/","/"|"/ | sed s/^/"|"/ | sed s/$/"|"/

exit 0
