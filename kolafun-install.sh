#!/bin/sh
SITE_NAME=kolafun
SITE_PATH=/home/node/kolafun/
BUILD_FOLDER_PREFIX=b
BUILD_BRANCH=master
BUILD_NUMBER=172229581
SITE_WEB_FOLDER=web
SITE_SCRIPT_BOOTSTRAP=$SITE_PATH$BUILD_FOLDER_PREFIX-$BUILD_BRANCH-$BUILD_NUMBER/server.js

echo "Stopping site: $SITE_NAME..."
pm2 stop $SITE_NAME
echo "Stopped site: $SITE_NAME."

echo "Removing site: $SITE_NAME..."
pm2 delete $SITE_NAME
echo "Removed site: $SITE_NAME."

echo "Starting site: \"$SITE_NAME\" on $SITE_SCRIPT_BOOTSTRAP ..."
pm2 start $SITE_SCRIPT_BOOTSTRAP --name $SITE_NAME
echo "Started site: \"$SITE_NAME\""

echo "DONE."
