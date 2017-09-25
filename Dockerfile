FROM composer:1.5

LABEL maintainer="ivandelabeldad@gmail.com"

ENV NODE_VERSION 6.7.0-r1
ENV COMPOSER_HOME /composer

WORKDIR /app
EXPOSE 8000

# Install node and laravel packages
RUN apk update && \
    apk add nodejs=${NODE_VERSION} && \
    composer global require "laravel/installer" && \
    ln -s /composer/vendor/laravel/installer/laravel /usr/bin/laravel

CMD ["sh"]
