#!bin/bash
sudo docker run -dit --name postgres alpine


sudo docker exec -it postgres /bin/sh -c "apk update && apk --no-cache add postgresql \
  && mkdir /run/postgresql/ \
  && chown postgres:postgres /run/postgresql/"







