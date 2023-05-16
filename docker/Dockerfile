FROM debian:stretch
LABEL maintainer="Shavermacoin Developers <dev@shavermacoin.org>"
LABEL description="Dockerised ShavermacoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
