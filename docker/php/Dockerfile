FROM php:fpm-alpine

RUN apk update && apk add curl

RUN curl -Lo install-php-extensions https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions
RUN chmod +x ./install-php-extensions

RUN ./install-php-extensions pdo_mysql redis

RUN rm -f ./install-php-extensions
