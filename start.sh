#!/bin/sh

# TekBase - Server Control Panel
# Copyright 2005-2018 TekLab
# Christian Frankenstein
# Website: https://teklab.de
# Email: service@teklab.de

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

	grep "${SETVAR}=" ${SETFILE} &>/dev/null
	if [[ $? -eq 0 ]]; then
		sed -i ${SETFILE} -e "s/^\(${SETVAR}${SETSEP}\).*$/\1${SETQUOTE}${SETVALUE}${SETQUOTE}/"
	else
		echo "${SETVAR}=${SETQUOTE}${SETVALUE}${SETQUOTE}" >> ${SETFILE}
	fi
}


if [ "$VAR_A" = "minecraft" ]; then
	# start.sh minecraft gsip gsport gsplayer gsram

	# The fourth parameter is the separator. "=" or " "
	# The fifth parameter is the quote. "\"" or "'" or ""
	equalsign "server.properties" "enable-query" "true" "=" ""
	equalsign "server.properties" "server-ip" "${VAR_B}" "=" ""
	equalsign "server.properties" "server-port" "${VAR_C}" "=" ""
	equalsign "server.properties" "max-players" "${VAR_D}" "=" ""
	# You can add more changes here... VAR_E - VAR_I
	echo "eula=true" > eula.txt
	java -Xmx"${VAR_E}"M -Xms"${VAR_E}"M -jar minecraft_server.jar nogui ${VAR_B} ${VAR_C}
fi

# or a little more flexible
#
#if [ "$VAR_A" = "minecraft" ]; then
#	start.sh minecraft gsip gsport gsplayer gsram "minecraft_server"
#	equalsign "server.properties" "enable-query" "true" "=" ""
#	equalsign "server.properties" "server-ip" "${VAR_B}" "=" ""
#	equalsign "server.properties" "server-port" "${VAR_C}" "=" ""
#	equalsign "server.properties" "max-players" "${VAR_D}" "=" ""
#	echo "eula=true" > eula.txt
#	java -Xmx"${VAR_E}"M -Xms"${VAR_E}"M -jar ${VAR_F}.jar nogui ${VAR_B} ${VAR_C}
#fi

exit 0