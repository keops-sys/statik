#!/bin/bash
echo "Launch Name:" $1
echo "Launch url:" $2

name=$1
hostname=$2

mkdir $1
cd $1

git clone git@github.com:keops-sys/statik.git .

cd $1

docker stop $1
docker rm $1

HOSTNAME=$2 NAME=$1 docker-compose up -d

