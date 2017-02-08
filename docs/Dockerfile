FROM alpine:3.5

ENV PHP_VERSION 7

# We'll need supervisord if we want to manage nginx and php-fpm
# in a single container
RUN apk add --no-cache \
    supervisor

# php-fpm
RUN apk add --update --no-cache \
    php${PHP_VERSION}-fpm \
    php${PHP_VERSION}-gd \
    php${PHP_VERSION}-iconv \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-apcu \
    php${PHP_VERSION}-json \
    php${PHP_VERSION}-intl \
    php${PHP_VERSION}-mcrypt \
    php${PHP_VERSION}-opcache \
    php${PHP_VERSION}-openssl \
    php${PHP_VERSION}-pdo \
    php${PHP_VERSION}-pdo_mysql \
    php${PHP_VERSION}-mysqli \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-zlib \
    php${PHP_VERSION}-ctype \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}

# Place files where they need to go
COPY scripts/start.sh /

COPY config/supervisord/supervisord.conf /etc/
# COPY config/supervisord/processes/nginx.ini /etc/supervisor.d/
# COPY config/supervisord/processes/php-fpm.ini /etc/supervisor.d/

RUN mkdir -p /data/docs/php-docs
# cd /data/docs/php-docs

# svn co https://svn.php.net/repository/phpdoc/modules/doc-en doc-en
# cd ./doc-en

# svn co https://svn.php.net/repository/phpdoc/modules/doc-fr doc-fr
# cd ./doc-fr

# cd ~/php-docs
# git clone http://git.php.net/repository/phd.git
# cd ./phd

# cd ~/php-docs/doc-en
# php doc-base/configure.php

# cd ~/php-docs/phd
# php render.php --docbook ~/php-docs/doc-en/doc-base/.manual.xml --package PHP --format php --output ~/php-docs/rendered-docs

# cd ~/php-docs/
# $ git clone http://git.php.net/repository/web/php.git php.net
#
# cd ~/php-docs/php.net/manual
# $ rm -Rf en/
# $ ln -s ~/php-docs/rendered-docs/php-web en
#
# cd ~/php-docs/php.net/
# $ php -S 0.0.0.0:4000

# *.xml = svn:eol-style=native;svn:keywords=Id Rev Revision Date LastChangedDate LastChangedRevision Author LastChangedBy HeadURL URL

# $ cd ~/php-docs/doc-en/doc-base/scripts
# php check-missing-docs.php -d ~/php-docs/rendered-docs/index.sqlite

RUN touch /data/foo.txt

RUN chmod +x /start.sh

VOLUME /data


CMD ["/start.sh"]