FROM ubuntu:22.04

WORKDIR /usr/local
RUN apt-get update  && \
    apt-get -y install wget && \
    wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz && \
    tar -xvf go1.20.1.linux-amd64.tar.gz && \
    apt -y remove wget && \
    apt-get clean && \
    rm go1.20.1.linux-amd64.tar.gz

ENV PATH="${PATH}:/usr/local/go/bin"

RUN apt-get -y install git
RUN mkdir /build

ENTRYPOINT bin/bash
