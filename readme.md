#Build
docker build https://github.com/gmoulard/pi-appliance.git#master:docker-apache \
               -f dockerfile.php.mariadb -t pi-appliance-www

#Start
docker stop pi-appliance-www; docker rm pi-appliance-www
WHOSTNAME=www.pi-appliance.com
docker run -d --name=pi-appliance-www \
              --restart=always \
              -v /var/log:/var/log \
              -v /var/www:/var/www  \
              -v pi-appliance-www_etc_letsencrypt:/etc/letsencrypt \
              -v pi-appliance-www_lib_letsencrypt:/var/lib/letsencrypt \
              --hostname $WHOSTNAME \
              -p 443:443 \
              -p 80:80  \
              pi-appliance-www
