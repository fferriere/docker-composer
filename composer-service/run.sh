#!/bin/bash

MY_PATH=$(dirname $(realpath $0))

IMAGE_NAME="fferriere/composer-service"
docker run --rm -ti -v $PWD:/var/www $IMAGE_NAME $@
