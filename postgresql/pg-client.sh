#!bin/bash
sudo docker run -dit --name pg-cli2 --entrypoint /bin/sh alpine \
sudo docker exec -it pg-cli2 /bin/sh -c "apk --no-cache add postgresql-client \
&& apk --no-cache add openrc \ 
&& apk --no-cache add postgresql \ 
&& touch /run/openrc/softlevel \ 
&& openrc -s postgresql start"
