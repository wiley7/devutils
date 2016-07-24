#!/bin/bash +x
filter=$1
count=$2

if test "$count" = "" ;then
    count=3
fi

git for-each-ref --sort='-taggerdate' --format='%(tag)' refs/tags | grep -v '^$' -m $count | while read TAG ; do
    echo
    if [ $NEXT ];then
        echo '       '
        echo *$NEXT*
        echo '---'
    else
        echo '       '
        echo *CURRENT*
        echo '---'
    fi

    if test "$filter" = "filter" ;then
        GIT_PAGER=cat git log --no-merges --date=short  --pretty=format:'- %ad (%an) %s' $TAG..$NEXT |grep -v "ig:"
    else
        GIT_PAGER=cat git log --no-merges --date=short  --pretty=format:'- %ad (%an) %s' $TAG..$NEXT
    fi
    NEXT=$TAG
done
echo "DONE."
