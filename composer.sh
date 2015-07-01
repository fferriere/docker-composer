#!/bin/bash

MY_PATH=$(dirname $(realpath $0))

if [ "$1" = "selfupdate" ] || [ "$1" = "self-update" ]; then
    $MY_PATH/build.sh --no-cache=true
    exit 0
fi

/bin/bash $MY_PATH/composer-service/run.sh $@
