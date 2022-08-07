#!bin/bash
sudo docker volume create mongodb-volume
sudo docker run -dit --name mongodb-alpine alpine

sudo docker exec -it mongodb-alpine /bin/sh -c "apk update \
 && echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories \
 && echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories \
 && apk add mongodb \
 && apk add mongodb-tools \
 && mkdir -p /data/db/ \
 && chown root /data/db \
 && mkdir /run/openrc \
 && touch /run/openrc/softlevel \
 && apk --no-cache add openrc \
 && rc-update add mongodb default \
 && rc-status default \
 && rc-service mongodb start \
 && apk del openrc  \
 && mongo"
