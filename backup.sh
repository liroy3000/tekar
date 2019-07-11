#!/bin/bash

CURDATE=`date +%d%m%Y`
# $1 - source
# $2 - target
if ! [ -d $2 ]; then
	mkdir $2
fi
tar czf $2/$CURDATE.tar.gz $1

find $2 -type f -ctime +14 -delete