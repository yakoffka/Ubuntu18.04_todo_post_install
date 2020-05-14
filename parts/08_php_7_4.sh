#!/bin/bash

install_php_7_4_with_m() {
  part='part 08. установка php-7.4'
  printf "\n\n\n\n    - ${part} -\n"

  # 'software-properties-common' - программное обеспечение абстракции используемых репозиториев apt. позволяет легко управлять дистрибутивами и независимыми поставщиками программного обеспечения
  sudo apt install -y software-properties-common
  sudo add-apt-repository -y ppa:ondrej/php
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y php7.4
  sudo apt install -y php-fpm

  sudo a2enconf php7.4-fpm
  sudo a2enmod proxy_fcgi setenvif
  sudo a2dismod php7.4

  # поиск доступных модулей PHP7.4
  # apt search php7.4
  sudo apt install -y php7.4 \
    php7.4-bcmath \
    php7.4-bz2 \
    php7.4-cli \
    php7.4-common \
    php7.4-ctype \
    php7.4-curl \
    php7.4-fpm \
    php7.4-gd \
    php7.4-imap \
    php7.4-intl \
    php7.4-json \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-opcache \
    php7.4-pgsql \
    php7.4-readline \
    php7.4-sqlite3 \
    php7.4-tidy \
    php7.4-xml \
    php7.4-zip \
    php-amqp \
    php-apcu \
    php-geoip \
    php-imagick \
    php-memcache \
    php-mongodb \
    php-oauth \
    php-smbclient \
    php-solr \
    php-ssh2 \
    php-uploadprogress \
    php-uuid \
    php-yaml \
    php-xdebug

  sudo a2enmod proxy_fcgi setenvif
  sudo a2enconf php7.4-fpm
}

install_php_7_4_with_m
# просмотр уже подключенных модулей php - 'php -m'
