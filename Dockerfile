FROM golang:1.23-alpine3.20 as builder

RUN set -x \
 && apk --no-cache add git make \
 && git clone --branch v0.41.0 --depth 1 https://github.com/percona/mongodb_exporter.git /go/src/github.com/percona/mongodb_exporter \
 && cd /go/src/github.com/percona/mongodb_exporter \
 && make build

FROM alpine:3.20

LABEL maintainer "NoEnv"
LABEL version "0.41.0"
LABEL description "Mongo Exporter as Docker Image"

EXPOSE 9104

RUN apk --no-cache add --update ca-certificates
COPY --from=builder /go/src/github.com/percona/mongodb_exporter/mongodb_exporter /bin/mongodb_exporter

ENTRYPOINT [ "mongodb_exporter" ]

CMD ["--web.listen-address", ":9104", "--mongodb.uri", "mongodb://172.17.0.1:27017/?tls=true&tlsInsecure=true", "--mongodb.global-conn-pool"]
