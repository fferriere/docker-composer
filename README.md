# docker-composer

This container can be use to replace installation of composer on host.
It's very simple to use it. As composer.

For build container run the `./build.sh` script.

When container is built you can run container with `composer.sh` script.

    ./composer.sh

You can add command on `.bashrc` file :

    alias composer='/your/path/composer.sh'

## Explaination

The project is composed in two container, a base and service containers.
The base container install `php` and `curl` to prepare composer.
The service container download and install composer.

## Update composer

For update composer on container you can execute :

    ./composer.sh selfupdate

or if you use alias :

    composer self-update

Command re-build the service container.

## Install packages

Read [composer-base readme](./composer-base/README.md)
