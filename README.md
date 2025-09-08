[![Docker Pulls](https://badgen.net/docker/pulls/noenv/mongo-exporter)](https://hub.docker.com/r/noenv/mongo-exporter)
[![Quay.io Enabled](https://badgen.net/badge/quay%20pulls/enabled/green)](https://quay.io/repository/noenv/mongo-exporter)
[![build](https://github.com/NoEnv/docker-mongo-exporter/actions/workflows/build.yml/badge.svg)](https://github.com/NoEnv/docker-mongo-exporter/actions/workflows/build.yml)
[![Discord](https://badgen.net/discord/online-members/mZAjkQfYSj)](https://discord.gg/mZAjkQfYSj)

## docker-mongo-exporter

#### Description

MongoDB Prometheus Exporter as Docker Image.

#### Run

most simple way of running the container

    docker run --rm noenv/mongo-exporter

advanced usage

    docker run --name prom-me -p 9123:9123 noenv/mongo-exporter --web.listen-address=:9123 --mongodb.uri=mongodb://127.0.0.1:27017

#### Source

https://github.com/percona/mongodb_exporter (source)  
https://github.com/noenv/docker-mongo-exporter (dockerfile)
