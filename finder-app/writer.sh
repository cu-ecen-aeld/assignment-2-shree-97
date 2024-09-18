#!/bin/bash

if [ $# -lt 2 ]; then
   echo "Error: Missing some argument."
   exit 1
fi

writefile=$1
writestr=$2

if [ -f "$writefile" ]; then
   echo "$writestr" > "$writefile"
else
   touch "$writefile"
   if [ $? -eq 0 ]; then
      echo "$writestr" > "$writefile"
   else
      echo "Error: $writefile could not be created"
      exit 1
   fi
fi
