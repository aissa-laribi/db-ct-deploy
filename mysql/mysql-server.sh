#!bin/bash
sudo docker volume create mysql-volume
sudo docker run -dit --name mysql-alpine alpine

sudo docker exec -it mysql /bin/sh -c "apk --no-cache add mysql mysql-client \
 && mkdir /var/run/mysqld \
 && chown mysql:mysql /var/run/mysqld/ \
 && mkdir /run/openrc \
 && touch /run/openrc/softlevel \
 && apk --no-cache add openrc \
 && /etc/init.d/mariadb setup \
 && rc-update add mariadb default \
 && rc-status default \
 && rc-service mariadb start \
 && apk del openrc  \
 && apk del mysql \
 && mysql"
