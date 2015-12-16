#!/bin/bash
aws s3 cp s3://codedeploy-test-martin/index.tpl /var/www/$DEPLOYMENT_ID/config.ini
exit $?
