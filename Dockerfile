FROM debian:wheezy

MAINTAINER ferriere.florian@gmail.com

ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

RUN apt-get update -y && \
    apt-get install -y locales git php5-cli php5-json curl php5-pgsql php5-mysqlnd php5-intl php5-curl

RUN echo "Europe/Paris" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i "s/^# fr_FR/fr_FR/" /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=fr_FR.UTF-8

RUN useradd --create-home user

RUN curl -sS --insecure https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chown user:user /usr/local/bin/composer

USER user

VOLUME ['/var/www']
WORKDIR /var/www

CMD ['/usr/local/bin/composer']
