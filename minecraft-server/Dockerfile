
FROM ubuntu:20.04
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

WORKDIR /data

RUN apt-get update && apt-get install -y \
    software-properties-common \
    openjdk-8-jdk-headless \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/* /tmp/
ARG MINECRAFT_VERSION=latest
RUN /tmp/get_mc_server.sh

EXPOSE 25565

CMD ["java", "-Xmx2G", "-jar", "minecraft_server.jar", "nogui"]
