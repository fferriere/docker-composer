FROM fferriere/base

MAINTAINER ferriere.florian@gmail.com

RUN apt-get update -y && \
    apt-get install -y git php5-cli php5-json curl php5-pgsql php5-mysqlnd php5-intl php5-curl

RUN echo 'date.timezone = Europe/Paris' >> /etc/php5/cli/php.ini

RUN mkdir -p /usr/lib/ssl && \
    wget -O /usr/lib/ssl/cert.pem http://curl.haxx.se/ca/cacert.pem

CMD ["false"]
