#!bin/bash
# The official image is build on Alpine but its size is 117 MB at the end
# Feel free to use the instructions on  https://hub.docker.com/_/redis
# Except you want to keep the same Alpine Linux Image 5.53MB
sudo docker volume create redis-volume
sudo docker run -dit --name redis-alpine alpine

sudo docker exec -it redis-alpine /bin/sh -c "apk update \
 && apk upgrade \
 && apk add redis \
 && redis-server --daemonize yes \
 && redis-cli"