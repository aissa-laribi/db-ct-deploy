#!bin/bash
sudo docker volume create sqlite-volume
sudo docker run -dit --name sqlite alpine

sudo docker exec -it sqlite /bin/sh -c "apk update \
 && apk upgrade \
 && apk add sqlite \
 && sqlite3"
