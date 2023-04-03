FROM go-builder/linux/alpine/amd64:1.20.1 as builder

COPY container-demo /build/repo
WORKDIR /build/repo
RUN go build

FROM alpine:3.17.2
WORKDIR /root
COPY --from=builder /build/repo/container-demo ./
ENTRYPOINT [ "./container-demo" ]