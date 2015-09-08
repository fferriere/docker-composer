FROM fferriere/composer-base

MAINTAINER ferriere.florian@gmail.com

RUN curl -sS --cacert /usr/lib/ssl/cert.pem https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    chown user:user /usr/local/bin/composer

USER user

VOLUME ["/var/www"]
WORKDIR /var/www

ENTRYPOINT ["/usr/local/bin/composer"]
