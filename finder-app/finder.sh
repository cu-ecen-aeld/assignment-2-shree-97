#!/bin/bash

if [ $# -lt 2 ]; then
   echo "Error: Missing some argument."
   exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
   echo "Error: '$filesdir' does not exist."
   exit 1
fi

#X=$(find "$filesdir" -type d | wc -l)
X=$(grep -r "$searchstr" "$filesdir" | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"
