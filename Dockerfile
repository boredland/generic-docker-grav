FROM webdevops/php-nginx:7.1

RUN apt update \
    && /usr/local/bin/apt-install git-core php7.0-curl php7.0-gd php7.0-mbstring \
    php7.0-imagick php7.0-apcu php7.0-xml php7.0-zip php7.0-opcache php-pear libyaml-dev \
    php7.1-dev imagemagick memcached libmemcached-tools libmemcached-dev

# Install YAML extension
RUN pecl install yaml-2.0.0 && echo "extension=yaml.so" > /usr/local/etc/php/conf.d/ext-yaml.ini

COPY ./grav.vhost.conf /opt/docker/etc/nginx/vhost.conf
