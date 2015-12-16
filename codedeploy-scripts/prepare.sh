#!/bin/bash
mkdir /var/www/$DEPLOYMENT_ID && cp -R /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/ /var/www/$DEPLOYMENT_ID
exit $?
