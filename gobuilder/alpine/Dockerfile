FROM alpine:3.17.2

WORKDIR /usr/local
RUN apk update  && \
    apk add wget && \
    wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz && \
    tar -xvf go1.20.1.linux-amd64.tar.gz && \
    export PATH=$PATH:/usr/local/go/bin && \
    apk del wget && \
    export PATH=$PATH:/usr/local/go && \
    rm go1.20.1.linux-amd64.tar.gz

ENV PATH="${PATH}:/usr/local/go/bin"

RUN apk add git
RUN mkdir /build

ENTRYPOINT bin/bash