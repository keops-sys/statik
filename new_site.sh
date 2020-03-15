#!/bin/bash
echo $1
#mkdir $1
#cd $1 && git clone git@github.com:keops-sys/statik.git .
cd $1/ && start.sh $1 $2