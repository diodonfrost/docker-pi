FROM debian:10
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    vim \
    git \
    npm && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g conventional-changelog-cli
