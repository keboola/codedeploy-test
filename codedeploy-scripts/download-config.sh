#!/bin/bash

# Usage: error_exit <message>
#
#   Writes <message> to STDERR as a "fatal" and immediately exits the currently running script.
error_exit() {
    local message=$1

    echo "[FATAL] $message" 1>&2
    exit 1
}


if [ "$DEPLOYMENT_GROUP_NAME" == "Production" ]
then
  aws s3 cp s3://codedeploy-test-martin/index.tpl /var/www/$DEPLOYMENT_ID/config.ini
  if [ $? != 0 ]; then
    error_exit "Failed to download S3 parameters"
  fi
elif [ "$DEPLOYMENT_GROUP_NAME" == "Production" ]
then
  aws s3 cp s3://codedeploy-test-martin/index.tpl /var/www/$DEPLOYMENT_ID/config.ini
  if [ $? != 0 ]; then
    error_exit "Failed to download S3 parameters"
  fi
else
  error_exit "Unsupportd deployment group $DEPLOYMENT_GROUP_NAME"
fi

exit 0
