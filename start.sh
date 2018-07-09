#!/bin/bash

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

function gen_passwd { 
	PWCHARS=$1
	[ "$PWCHARS" = "" ] && PWCHARS=16
	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${PWCHARS} | xargs
}

function sed_edit {
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


if [ "$VAR_A" = "ark" ]; then
	# start.sh ark gsport gsquerport gsplayer "TheIsland"
	# Adminpanel -> game list -> ark -> start folder -> "game" or "" but not "ShooterGame/Binaries/Linux" 
	SESSION_NAME=$(cat ShooterGame/Saved/Config/LinuxServer/GameUserSettings.ini | grep -i "SessionName" | awk -F "=" '{print $2}')
	SERVER_PASSWORD=$(cat ShooterGame/Saved/Config/LinuxServer/GameUserSettings.ini | grep -i "ServerPassword" | awk -F "=" '{print $2}')
	ADMIN_PASSWORD=$(cat ShooterGame/Saved/Config/LinuxServer/GameUserSettings.ini | grep -i "ServerAdminPassword" | awk -F "=" '{print $2}')
	if [ "${SESSION_NAME}" = "" ]; then
		SESSION_NAME="Ark Server"
	fi
	if [ "${SERVER_PASSWORD}" = "" ]; then
		SERVER_PASSWORD="1q2w3e4r5t"
	fi
	if [ "${ADMIN_PASSWORD}" = "" ]; then
		ADMIN_PASSWORD=$(gen_passwd 8)
	fi
	cd ShooterGame/Binaries/Linux/
	./ShooterGameServer ${VAR_E}?listen?SessionName=${SESSION_NAME}?ServerPassword=${SERVER_PASSWORD}?ServerAdminPassword=${ADMIN_PASSWORD}?Port=${VAR_B}?QueryPort=${VAR_C}?MaxPlayers=${VAR_D} -server -log
fi

if [ "$VAR_A" = "minecraft" ]; then
	# start.sh minecraft gsip gsport gsplayer gsram "minecraft_server"
	# The fourth parameter is the separator. "=" or " "
	# The fifth parameter is the quote. "\"" or "'" or ""
	sed_edit "server.properties" "enable-query" "true" "=" ""
	sed_edit "server.properties" "server-ip" "${VAR_B}" "=" ""
	sed_edit "server.properties" "server-port" "${VAR_C}" "=" ""
	sed_edit "server.properties" "max-players" "${VAR_D}" "=" ""
	# You can add more changes here... VAR_E - VAR_I
	echo "eula=true" > eula.txt
	if [ "${VAR_F}" = "" ]; then
		VAR_F="minecraft_server"
	fi
	java -Xmx"${VAR_E}"M -Xms"${VAR_E}"M -jar ${VAR_F}.jar nogui ${VAR_B} ${VAR_C}
fi

exit 0