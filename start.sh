# Using Hugo to serve
#hugo server -D
#hugo server --bind 127.0.0.1 --port 8080 --disableFastRender

#hugo --minify

#docker build -t statik .
#docker run --name landing-statik -d -p 8080:80 statik



cd "$(dirname "$0")"

git pull

#docker stop statik
#docker rm statik

HOSTNAME=statik.keops.io HOST=statik docker-compose up -d
#HOSTNAME=dev.keops.io docker-compose up