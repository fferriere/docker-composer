FROM fferriere/composer-base

MAINTAINER ferriere.florian@gmail.com

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chown user:user /usr/local/bin/composer

USER user

VOLUME ["/var/www"]
WORKDIR /var/www

ENTRYPOINT ["/usr/local/bin/composer"]
