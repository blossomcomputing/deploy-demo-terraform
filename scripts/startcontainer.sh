#!/bin/bash

#workaround to check if docker is running
while ! docker ps; do sleep 2; done

sudo docker run -d -p 8080:8080 rajeshgopal/rg-tomcat2:latest
