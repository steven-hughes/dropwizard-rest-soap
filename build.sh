#!/usr/bin/env bash

PROJECT=dropwizardrestsoap_api-dropwizard_1

# remove project-specific container
if [ "$(docker ps -a | grep ${PROJECT})" ]; then
    printf "Docker Process: \n%s\n\n" ${PROJECT}
    docker stop ${PROJECT} > /dev/null
    printf "Docker process stopped. \n"
    docker rm ${PROJECT} > /dev/null
    printf "Docker process removed. \n"
else
    printf "There were no Docker containers to delete.\n"
fi

# rebuild jar and run Dockerfile
mvn clean install
docker-compose up