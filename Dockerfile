FROM docker.jcg.re/base-php
ENV APPDIR=/matomo \
    DISPLAY_ERRORS=On \
    MEMORY_LIMIT=256M
RUN apk add --no-cache \
      bash \
      php7-pdo_mysql \
      php7-session \
      php7-json \
      php7-curl \
      php7-gd \
      php7-xml \
      php7-mbstring \
      php7-ctype \
      php7-iconv \
      php7-dom \
      php7-simplexml \
      php7-redis \
      php7-opcache
VOLUME /config
COPY root /
