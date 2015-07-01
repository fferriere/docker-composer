#!/bin/bash

MY_PATH=$(dirname $(realpath $0))

/bin/bash $MY_PATH/composer-base/build.sh && \
    /bin/bash $MY_PATH/composer-service/build.sh $@
