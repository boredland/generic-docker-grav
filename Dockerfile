FROM webdevops/php-nginx:7.1

RUN apt update \
    && /usr/local/bin/apt-install git-core

COPY ./grav.vhost.conf /opt/docker/etc/nginx/vhost.conf