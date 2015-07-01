#!/bin/bash

MY_PATH=$(dirname $(realpath $0))

IMAGE_NAME="fferriere/composer-service"

docker build -t $IMAGE_NAME $@ $MY_PATH/.
