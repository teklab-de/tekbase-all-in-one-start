#!/bin/sh

DATADIR=$1

while test $# -gt 0; do
 case "$2" in
 "-IP")
    IP="$2"
    shift;;
 "-PORT")
    PORT="$2"
    shift ;;
 "-PLAYER")
    PLAYER="$2"
    shift ;;
 "-RAM")
    RAM="$2"
    shift ;;
 esac
 shift
done

grep server-ip= server.properties &>/dev/null
if [[ $? -eq 0 ]]; then
  sed -i server.properties -e "s/^\(server-ip=\).*$/\1${IP}/"
else
  echo "server-ip=${IP}" >> server.properties
fi

grep server-port= server.properties &>/dev/null
if [[ $? -eq 0 ]]; then
  sed -i server.properties -e "s/^\(server-port=\).*$/\1${PORT}/"
else
  echo "server-port=${PORT}" >> server.properties
fi

grep max-players= server.properties &>/dev/null
if [[ $? -eq 0 ]]; then
  sed -i server.properties -e "s/^\(max-players=\).*$/\1${PLAYER}/"
else
  echo "max-players=${PLAYER}" >> server.properties
fi

cd $DATADIR
java -Xmx"$RAM"M -Xms"$RAM"M -jar minecraft_server.jar nogui $IP $PORT

exit 0