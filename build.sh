#!/usr/bin/env bash

# remove project-specific container
docker stop dropwizardrestsoap_api-dropwizard_1
docker rm dropwizardrestsoap_api-dropwizard_1

# rebuild jar and run Dockerfile
mvn clean install
docker-compose up