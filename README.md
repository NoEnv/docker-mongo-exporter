[![Docker Pulls](https://badgen.net/docker/pulls/noenv/mongo-exporter)](https://hub.docker.com/r/noenv/mongo-exporter)

## docker-mongo-exporter

#### Description

MongoDB Prometheus Exporter as Docker Image.

#### Run

most simple way of running the container

    docker run --rm noenv/mongo-exporter

advanced usage

    docker run --name prom-me -p 9123:9123 noenv/mongo-exporter -web.listen-address=:9123 -mongodb.uri=mongodb://127.0.0.1:27017

#### Source

https://github.com/percona/mongodb_exporter (source)  
https://github.com/noenv/docker-mongo-exporter (dockerfile)
