# DB-CT-DEPLOY

![GitHub](https://img.shields.io/github/license/aissa-laribi/db-ct-deploy)

DB-CT-DEPLOY is a collection of Linux bootstrap scripts for database servers running and executing on lightweight Docker containers.

## Why this project?

Official database images are too big and they contain dependencies not needed to have the database server running. For instance, MYSQL: 446MB, MONGODB: 696MB, POSTGRESQL: 376MB. 

In this collection, the servers are built on top of the lightest OS Docker image: ALPINE LINUX: 5.53MB.

It results in containers that are lighter, faster to deploy, using less CPU and memory. Furthermore, it reduce the costs of running the databases serverless microservice architectures.For instance, services such as AWS Fargate, GCP Cloud Run or Azure Container Instances bill for Memory/hour and vCPU/hour.    

