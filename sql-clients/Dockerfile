FROM ubuntu:18.04
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

RUN apt-get update && apt-get install -y \
    ca-certificates \
    postgresql-client \
    mysql-client \
    sqlite3 \
    wget \
    curl \
    gnupg2 \
    jq \
    && rm -rf /var/lib/apt/lists/*
