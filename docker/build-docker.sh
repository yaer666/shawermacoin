#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-shavermacoinpay/shavermacoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/shavermacoind docker/bin/
cp $BUILD_DIR/src/shavermacoin-cli docker/bin/
cp $BUILD_DIR/src/shavermacoin-tx docker/bin/
strip docker/bin/shavermacoind
strip docker/bin/shavermacoin-cli
strip docker/bin/shavermacoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
