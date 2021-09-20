#!/bin/bash
# A simple script

echo "|Area|Doses Administered|"
echo "| :--------- | --------: |"

grep 'All' $1 | cut -d "," -f2,10 | sort -t "," -k2 -nr | head -10 | sed s/","/"|"/ | sed s/^/"|"/ | sed s/$/"|"/

exit 0
