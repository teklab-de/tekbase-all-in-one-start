#!/bin/sh

# TekBase - Server Control Panel
# Copyright 2005-2018 TekLab
# Christian Frankenstein
# Website: https://teklab.de
# Email: service@teklab.de

VAR_A=$1

DATE=$(date +"%Y.%m.%d %H:%M:%S")
LOGFILE=$(date +"%Y-%m-%d")
LOGDIR="logs"
DATADIR=`pwd`

if [ -d "games/$VAR_A" ]; then
	$DATADIR/games/$VAR_A/start.sh $DATADIR "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" 
fi

exit 0