FROM golang:1.20.1-alpine3.17

ENV PATH="${PATH}:/usr/local/go/bin"

RUN mkdir /build

ENTRYPOINT /bin/sh