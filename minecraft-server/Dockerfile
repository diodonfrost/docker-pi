
FROM ubuntu:20.04
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

WORKDIR /data

RUN apt-get update && apt-get install -y \
    software-properties-common \
    openjdk-8-jdk-headless \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar -o /data/minecraft_server.jar && \
    echo "eula=true" > /data/eula.txt

EXPOSE 25565

CMD ["java", "-Xmx2G", "-jar", "minecraft_server.jar", "nogui"]
