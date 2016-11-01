#!/bin/sh
pm2 describe kolafun > /dev/null
RUNNING=$?

echo $RUNNING

if [ "${RUNNING}" -ne 0 ]; then
  #pm2 start ./deploy/development.yml
	echo "RUNNING..."
else
  #pm2 restart appname
	echo "NOT RUNNING"
fi;
