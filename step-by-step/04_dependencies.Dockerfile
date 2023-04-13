FROM ubuntu:22.04

WORKDIR /usr/local
RUN apt-get update
RUN apt-get -y install wget
RUN wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
RUN tar -xvf go1.20.1.linux-amd64.tar.gz

ENV PATH="${PATH}:/usr/local/go/bin"

RUN apt-get -y install git
RUN mkdir /build

WORKDIR /build
RUN git clone https://github.com/arobie1992/container-demo.git repo
WORKDIR /build/repo
RUN go build

ENTRYPOINT [ "./container-demo" ]
