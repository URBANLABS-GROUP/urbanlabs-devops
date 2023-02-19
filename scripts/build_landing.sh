#!/bin/bash
set -e

cd /home/urbanlabs/urbanlabs-landing
git fetch --all
git checkout master
git pull --all

docker build -t urbanlabs-landing .
