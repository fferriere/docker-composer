docker-composer
===============

This container can be use to replace installation of composer on host.
It's very simple to use it. As composer.

For build container with build.sh script you do copy `docker-name.conf.dist` to `docker-name.conf` and change `DOCKER_IMAGE_NAME` variable.

    cp docker-name.conf.dist docker-name.conf
    vim docker-name.conf
    
When container is built you can run container with `composer.sh` script.

    ./composer.sh

You can add command on `.bashrc` file :

    alias composer='/your/path/composer.sh'

