#!/bin/sh

#!/bin/bash
pm2 describe kolafun > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
  #pm2 start ./deploy/development.yml
	echo "RUNNING..."
else
  #pm2 restart appname
	echo "NOT RUNNING"
fi;
