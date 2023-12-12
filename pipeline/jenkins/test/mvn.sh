#!/bin/bash

echo "*****************************"
echo "***********Testing Code **************"
echo "******************************"

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.9.6-eclipse-temurin-11-alpine "$@"
