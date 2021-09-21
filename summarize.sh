#!/bin/bash
# a simple script

for var in "$@"
do
  if [[ $var =~ .*\.(sh|h|c) ]] && [ -r "$var" ]
  then
    bname=$(basename -- "$var")
    echo "## $bname"
    if [[ $var == *.sh ]]
    then
      echo '```bash' 
      sed -e '/^$/,$d' $var | sed '/^#!/d'
      echo '```'
    fi
    if [[ $var =~ .*\.(h|c) ]]
    then
      echo '```c'
      sed -e '/^$/,$d' $var
      echo '```'
    fi
  elif [ ! -f "$var" ]
  then
    echo "file does not exist" 1>&2
  fi
done

exit 0
