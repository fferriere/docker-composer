#!/bin/bash

IMAGE_NAME="fferriere/composer-base"
FORCE_REBUILD=0
if [ "$1" == "rebuild" ]; then
    FORCE_REBUILD=1
    shift
fi

NB_ROWS=$(docker images | grep -w "$IMAGE_NAME" | wc -l)
if [ "$NB_ROWS" -gt 0 ] && [ $FORCE_REBUILD -eq 0 ]; then
    exit 0;
fi

MY_PATH=$(dirname $(realpath $0))
docker build -t $IMAGE_NAME $@ $MY_PATH/.

docker tag $IMAGE_NAME $IMAGE_NAME:init
