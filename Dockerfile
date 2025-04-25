ARG NODE_VERSION=22.14.0
ARG DEBIAN_VERSION=bullseye-slim
FROM node:${NODE_VERSION}-${DEBIAN_VERSION}

RUN echo "deb http://ftp.de.debian.org/debian buster main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
    phantomjs

