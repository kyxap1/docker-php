FROM php:7-fpm
ENV DEBIAN_FRONTEND noninteractive
ARG pkg
ARG ext
RUN apt-get update -qq && \
    apt-get install -qq $pkg && \
    apt-get autoclean -qq
RUN docker-php-ext-install $ext
RUN curl -sS https://getcomposer.org/installer | \
      php -- --install-dir=/usr/bin --filename=composer
