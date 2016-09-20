FROM ubuntu:14.04
MAINTAINER <Kevin Tran>duykhoa12t@gmail.com

ENV GOPATH=$HOME/go_proj

RUN apt-get update && \
    apt-get install -yq --fix-missing golang

WORKDIR $GOPATH
