FROM php:7-fpm
RUN apt-get update && \
    apt-get install -qq \
      libmcrypt-dev \
      mysql-client \
      php5-mysql \
      git-core
RUN docker-php-ext-install \
      mcrypt \
      pdo_mysql
RUN curl -sS https://getcomposer.org/installer | \
      php -- --install-dir=/usr/bin --filename=composer
COPY ./ /var/www
WORKDIR /var/www
COPY ./.env.prod ./.env
