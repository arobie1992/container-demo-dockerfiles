FROM go-builder/linux/alpine/amd64:1.20.1 as builder

WORKDIR /build
RUN git clone https://github.com/arobie1992/container-demo.git repo
WORKDIR /build/repo
RUN go build

FROM alpine:3.17.2
WORKDIR /root
COPY --from=builder /build/repo/container-demo ./
ENTRYPOINT [ "./container-demo" ]