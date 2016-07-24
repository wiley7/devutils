#!/bin/bash

#  filemodifycheck.sh
#  2014-11-14
#
#  Developed by yewei <yewei@playcrab.com>


# check PHP files
FILES=$(git status --porcelain | grep php)
for f in $FILES
do
    if [ -e $f ];then
        php -l $f
    fi
done
