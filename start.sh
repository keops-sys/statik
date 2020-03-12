#hugo server -D
#hugo server --bind 127.0.0.1 --port 8080 --disableFastRender

#hugo --minify

docker stop statik
docker rm statik

#docker build -t statik .
#docker run --name landing-statik -d -p 8080:80 statik

cd /root/statik && docker-compose up -d

