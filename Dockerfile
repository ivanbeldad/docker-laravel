FROM composer:1.5

LABEL maintainer="ivandelabeldad@gmail.com"

ENV NODE_VERSION="6.7.0-r1" \
    COMPOSER_HOME="/composer"

ADD ./dockerfiles/* /dockerfiles/
WORKDIR /app
EXPOSE 8000

# Install node and laravel packages
RUN apk update && \
    apk add nodejs=${NODE_VERSION} && \
    composer global require "laravel/installer" -n && \
    ln -s /composer/vendor/laravel/installer/laravel /usr/bin/laravel && \
    chmod +x /dockerfiles/script.sh

ENTRYPOINT ["sh", "/dockerfiles/script.sh"]

CMD ["sh"]
