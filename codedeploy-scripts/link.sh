#!/bin/bash
# move symlink to current
mkdir /var/www/$DEPLOYMENT_ID && cp -a /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/* /var/www/$DEPLOYMENT_ID
rm -f /var/www/current && ln -s /var/www/$DEPLOYMENT_ID /var/www/current
exit $?
