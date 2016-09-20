FROM ubuntu:14.04
MAINTAINER <Kevin Tran>duykhoa12t@gmail.com

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN apt-get update && \
    apt-get install -yq --fix-missing curl && \
    curl -O https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz && \
    tar xvf go1.6.linux-amd64.tar.gz && \
    chown -R root:root ./go && \
    mv go /usr/local

WORKDIR $GOPATH
