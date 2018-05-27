# Base the docker container off of the official golang image
FROM golang:latest

RUN cd /tmp
RUN curl -O https://nodejs.org/dist/v6.10.1/node-v6.10.1.tar.gz
RUN tar -xvf node-v6.10.1.tar.gz && rm node-v6.10.1.tar.gz
RUN cd node-v6.10.1 && ./configure && make && make install
RUN npm install -g api-console-cli && npm install -g bower