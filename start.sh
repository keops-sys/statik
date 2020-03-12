#hugo server -D
#hugo server --bind 127.0.0.1 --port 8080 --disableFastRender

#hugo --minify

cd "$(dirname "$0")"

git pull

docker stop statik
docker rm statik

#docker build -t statik .
#docker run --name landing-statik -d -p 8080:80 statik

docker-compose up -d

