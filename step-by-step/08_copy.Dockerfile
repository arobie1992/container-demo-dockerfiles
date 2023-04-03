FROM go-builder/linux/ubuntu/amd64:1.20.1 as builder

COPY container-demo /build/repo
WORKDIR /build/repo
RUN go build

FROM ubuntu:22.04
WORKDIR /root
COPY --from=builder /build/repo/container-demo ./
ENTRYPOINT [ "./container-demo" ]