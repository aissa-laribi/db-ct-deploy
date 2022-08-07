sudo docker volume create pg-server-volume
sudo docker run -dit --name postgres alpine

sudo docker exec -it postgres /bin/sh -c "apk update && apk upgrade apk --no-cache add postgresql \
 && mkdir /run/postgresql/ \
 && chown postgres:postgres /run/postgresql/ \
 && mkdir /run/openrc \
 && touch /run/openrc/softlevel \
 && apk --no-cache add openrc \
 && /etc/init.d/postgresql setup \
 && rc-update add postgresql default \
 && rc-status default \
 && rc-service postgresql start \
 && apk del openrc  \
 && apk del postgresql \
 && psql -U postgres"
