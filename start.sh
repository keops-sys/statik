#!/bin/bash

if [ -z "$1" ]; then
    echo "Missing url"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Missing url"
    exit 1
fi

echo "Launch Name:" $1
echo "Launch url:" $2

# Using Hugo to serve
#hugo server -D
#hugo server --bind 127.0.0.1 --port 8080 --disableFastRender

#docker build -t statik .
#docker run --name landing-statik -d -p 8080:80 statik


cd "$(dirname "$0")"

git reset --hard

docker stop statik
docker rm statik

cd hugo && hugo --minify

cd "$(dirname "$0")"

#HOSTNAME=statik.keops.io NAME=statik docker-compose up -d
#HOSTNAME=dev.keops.io NAME=dev docker-compose up -d
HOSTNAME=$2 NAME=$1 docker-compose up -d
