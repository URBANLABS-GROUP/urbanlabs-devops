#!/bin/bash
set -e

cd /home/urbanlabs/urbanlabs-frontend
git fetch --all
git checkout release
git pull --all

docker build -t urbanlabs-frontend .
