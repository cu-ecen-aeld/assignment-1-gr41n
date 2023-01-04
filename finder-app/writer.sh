#!/bin/sh
# author: me

writefile=$1
writestr=$2

if [ $# -lt 2 ]
        then echo "noope, need more args"
        exit 1

else
        dir=$(dirname $writefile)
        file=$(basename $writefile)
        mkdir -p $dir
        touch $writefile
        echo "$writestr" > $writefile

        if [ ! -f $writefile ]
                then echo "error creating file"
                exit 1
        fi
fi

