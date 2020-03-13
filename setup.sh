#!/bin/bash

mkdir $1
cd $1
git clone git@github.com:keops-sys/statik.git .
start.sh $1 $2