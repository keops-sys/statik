#hugo server -D
#hugo server --bind 127.0.0.1 --port 8080 --disableFastRender

#hugo --minify

docker stop landing-statik
docker rm landing-statik

#docker build -t statik .
#docker run --name landing-statik -d -p 8080:80 statik

docker-compose up -d