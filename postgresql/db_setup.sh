#!bin/bash 

#Pull a PostgreSQL Server Docker Image
sudo docker pull postgres:latest
echo "Image created successfully"
#Run the container from the image
#Attaching a volume to the container, otherwise, 
#the data will be lost in when it will restart
sudo docker volume create postgres-volume
echo "Volume created successfully"

sudo docker run -d --name=postgres01 -p 5432:5432 -v postgres-volume:/var/lib/postgresql/data -e POSTGRES_PASSWORD=[your_password] postgres
#run = Run a command in a new container  
#-d = Run this container in detached mode so that it runs in the background
#--name = Give a name to the container
#-p = publish a container's port(s) to the host
#PostgreSQL Databases listen on port 5432
#-v = bind the data folder inside the container volume 
#to the Docker volume previously created
#-e = sets a variable environment here it's the
#Postgresql root password
#postgresql = Image we use to create the container
echo "Container created successfully"







