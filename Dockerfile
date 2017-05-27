FROM php:7-fpm
ENV DEBIAN_FRONTEND noninteractive
ARG pkg
ARG ext
ARG src
ARG cmd 
COPY $src /data
RUN \
  apt-get update -qq \
  && apt-get install -qq $pkg \
  && apt-get autoclean -qq
RUN docker-php-ext-install $ext
RUN echo "$cmd" | xargs -I{} -n1 -P1 bash -c '{}'
