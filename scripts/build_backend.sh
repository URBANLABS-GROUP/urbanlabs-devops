#!/bin/bash
set -e

cd /home/urbanlabs/urbanlabs-backend
git fetch --all
git checkout release
git pull --all

./gradlew bootJar
docker build -t urbanlabs-backend .
