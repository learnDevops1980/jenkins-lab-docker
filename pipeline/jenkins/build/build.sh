#!/bin/bash

# Copying jar file to local build forler

cp -f java-app/target/*.jar jenkins/build/

echo "******************************"
echo "**Building Dokcer image *****"

cd jenkins/build/ && docker compose -f docker-compose-build.yml build --no-cache
