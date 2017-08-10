FROM webdevops/php-nginx:debian-8-php7

RUN apt update \
    && /usr/local/bin/apt-install git-core php7.0-imagick php-pear libyaml-dev \
    memcached libmemcached-tools libmemcached-dev

# Install YAML extension
RUN pecl install yaml-2.0.0 && echo "extension=yaml.so" > /usr/local/etc/php/conf.d/ext-yaml.ini

COPY ./grav.vhost.conf /opt/docker/etc/nginx/vhost.conf
