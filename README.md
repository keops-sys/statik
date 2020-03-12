$ git clone git@github.com:foomo/pagespeed_exporter.git
$ cd pagespeed_exporter/example
$ docker-compose up -d


docker run -it --rm --name certbot -p 80:80 -p 443:443 -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" certbot/certbot certonly --standalone --email "user@example.com" -d "tls.example.com"
