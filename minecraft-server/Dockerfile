
FROM ubuntu:18.04
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

WORKDIR /data

RUN apt-get update && apt-get install -y \
    software-properties-common \
    openjdk-8-jdk-headless \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/* /data/
ARG MINECRAFT_VERSION=latest
RUN /data/get_mc_server.sh

EXPOSE 25565

ENV MC_MEMORY="2G"

ENTRYPOINT [ "/data/start.sh" ]
