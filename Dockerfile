FROM quay.io/prometheus/golang-builder as builder

COPY . $GOPATH/src/github.com/Intellection/resque-exporter
WORKDIR $GOPATH/src/github.com/Intellection/resque-exporter

# Install promu
RUN GO111MODULE=on go install github.com/prometheus/promu@latest

RUN make PREFIX=/


FROM quay.io/prometheus/busybox
MAINTAINER Cameron Mills <cameron@cmills.dev>

COPY --from=builder /resque-exporter /bin/resque-exporter

USER nobody:nogroup

EXPOSE 9447
ENTRYPOINT ["/bin/resque-exporter"]
