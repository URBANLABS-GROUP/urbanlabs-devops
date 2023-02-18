#!/bin/bash
set -e

cd ../urbanlabs-backend
git checkout master
git pull
./gradlew bootJar
docker build -t urbanlabs-backend .

cd ../urbanlabs-admin
git checkout master
git pull
docker build -t urbanlabs-admin .

cd ../urbanlabs-client
git checkout master
git pull
docker build -t urbanlabs-client .

cd ../urbanlabs-devops
