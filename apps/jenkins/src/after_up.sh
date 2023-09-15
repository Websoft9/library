#!/bin/bash

echo "get password ..." >> /tmp/init_debug.txt
while [  ! -f /var/lib/docker/volumes/jenkins_jenkins/_data/secrets/initialAdminPassword ]
do
    sleep 3s
    echo "initing,please wait ..." >> /tmp/init_debug.txt
done
jenkins_pwd=$(sudo cat /var/lib/docker/volumes/jenkins_jenkins/_data/secrets/initialAdminPassword)
echo "APP_USER=null" >> /data/apps/jenkins/.env
echo "POWER_PASSWORD=$jenkins_pwd" >> /data/apps/jenkins/.env
echo "APP_PASSWORD=$jenkins_pwd" >> /data/apps/jenkins/.env
