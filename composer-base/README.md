# composer base

This container is use on base of composer service container.

If you want install php packages for composer you can run install on `fferriere/composer-base:latest` container :
```
$ docker run --name my-container fferriere/composer-base:latest apt-get install -y php5-gd
$ docker commit my-container fferriere/composer-base:latest
$ docker tag fferriere/composer-base:latest fferriere/composer-base:php-gd
```

You should rebuild composer-service container to use use new packages.
