#!/bin/sh
# author: me

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
        then echo "noope, need more args"
        exit 1

        if [ ! -d $filesdir ]
                then echo "$filesdir is not a directory"
                exit 1
        fi

else
        filecount=$(ls -1q $filesdir/* | wc -l)
        strcount=$(grep $searchstr $filesdir/* | wc -l)

fi

echo "The number of files are $filecount and the number of matching lines are $strcount"

