#!/bin/bash
set -e # exit on error
cd ./chirpstack-simulator/
docker-compose run --rm chirpstack-simulator make clean build
cd ..
docker build -t simulator -f ./Dockerfile-simulator .