#!/bin/sh

# TekBase - Server Control Panel
# Copyright 2005-2018 TekLab
# Christian Frankenstein
# Website: https://teklab.de
# Email: service@teklab.de

# Game: minecraft

VAR_A=$1
VAR_B=$2
VAR_C=$3
VAR_D=$4
VAR_E=$5
VAR_F=$6
VAR_G=$7
VAR_H=$8
VAR_I=$9

DATE=$(date +"%Y.%m.%d %H:%M:%S")
LOGFILE=$(date +"%Y-%m-%d")
LOGDIR="logs"
DATADIR=`pwd`

function sededit() {
	SETFILE=$1
	SETVAR=$2
	SETVALUE=$3
	SETSEP=$4
	SETQUOTE=$5

	grep "${SETVAR}${SETSEP}" ${SETFILE} &>/dev/null
	if [[ $? -eq 0 ]]; then
		sed -i ${SETFILE} -e "s/^\(${SETVAR}${SETSEP}\).*$/\1${SETQUOTE}${SETVALUE}${SETQUOTE}/"
	else
		echo "${SETVAR}${SETSEP}${SETQUOTE}${SETVALUE}${SETQUOTE}" >> ${SETFILE}
	fi
}


if [ "$VAR_A" = "minecraft" ]; then
	# start.sh minecraft gsip gsport gsplayer gsram "minecraft_server"

	# The fourth parameter is the separator. "=" or " "
	# The fifth parameter is the quote. "\"" or "'" or ""
	sededit "server.properties" "enable-query" "true" "=" ""
	sededit "server.properties" "server-ip" "${VAR_B}" "=" ""
	sededit "server.properties" "server-port" "${VAR_C}" "=" ""
	sededit "server.properties" "max-players" "${VAR_D}" "=" ""
	# You can add more changes here... VAR_E - VAR_I
	echo "eula=true" > eula.txt
	java -Xmx"${VAR_E}"M -Xms"${VAR_E}"M -jar ${VAR_F}.jar nogui ${VAR_B} ${VAR_C}
fi

exit 0