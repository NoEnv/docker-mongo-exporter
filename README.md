## docker-mongodb_exporter

#### Description

MongoDB Prometheus Exporter as Docker Image.

#### Run

most simple way of running the container

    docker run --rm noenv/mongodb_exporter

advanced usage

    docker run --name prom-me -p 9123:9123 noenv/mongodb_exporter -web.listen-address=:9123 -mongodb.uri=mongodb://127.0.0.1:27017

#### Source

https://github.com/percona/mongodb_exporter (source)
https://github.com/noenv/docker-mongodb_exporter (dockerfile)
