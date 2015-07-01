#!/bin/bash

IMAGE_NAME="fferriere/composer-base"
NB_ROWS=$(docker images | grep -w "$IMAGE_NAME" | wc -l)
if [ "$NB_ROWS" -gt 0 ]; then
    exit 0;
fi

MY_PATH=$(dirname $(realpath $0))
docker build -t $IMAGE_NAME $MY_PATH/.
