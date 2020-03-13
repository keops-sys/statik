Deploy a static website using Nginx

set html source to directory `public` 

Deploy

NAME=statik
HOSTNAME=statik.keops.io

mkdir $NAME
cd $NAME
git clone git@github.com:keops-sys/statik.git .

HOSTNAME=HOSTNAME NAME=NAME docker-compose up -d
