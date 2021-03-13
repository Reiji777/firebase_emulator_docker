FROM ubuntu:20.04

RUN apt-get update -y

RUN apt-get install -y curl openjdk-11-jre-headless nano

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs

RUN npm install -g --unsafe-perm firebase-tools

EXPOSE 4000
EXPOSE 8080
EXPOSE 9099