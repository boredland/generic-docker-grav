FROM webdevops/php-nginx:7.1

RUN apt update \
    && /usr/local/bin/apt-install git-core php-gd php-curl php-imagick php-mbstring

COPY ./grav.vhost.conf /opt/docker/etc/nginx/vhost.conf
