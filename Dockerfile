# It is a Docker image of the development platform for PHP applications.
FROM php:8.2-apache
RUN apt update && \
    apt upgrade -y && \
    apt install -y zip unzip && \
    apt install -y nodejs npm && \
    curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php && \
    php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    apt clean
